// Auto-generated. Do not edit!

// (in-package rover_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pressure = null;
      this.rbl_temp = null;
      this.rbr_temp = null;
      this.bmp280_temp = null;
      this.st_set = null;
      this.st_index = null;
      this.v_csense = null;
      this.v_vsense = null;
      this.rb_fr_vel = null;
      this.rb_fr_pos = null;
      this.rb_mr_vel = null;
      this.rb_mr_pos = null;
      this.rb_rr_vel = null;
      this.rb_rr_pos = null;
      this.rb_fl_vel = null;
      this.rb_fl_pos = null;
      this.rb_ml_vel = null;
      this.rb_ml_pos = null;
      this.rb_rl_vel = null;
      this.rb_rl_pos = null;
      this.rb_rb_sig = null;
      this.rb_lb_sig = null;
      this.rb_da_sig = null;
      this.table_sig = null;
      this.bd_sig = null;
      this.ad_sig = null;
      this.wpd_sig = null;
      this.wrd_sig = null;
      this.chss_gpio1 = null;
      this.chss_gpio2 = null;
      this.chss_gpio3 = null;
      this.chss_gpio4 = null;
      this.chss_gpio5 = null;
      this.chss_gpio6 = null;
      this.gx = null;
      this.gy = null;
      this.gz = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.mx = null;
      this.my = null;
      this.mz = null;
    }
    else {
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0;
      }
      if (initObj.hasOwnProperty('rbl_temp')) {
        this.rbl_temp = initObj.rbl_temp
      }
      else {
        this.rbl_temp = 0;
      }
      if (initObj.hasOwnProperty('rbr_temp')) {
        this.rbr_temp = initObj.rbr_temp
      }
      else {
        this.rbr_temp = 0;
      }
      if (initObj.hasOwnProperty('bmp280_temp')) {
        this.bmp280_temp = initObj.bmp280_temp
      }
      else {
        this.bmp280_temp = 0;
      }
      if (initObj.hasOwnProperty('st_set')) {
        this.st_set = initObj.st_set
      }
      else {
        this.st_set = false;
      }
      if (initObj.hasOwnProperty('st_index')) {
        this.st_index = initObj.st_index
      }
      else {
        this.st_index = false;
      }
      if (initObj.hasOwnProperty('v_csense')) {
        this.v_csense = initObj.v_csense
      }
      else {
        this.v_csense = 0;
      }
      if (initObj.hasOwnProperty('v_vsense')) {
        this.v_vsense = initObj.v_vsense
      }
      else {
        this.v_vsense = 0;
      }
      if (initObj.hasOwnProperty('rb_fr_vel')) {
        this.rb_fr_vel = initObj.rb_fr_vel
      }
      else {
        this.rb_fr_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_fr_pos')) {
        this.rb_fr_pos = initObj.rb_fr_pos
      }
      else {
        this.rb_fr_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_mr_vel')) {
        this.rb_mr_vel = initObj.rb_mr_vel
      }
      else {
        this.rb_mr_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_mr_pos')) {
        this.rb_mr_pos = initObj.rb_mr_pos
      }
      else {
        this.rb_mr_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_rr_vel')) {
        this.rb_rr_vel = initObj.rb_rr_vel
      }
      else {
        this.rb_rr_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_rr_pos')) {
        this.rb_rr_pos = initObj.rb_rr_pos
      }
      else {
        this.rb_rr_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_fl_vel')) {
        this.rb_fl_vel = initObj.rb_fl_vel
      }
      else {
        this.rb_fl_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_fl_pos')) {
        this.rb_fl_pos = initObj.rb_fl_pos
      }
      else {
        this.rb_fl_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_ml_vel')) {
        this.rb_ml_vel = initObj.rb_ml_vel
      }
      else {
        this.rb_ml_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_ml_pos')) {
        this.rb_ml_pos = initObj.rb_ml_pos
      }
      else {
        this.rb_ml_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_rl_vel')) {
        this.rb_rl_vel = initObj.rb_rl_vel
      }
      else {
        this.rb_rl_vel = 0;
      }
      if (initObj.hasOwnProperty('rb_rl_pos')) {
        this.rb_rl_pos = initObj.rb_rl_pos
      }
      else {
        this.rb_rl_pos = 0;
      }
      if (initObj.hasOwnProperty('rb_rb_sig')) {
        this.rb_rb_sig = initObj.rb_rb_sig
      }
      else {
        this.rb_rb_sig = 0;
      }
      if (initObj.hasOwnProperty('rb_lb_sig')) {
        this.rb_lb_sig = initObj.rb_lb_sig
      }
      else {
        this.rb_lb_sig = 0;
      }
      if (initObj.hasOwnProperty('rb_da_sig')) {
        this.rb_da_sig = initObj.rb_da_sig
      }
      else {
        this.rb_da_sig = 0;
      }
      if (initObj.hasOwnProperty('table_sig')) {
        this.table_sig = initObj.table_sig
      }
      else {
        this.table_sig = 0;
      }
      if (initObj.hasOwnProperty('bd_sig')) {
        this.bd_sig = initObj.bd_sig
      }
      else {
        this.bd_sig = 0;
      }
      if (initObj.hasOwnProperty('ad_sig')) {
        this.ad_sig = initObj.ad_sig
      }
      else {
        this.ad_sig = 0;
      }
      if (initObj.hasOwnProperty('wpd_sig')) {
        this.wpd_sig = initObj.wpd_sig
      }
      else {
        this.wpd_sig = 0;
      }
      if (initObj.hasOwnProperty('wrd_sig')) {
        this.wrd_sig = initObj.wrd_sig
      }
      else {
        this.wrd_sig = 0;
      }
      if (initObj.hasOwnProperty('chss_gpio1')) {
        this.chss_gpio1 = initObj.chss_gpio1
      }
      else {
        this.chss_gpio1 = false;
      }
      if (initObj.hasOwnProperty('chss_gpio2')) {
        this.chss_gpio2 = initObj.chss_gpio2
      }
      else {
        this.chss_gpio2 = false;
      }
      if (initObj.hasOwnProperty('chss_gpio3')) {
        this.chss_gpio3 = initObj.chss_gpio3
      }
      else {
        this.chss_gpio3 = false;
      }
      if (initObj.hasOwnProperty('chss_gpio4')) {
        this.chss_gpio4 = initObj.chss_gpio4
      }
      else {
        this.chss_gpio4 = false;
      }
      if (initObj.hasOwnProperty('chss_gpio5')) {
        this.chss_gpio5 = initObj.chss_gpio5
      }
      else {
        this.chss_gpio5 = false;
      }
      if (initObj.hasOwnProperty('chss_gpio6')) {
        this.chss_gpio6 = initObj.chss_gpio6
      }
      else {
        this.chss_gpio6 = false;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('gz')) {
        this.gz = initObj.gz
      }
      else {
        this.gz = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('mx')) {
        this.mx = initObj.mx
      }
      else {
        this.mx = 0.0;
      }
      if (initObj.hasOwnProperty('my')) {
        this.my = initObj.my
      }
      else {
        this.my = 0.0;
      }
      if (initObj.hasOwnProperty('mz')) {
        this.mz = initObj.mz
      }
      else {
        this.mz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorData
    // Serialize message field [pressure]
    bufferOffset = _serializer.int32(obj.pressure, buffer, bufferOffset);
    // Serialize message field [rbl_temp]
    bufferOffset = _serializer.int32(obj.rbl_temp, buffer, bufferOffset);
    // Serialize message field [rbr_temp]
    bufferOffset = _serializer.int32(obj.rbr_temp, buffer, bufferOffset);
    // Serialize message field [bmp280_temp]
    bufferOffset = _serializer.int32(obj.bmp280_temp, buffer, bufferOffset);
    // Serialize message field [st_set]
    bufferOffset = _serializer.bool(obj.st_set, buffer, bufferOffset);
    // Serialize message field [st_index]
    bufferOffset = _serializer.bool(obj.st_index, buffer, bufferOffset);
    // Serialize message field [v_csense]
    bufferOffset = _serializer.int32(obj.v_csense, buffer, bufferOffset);
    // Serialize message field [v_vsense]
    bufferOffset = _serializer.int32(obj.v_vsense, buffer, bufferOffset);
    // Serialize message field [rb_fr_vel]
    bufferOffset = _serializer.int32(obj.rb_fr_vel, buffer, bufferOffset);
    // Serialize message field [rb_fr_pos]
    bufferOffset = _serializer.int32(obj.rb_fr_pos, buffer, bufferOffset);
    // Serialize message field [rb_mr_vel]
    bufferOffset = _serializer.int32(obj.rb_mr_vel, buffer, bufferOffset);
    // Serialize message field [rb_mr_pos]
    bufferOffset = _serializer.int32(obj.rb_mr_pos, buffer, bufferOffset);
    // Serialize message field [rb_rr_vel]
    bufferOffset = _serializer.int32(obj.rb_rr_vel, buffer, bufferOffset);
    // Serialize message field [rb_rr_pos]
    bufferOffset = _serializer.int32(obj.rb_rr_pos, buffer, bufferOffset);
    // Serialize message field [rb_fl_vel]
    bufferOffset = _serializer.int32(obj.rb_fl_vel, buffer, bufferOffset);
    // Serialize message field [rb_fl_pos]
    bufferOffset = _serializer.int32(obj.rb_fl_pos, buffer, bufferOffset);
    // Serialize message field [rb_ml_vel]
    bufferOffset = _serializer.int32(obj.rb_ml_vel, buffer, bufferOffset);
    // Serialize message field [rb_ml_pos]
    bufferOffset = _serializer.int32(obj.rb_ml_pos, buffer, bufferOffset);
    // Serialize message field [rb_rl_vel]
    bufferOffset = _serializer.int32(obj.rb_rl_vel, buffer, bufferOffset);
    // Serialize message field [rb_rl_pos]
    bufferOffset = _serializer.int32(obj.rb_rl_pos, buffer, bufferOffset);
    // Serialize message field [rb_rb_sig]
    bufferOffset = _serializer.int32(obj.rb_rb_sig, buffer, bufferOffset);
    // Serialize message field [rb_lb_sig]
    bufferOffset = _serializer.int32(obj.rb_lb_sig, buffer, bufferOffset);
    // Serialize message field [rb_da_sig]
    bufferOffset = _serializer.int32(obj.rb_da_sig, buffer, bufferOffset);
    // Serialize message field [table_sig]
    bufferOffset = _serializer.int32(obj.table_sig, buffer, bufferOffset);
    // Serialize message field [bd_sig]
    bufferOffset = _serializer.int32(obj.bd_sig, buffer, bufferOffset);
    // Serialize message field [ad_sig]
    bufferOffset = _serializer.int32(obj.ad_sig, buffer, bufferOffset);
    // Serialize message field [wpd_sig]
    bufferOffset = _serializer.int32(obj.wpd_sig, buffer, bufferOffset);
    // Serialize message field [wrd_sig]
    bufferOffset = _serializer.int32(obj.wrd_sig, buffer, bufferOffset);
    // Serialize message field [chss_gpio1]
    bufferOffset = _serializer.bool(obj.chss_gpio1, buffer, bufferOffset);
    // Serialize message field [chss_gpio2]
    bufferOffset = _serializer.bool(obj.chss_gpio2, buffer, bufferOffset);
    // Serialize message field [chss_gpio3]
    bufferOffset = _serializer.bool(obj.chss_gpio3, buffer, bufferOffset);
    // Serialize message field [chss_gpio4]
    bufferOffset = _serializer.bool(obj.chss_gpio4, buffer, bufferOffset);
    // Serialize message field [chss_gpio5]
    bufferOffset = _serializer.bool(obj.chss_gpio5, buffer, bufferOffset);
    // Serialize message field [chss_gpio6]
    bufferOffset = _serializer.bool(obj.chss_gpio6, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.float32(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float32(obj.gy, buffer, bufferOffset);
    // Serialize message field [gz]
    bufferOffset = _serializer.float32(obj.gz, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    // Serialize message field [mx]
    bufferOffset = _serializer.float32(obj.mx, buffer, bufferOffset);
    // Serialize message field [my]
    bufferOffset = _serializer.float32(obj.my, buffer, bufferOffset);
    // Serialize message field [mz]
    bufferOffset = _serializer.float32(obj.mz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorData
    let len;
    let data = new SensorData(null);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rbl_temp]
    data.rbl_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rbr_temp]
    data.rbr_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bmp280_temp]
    data.bmp280_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [st_set]
    data.st_set = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_index]
    data.st_index = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [v_csense]
    data.v_csense = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [v_vsense]
    data.v_vsense = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_fr_vel]
    data.rb_fr_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_fr_pos]
    data.rb_fr_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_mr_vel]
    data.rb_mr_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_mr_pos]
    data.rb_mr_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_rr_vel]
    data.rb_rr_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_rr_pos]
    data.rb_rr_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_fl_vel]
    data.rb_fl_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_fl_pos]
    data.rb_fl_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_ml_vel]
    data.rb_ml_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_ml_pos]
    data.rb_ml_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_rl_vel]
    data.rb_rl_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_rl_pos]
    data.rb_rl_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_rb_sig]
    data.rb_rb_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_lb_sig]
    data.rb_lb_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rb_da_sig]
    data.rb_da_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [table_sig]
    data.table_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bd_sig]
    data.bd_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ad_sig]
    data.ad_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wpd_sig]
    data.wpd_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wrd_sig]
    data.wrd_sig = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [chss_gpio1]
    data.chss_gpio1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chss_gpio2]
    data.chss_gpio2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chss_gpio3]
    data.chss_gpio3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chss_gpio4]
    data.chss_gpio4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chss_gpio5]
    data.chss_gpio5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chss_gpio6]
    data.chss_gpio6 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gz]
    data.gz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mx]
    data.mx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my]
    data.my = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mz]
    data.mz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_pkg/SensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d8c06323fba8db66de6bea5d0e4ef77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pressure
    int32 rbl_temp
    int32 rbr_temp
    int32 bmp280_temp
    
    bool st_set
    bool st_index
    
    int32 v_csense
    int32 v_vsense
    
    int32 rb_fr_vel
    int32 rb_fr_pos
    int32 rb_mr_vel
    int32 rb_mr_pos
    int32 rb_rr_vel
    int32 rb_rr_pos
    
    int32 rb_fl_vel
    int32 rb_fl_pos
    int32 rb_ml_vel
    int32 rb_ml_pos
    int32 rb_rl_vel
    int32 rb_rl_pos
    
    int32 rb_rb_sig
    int32 rb_lb_sig
    int32 rb_da_sig
    
    int32 table_sig
    int32 bd_sig
    int32 ad_sig
    int32 wpd_sig
    int32 wrd_sig
    
    bool chss_gpio1
    bool chss_gpio2
    bool chss_gpio3
    bool chss_gpio4
    bool chss_gpio5
    bool chss_gpio6
    
    float32 gx
    float32 gy
    float32 gz
    
    float32 ax
    float32 ay
    float32 az
    
    float32 mx
    float32 my
    float32 mz
    
    
    
    
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorData(null);
    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0
    }

    if (msg.rbl_temp !== undefined) {
      resolved.rbl_temp = msg.rbl_temp;
    }
    else {
      resolved.rbl_temp = 0
    }

    if (msg.rbr_temp !== undefined) {
      resolved.rbr_temp = msg.rbr_temp;
    }
    else {
      resolved.rbr_temp = 0
    }

    if (msg.bmp280_temp !== undefined) {
      resolved.bmp280_temp = msg.bmp280_temp;
    }
    else {
      resolved.bmp280_temp = 0
    }

    if (msg.st_set !== undefined) {
      resolved.st_set = msg.st_set;
    }
    else {
      resolved.st_set = false
    }

    if (msg.st_index !== undefined) {
      resolved.st_index = msg.st_index;
    }
    else {
      resolved.st_index = false
    }

    if (msg.v_csense !== undefined) {
      resolved.v_csense = msg.v_csense;
    }
    else {
      resolved.v_csense = 0
    }

    if (msg.v_vsense !== undefined) {
      resolved.v_vsense = msg.v_vsense;
    }
    else {
      resolved.v_vsense = 0
    }

    if (msg.rb_fr_vel !== undefined) {
      resolved.rb_fr_vel = msg.rb_fr_vel;
    }
    else {
      resolved.rb_fr_vel = 0
    }

    if (msg.rb_fr_pos !== undefined) {
      resolved.rb_fr_pos = msg.rb_fr_pos;
    }
    else {
      resolved.rb_fr_pos = 0
    }

    if (msg.rb_mr_vel !== undefined) {
      resolved.rb_mr_vel = msg.rb_mr_vel;
    }
    else {
      resolved.rb_mr_vel = 0
    }

    if (msg.rb_mr_pos !== undefined) {
      resolved.rb_mr_pos = msg.rb_mr_pos;
    }
    else {
      resolved.rb_mr_pos = 0
    }

    if (msg.rb_rr_vel !== undefined) {
      resolved.rb_rr_vel = msg.rb_rr_vel;
    }
    else {
      resolved.rb_rr_vel = 0
    }

    if (msg.rb_rr_pos !== undefined) {
      resolved.rb_rr_pos = msg.rb_rr_pos;
    }
    else {
      resolved.rb_rr_pos = 0
    }

    if (msg.rb_fl_vel !== undefined) {
      resolved.rb_fl_vel = msg.rb_fl_vel;
    }
    else {
      resolved.rb_fl_vel = 0
    }

    if (msg.rb_fl_pos !== undefined) {
      resolved.rb_fl_pos = msg.rb_fl_pos;
    }
    else {
      resolved.rb_fl_pos = 0
    }

    if (msg.rb_ml_vel !== undefined) {
      resolved.rb_ml_vel = msg.rb_ml_vel;
    }
    else {
      resolved.rb_ml_vel = 0
    }

    if (msg.rb_ml_pos !== undefined) {
      resolved.rb_ml_pos = msg.rb_ml_pos;
    }
    else {
      resolved.rb_ml_pos = 0
    }

    if (msg.rb_rl_vel !== undefined) {
      resolved.rb_rl_vel = msg.rb_rl_vel;
    }
    else {
      resolved.rb_rl_vel = 0
    }

    if (msg.rb_rl_pos !== undefined) {
      resolved.rb_rl_pos = msg.rb_rl_pos;
    }
    else {
      resolved.rb_rl_pos = 0
    }

    if (msg.rb_rb_sig !== undefined) {
      resolved.rb_rb_sig = msg.rb_rb_sig;
    }
    else {
      resolved.rb_rb_sig = 0
    }

    if (msg.rb_lb_sig !== undefined) {
      resolved.rb_lb_sig = msg.rb_lb_sig;
    }
    else {
      resolved.rb_lb_sig = 0
    }

    if (msg.rb_da_sig !== undefined) {
      resolved.rb_da_sig = msg.rb_da_sig;
    }
    else {
      resolved.rb_da_sig = 0
    }

    if (msg.table_sig !== undefined) {
      resolved.table_sig = msg.table_sig;
    }
    else {
      resolved.table_sig = 0
    }

    if (msg.bd_sig !== undefined) {
      resolved.bd_sig = msg.bd_sig;
    }
    else {
      resolved.bd_sig = 0
    }

    if (msg.ad_sig !== undefined) {
      resolved.ad_sig = msg.ad_sig;
    }
    else {
      resolved.ad_sig = 0
    }

    if (msg.wpd_sig !== undefined) {
      resolved.wpd_sig = msg.wpd_sig;
    }
    else {
      resolved.wpd_sig = 0
    }

    if (msg.wrd_sig !== undefined) {
      resolved.wrd_sig = msg.wrd_sig;
    }
    else {
      resolved.wrd_sig = 0
    }

    if (msg.chss_gpio1 !== undefined) {
      resolved.chss_gpio1 = msg.chss_gpio1;
    }
    else {
      resolved.chss_gpio1 = false
    }

    if (msg.chss_gpio2 !== undefined) {
      resolved.chss_gpio2 = msg.chss_gpio2;
    }
    else {
      resolved.chss_gpio2 = false
    }

    if (msg.chss_gpio3 !== undefined) {
      resolved.chss_gpio3 = msg.chss_gpio3;
    }
    else {
      resolved.chss_gpio3 = false
    }

    if (msg.chss_gpio4 !== undefined) {
      resolved.chss_gpio4 = msg.chss_gpio4;
    }
    else {
      resolved.chss_gpio4 = false
    }

    if (msg.chss_gpio5 !== undefined) {
      resolved.chss_gpio5 = msg.chss_gpio5;
    }
    else {
      resolved.chss_gpio5 = false
    }

    if (msg.chss_gpio6 !== undefined) {
      resolved.chss_gpio6 = msg.chss_gpio6;
    }
    else {
      resolved.chss_gpio6 = false
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.gz !== undefined) {
      resolved.gz = msg.gz;
    }
    else {
      resolved.gz = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.mx !== undefined) {
      resolved.mx = msg.mx;
    }
    else {
      resolved.mx = 0.0
    }

    if (msg.my !== undefined) {
      resolved.my = msg.my;
    }
    else {
      resolved.my = 0.0
    }

    if (msg.mz !== undefined) {
      resolved.mz = msg.mz;
    }
    else {
      resolved.mz = 0.0
    }

    return resolved;
    }
};

module.exports = SensorData;
