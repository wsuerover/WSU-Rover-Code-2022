#include <Encoder.h>
#include <PCA9685.h>
#include <I2Cdev.h>
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_BMP280.h>
#include <FaBo9Axis_MPU9250.h>

#include <ros.h>
#include <rover_pkg/ArmData.h>
#include <rover_pkg/RockerBogieData.h>
#include <rover_pkg/ToolData.h>

// ROCKER BOGIE ENCODER PINS
#define RB_FR_QA 3
#define RB_FR_QB 5
#define RB_MR_QA 7
#define RB_MR_QB 9
#define RB_RR_QA 11
#define RB_RR_QB 13
#define RB_FL_QA 15
#define RB_FL_QB 17
#define RB_ML_QA 21
#define RB_ML_QB 23
#define RB_RL_QA 25
#define RB_RL_QB 27

// ROCKER BOGIE SENSOR PINS
#define RB_RB_SIG 3
#define RB_LB_SIG 2
#define RB_DA_SIG 5
#define RBL_TEMP 11
#define RBR_TEMP 10

// CHASSIS GPIO PINS
#define CHSS_GPIO1 28
#define CHSS_GPIO2 30
#define CHSS_GPIO3 32
#define CHSS_GPIO4 34
#define CHSS_GPIO5 36
#define CHSS_GPIO6 38

// SCIENCE MODULE PINS
#define ST_SLEEP 40
#define ST_PSTEP 42
#define ST_PDIR 44
#define ST_RSTEP 46
#define ST_RDIR 48
#define ST_INDEX 50
#define ST_SET 52

// TOOL SIGNALS
#define QDC_SIG1 29
#define QDC_SIG2 31
#define QDC_SIG3 33
#define QDC_SIG6 35
#define QDC_SIG7 37

// ARM POTENTIOMETERS
#define TABLE_SIG 4
#define BD_SIG 7
#define AD_SIG 6
#define WPD_SIG 9
#define WRD_SIG 8

// POWER MONITORING PINS
#define V12_CSENSE 0
#define V12_VSENSE 1

// PWM PINS
#define RB_FR 0
#define RB_MR 1
#define RB_RR 2
#define RB_FL 3
#define RB_ML 4
#define RB_RL 5

#define ARM_BD 6
#define ARM_AD 7
#define ARM_WPD 8
#define ARM_WRD 9
#define ARM_ZD 10
#define MOT_DRIVE 11
#define QDCL_SIG 14

#define QDC_SIG5 12
#define QDC_SIG4 13
#define CTP_SIG 15

#define CTT_SIG 0
#define SCI_PWM1 1
#define SCI_PWM2 2
#define SCI_PWM3 3
#define SCI_PWM4 4
#define SCI_PWM5 5
#define SCI_PWM6 6
#define SCI_PWM7 7


// delete ~/Arduino/libraries/ros_lib
// make sure you're not root
// rosrun rosserial_arduino make_libraries.py ~/Arduino/libraries rover_pkg

PCA9685 PWMDriver1;
PCA9685 PWMDriver2;
byte PWMFrequency = 100;

Adafruit_BMP280 bmp;

FaBo9Axis mpu9250;

Encoder rb_fr_enc(RB_FR_QA, RB_FR_QB);
Encoder rb_mr_enc(RB_MR_QA, RB_MR_QB);
Encoder rb_rr_enc(RB_RR_QA, RB_RR_QB);
Encoder rb_fl_enc(RB_FL_QA, RB_FL_QB);
Encoder rb_ml_enc(RB_ML_QA, RB_ML_QB);
Encoder rb_rl_enc(RB_RL_QA, RB_RL_QB);  

unsigned int sensorPublishTimer = 10;
unsigned int lastPublishDataRead = 0;

unsigned int slowSensorTimer = 1000;
unsigned int lastSlowSensorRead = 0;

unsigned int lastEncoderRead = 0;

unsigned int encoderStepsPerRev = 12;
unsigned int rb_fr_last = 0;
unsigned int rb_mr_last = 0;
unsigned int rb_rr_last = 0;
unsigned int rb_fl_last = 0;
unsigned int rb_ml_last = 0;
unsigned int rb_rl_last = 0;


ros::NodeHandle nh;
//rover_pkg::SensorData sensor_data;
//ros::Publisher dataPublisher("sensor_data_stream", &sensor_data);
 
void setup() {
  nh.initNode();
  //nh.advertise(publisher);

  Wire.begin();
  PWMDriver1.init(0x7f);
  PWMDriver1.setFrequency(PWMFrequency);

  mpu9250.begin();

  bmp.begin();
  /* Default settings from datasheet. */
  bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,     /* Operating Mode. */
                  Adafruit_BMP280::SAMPLING_X2,     /* Temp. oversampling */
                  Adafruit_BMP280::SAMPLING_X16,    /* Pressure oversampling */
                  Adafruit_BMP280::FILTER_X16,      /* Filtering. */
                  Adafruit_BMP280::STANDBY_MS_500); /* Standby time. */

  // OUTPUTS
  pinMode(QDC_SIG1, OUTPUT);
  pinMode(QDC_SIG2, OUTPUT);
  pinMode(QDC_SIG3, OUTPUT);
  pinMode(QDC_SIG6, OUTPUT);
  pinMode(QDC_SIG7, OUTPUT);
  
  pinMode(ST_SLEEP, OUTPUT);
  pinMode(ST_PSTEP, OUTPUT);
  pinMode(ST_PDIR, OUTPUT);
  pinMode(ST_RSTEP, OUTPUT);
  pinMode(ST_RDIR, OUTPUT);

  pinMode(CHSS_GPIO1, OUTPUT);
  pinMode(CHSS_GPIO2, OUTPUT);
  pinMode(CHSS_GPIO3, OUTPUT);
  pinMode(CHSS_GPIO4, OUTPUT);
  pinMode(CHSS_GPIO5, OUTPUT);
  pinMode(CHSS_GPIO6, OUTPUT);
  
  // INPUTS  
  pinMode(RB_FR_QA, INPUT);
  pinMode(RB_FR_QB, INPUT);
  pinMode(RB_MR_QA, INPUT);
  pinMode(RB_MR_QB, INPUT);
  pinMode(RB_RR_QA, INPUT);
  pinMode(RB_RR_QB, INPUT);
  pinMode(RB_FL_QA, INPUT);
  pinMode(RB_FL_QB, INPUT);
  pinMode(RB_ML_QA, INPUT);
  pinMode(RB_ML_QB, INPUT);
  pinMode(RB_RL_QA, INPUT);
  pinMode(RB_RL_QB, INPUT);
  
  pinMode(ST_INDEX, OUTPUT);
  pinMode(ST_SET, OUTPUT);  
  
}

int mapPWM(int pulseLength){
  return map(pulseLength, 0, 1000000/PWMFrequency, 0, 4095);
}

void UpdateRockerBogie(const rover_pkg::RockerBogieData data){
  PWMDriver1.setPwm(RB_FR, 0, mapPWM(data.rb_fr));
  PWMDriver1.setPwm(RB_MR, 0, mapPWM(data.rb_mr));
  PWMDriver1.setPwm(RB_RR, 0, mapPWM(data.rb_rr));
  PWMDriver1.setPwm(RB_FL, 0, mapPWM(data.rb_fl));
  PWMDriver1.setPwm(RB_ML, 0, mapPWM(data.rb_ml));
  PWMDriver1.setPwm(RB_RL, 0, mapPWM(data.rb_rl));
}
/*
void UpdateArm(const rover_pkg::ArmData data){
  PWMDriver1.setFrequency(ARM_BD, 0, mapPWM(data.arm_bm))
  PWMDriver1.setFrequency(ARM_AD, 0, mapPWM(data.arm_am))
  PWMDriver1.setFrequency(ARM_WPD, 0, mapPWM(data.arm_wpd))
  PWMDriver1.setFrequency(QDCL_SIG, 0, mapPWM(data.qdcl))
}
*/
void UpdateTool(const rover_pkg::ToolData data){
  
}

//void UpdateScienceTable(const rover_pkg::ScienceData data){
  
//}
   
ros::Subscriber<rover_pkg::RockerBogieData> sub("rocker_bogie_control_stream", &UpdateRockerBogie );
//ros::Subscriber<rover_pkg::ArmData> sub("arm_control_stream", &UpdateArm );

/*
void readSlowData(){
  float ax,ay,az;
  float gx,gy,gz;
  float mx,my,mz;

  mpu9250.readAccelXYZ(&ax,&ay,&az);
  mpu9250.readGyroXYZ(&gx,&gy,&gz);
  mpu9250.readMagnetXYZ(&mx,&my,&mz);

  sensor_data.gx = gx;
  sensor_data.gy = gy;
  sensor_data.gz = gz;
  
  sensor_data.ax = ax;
  sensor_data.ay = ay;
  sensor_data.az = az;
  
  sensor_data.mx = mx;
  sensor_data.my = my;
  sensor_data.mz = mz;
  
  sensor_data.pressure = bmp.getPressureSensor();
  sensor_data.bmp280_temp = bmp.getTemperatureSensor();
  
  sensor_data.rbl_temp = analogRead(RBL_TEMP);
  sensor_data.rbr_temp = analogRead(RBR_TEMP);
  
}

float getVel(float last, float current, float dt){
  return (current - last)/encoderStepsPerRevolution*2*3.14159/dt*1000; // radians per second
}

void sendSensorData(){   
  
  sensor_data.st_set = digitalRead(ST_SET);
  sensor_data.st_index = digitalRead(ST_INDEX);
  
  sensor_data.v12_csense = analogRead(V12_CSENSE);
  sensor_data.v12_vsense = analogRead(V12_VSENSE);
  
  unsigned int dt = lastEncoderRead - millis();
  lastEncoderRead = millis();
  int rb_fr_pos = rb_fr_enc.read();
  int rb_mr_pos = rb_mr_enc.read();
  int rb_rr_pos = rb_rr_enc.read();
  int rb_fl_pos = rb_fl_enc.read();
  int rb_mr_pos = rb_mr_enc.read();
  int rb_rl_pos = rb_rl_enc.read();
  
  sensor_data.rb_fr_vel = getVel(rb_fr_last,rb_fr_pos,dt);
  sensor_data.rb_fr_pos = rb_fr_pos;
  
  sensor_data.rb_mr_vel = getVel(rb_mr_last,rb_mr_pos,dt);
  sensor_data.rb_mr_pos = rb_mr_pos;
  
  sensor_data.rb_rr_vel = getVel(rb_rr_last,rb_rr_pos,dt);
  sensor_data.rb_rr_pos = rb_rr_pos;
  
  sensor_data.rb_fl_vel = getVel(rb_fl_last,rb_fl_pos,dt);
  sensor_data.rb_fl_pos = rb_fl_pos;
  
  sensor_data.rb_ml_vel = getVel(rb_ml_last,rb_ml_pos,dt);
  sensor_data.rb_ml_pos = rb_ml_pos;
  
  sensor_data.rb_rl_vel = getVel(rb_rl_last,rb_rl_pos,dt);
  sensor_data.rb_rl_pos = rb_rl_pos;
  
  rb_fr_last = rb_fr_pos;
  rb_mr_last = rb_mr_pos;
  rb_rr_last = rb_rr_pos;
  rb_fl_last = rb_flr_pos;
  rb_ml_last = rb_ml_pos;
  rb_rl_last = rb_rl_pos;    
  
  sensor_data.rb_rb_sig = analogRead(RB_RB_SIG);
  sensor_data.rb_lb_sig = analogRead(RB_LB_SIG);
  sensor_data.rb_da_sig = analogRead(RB_DA_SIG);
  
  sensor_data.table_sig = analogRead(TABLE_SIG);
  sensor_data.bd_sig = analogRead(BD_SIG);
  sensor_data.ad_sig = analogRead(AD_SIG);
  sensor_data.wpd_sig = analogRead(WPD_SIG):
  sensor_data.wrd_sig = analogRead(WRD_SIG);
  
  sensor_data.chss_gpio1 = digitalRead(CHSS_GPIO1);
  sensor_data.chss_gpio2 = digitalRead(CHSS_GPIO2);
  sensor_data.chss_gpio3 = digitalRead(CHSS_GPIO3);
  sensor_data.chss_gpio4 = digitalRead(CHSS_GPIO4);
  sensor_data.chss_gpio5 = digitalRead(CHSS_GPIO5);
  sensor_data.chss_gpio6 = digitalRead(CHSS_GPIO6);
  
  dataPublisher.publish(sensor_data);
  
}
*/
void loop() {
  
  nh.spinOnce();
  
  if (millis() > lastPublishDataRead + sensorPublishTimer){
    lastPublishDataRead = millis();
    //sendSensorData();
  }
  
  if (millis() > lastSlowSensorRead + slowSensorTimer){
    lastSlowSensorRead = millis();
    //readSlowData();
  }
  
}
