;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::SensorData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'SensorData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::SENSORDATA")
  (make-package "ROVER_PKG::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude SensorData.msg.html


(defclass rover_pkg::SensorData
  :super ros::object
  :slots (_pressure _rbl_temp _rbr_temp _bmp280_temp _st_set _st_index _v_csense _v_vsense _rb_fr_vel _rb_fr_pos _rb_mr_vel _rb_mr_pos _rb_rr_vel _rb_rr_pos _rb_fl_vel _rb_fl_pos _rb_ml_vel _rb_ml_pos _rb_rl_vel _rb_rl_pos _rb_rb_sig _rb_lb_sig _rb_da_sig _table_sig _bd_sig _ad_sig _wpd_sig _wrd_sig _chss_gpio1 _chss_gpio2 _chss_gpio3 _chss_gpio4 _chss_gpio5 _chss_gpio6 _gx _gy _gz _ax _ay _az _mx _my _mz ))

(defmethod rover_pkg::SensorData
  (:init
   (&key
    ((:pressure __pressure) 0)
    ((:rbl_temp __rbl_temp) 0)
    ((:rbr_temp __rbr_temp) 0)
    ((:bmp280_temp __bmp280_temp) 0)
    ((:st_set __st_set) nil)
    ((:st_index __st_index) nil)
    ((:v_csense __v_csense) 0)
    ((:v_vsense __v_vsense) 0)
    ((:rb_fr_vel __rb_fr_vel) 0)
    ((:rb_fr_pos __rb_fr_pos) 0)
    ((:rb_mr_vel __rb_mr_vel) 0)
    ((:rb_mr_pos __rb_mr_pos) 0)
    ((:rb_rr_vel __rb_rr_vel) 0)
    ((:rb_rr_pos __rb_rr_pos) 0)
    ((:rb_fl_vel __rb_fl_vel) 0)
    ((:rb_fl_pos __rb_fl_pos) 0)
    ((:rb_ml_vel __rb_ml_vel) 0)
    ((:rb_ml_pos __rb_ml_pos) 0)
    ((:rb_rl_vel __rb_rl_vel) 0)
    ((:rb_rl_pos __rb_rl_pos) 0)
    ((:rb_rb_sig __rb_rb_sig) 0)
    ((:rb_lb_sig __rb_lb_sig) 0)
    ((:rb_da_sig __rb_da_sig) 0)
    ((:table_sig __table_sig) 0)
    ((:bd_sig __bd_sig) 0)
    ((:ad_sig __ad_sig) 0)
    ((:wpd_sig __wpd_sig) 0)
    ((:wrd_sig __wrd_sig) 0)
    ((:chss_gpio1 __chss_gpio1) nil)
    ((:chss_gpio2 __chss_gpio2) nil)
    ((:chss_gpio3 __chss_gpio3) nil)
    ((:chss_gpio4 __chss_gpio4) nil)
    ((:chss_gpio5 __chss_gpio5) nil)
    ((:chss_gpio6 __chss_gpio6) nil)
    ((:gx __gx) 0.0)
    ((:gy __gy) 0.0)
    ((:gz __gz) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:mx __mx) 0.0)
    ((:my __my) 0.0)
    ((:mz __mz) 0.0)
    )
   (send-super :init)
   (setq _pressure (round __pressure))
   (setq _rbl_temp (round __rbl_temp))
   (setq _rbr_temp (round __rbr_temp))
   (setq _bmp280_temp (round __bmp280_temp))
   (setq _st_set __st_set)
   (setq _st_index __st_index)
   (setq _v_csense (round __v_csense))
   (setq _v_vsense (round __v_vsense))
   (setq _rb_fr_vel (round __rb_fr_vel))
   (setq _rb_fr_pos (round __rb_fr_pos))
   (setq _rb_mr_vel (round __rb_mr_vel))
   (setq _rb_mr_pos (round __rb_mr_pos))
   (setq _rb_rr_vel (round __rb_rr_vel))
   (setq _rb_rr_pos (round __rb_rr_pos))
   (setq _rb_fl_vel (round __rb_fl_vel))
   (setq _rb_fl_pos (round __rb_fl_pos))
   (setq _rb_ml_vel (round __rb_ml_vel))
   (setq _rb_ml_pos (round __rb_ml_pos))
   (setq _rb_rl_vel (round __rb_rl_vel))
   (setq _rb_rl_pos (round __rb_rl_pos))
   (setq _rb_rb_sig (round __rb_rb_sig))
   (setq _rb_lb_sig (round __rb_lb_sig))
   (setq _rb_da_sig (round __rb_da_sig))
   (setq _table_sig (round __table_sig))
   (setq _bd_sig (round __bd_sig))
   (setq _ad_sig (round __ad_sig))
   (setq _wpd_sig (round __wpd_sig))
   (setq _wrd_sig (round __wrd_sig))
   (setq _chss_gpio1 __chss_gpio1)
   (setq _chss_gpio2 __chss_gpio2)
   (setq _chss_gpio3 __chss_gpio3)
   (setq _chss_gpio4 __chss_gpio4)
   (setq _chss_gpio5 __chss_gpio5)
   (setq _chss_gpio6 __chss_gpio6)
   (setq _gx (float __gx))
   (setq _gy (float __gy))
   (setq _gz (float __gz))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _mx (float __mx))
   (setq _my (float __my))
   (setq _mz (float __mz))
   self)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:rbl_temp
   (&optional __rbl_temp)
   (if __rbl_temp (setq _rbl_temp __rbl_temp)) _rbl_temp)
  (:rbr_temp
   (&optional __rbr_temp)
   (if __rbr_temp (setq _rbr_temp __rbr_temp)) _rbr_temp)
  (:bmp280_temp
   (&optional __bmp280_temp)
   (if __bmp280_temp (setq _bmp280_temp __bmp280_temp)) _bmp280_temp)
  (:st_set
   (&optional __st_set)
   (if __st_set (setq _st_set __st_set)) _st_set)
  (:st_index
   (&optional __st_index)
   (if __st_index (setq _st_index __st_index)) _st_index)
  (:v_csense
   (&optional __v_csense)
   (if __v_csense (setq _v_csense __v_csense)) _v_csense)
  (:v_vsense
   (&optional __v_vsense)
   (if __v_vsense (setq _v_vsense __v_vsense)) _v_vsense)
  (:rb_fr_vel
   (&optional __rb_fr_vel)
   (if __rb_fr_vel (setq _rb_fr_vel __rb_fr_vel)) _rb_fr_vel)
  (:rb_fr_pos
   (&optional __rb_fr_pos)
   (if __rb_fr_pos (setq _rb_fr_pos __rb_fr_pos)) _rb_fr_pos)
  (:rb_mr_vel
   (&optional __rb_mr_vel)
   (if __rb_mr_vel (setq _rb_mr_vel __rb_mr_vel)) _rb_mr_vel)
  (:rb_mr_pos
   (&optional __rb_mr_pos)
   (if __rb_mr_pos (setq _rb_mr_pos __rb_mr_pos)) _rb_mr_pos)
  (:rb_rr_vel
   (&optional __rb_rr_vel)
   (if __rb_rr_vel (setq _rb_rr_vel __rb_rr_vel)) _rb_rr_vel)
  (:rb_rr_pos
   (&optional __rb_rr_pos)
   (if __rb_rr_pos (setq _rb_rr_pos __rb_rr_pos)) _rb_rr_pos)
  (:rb_fl_vel
   (&optional __rb_fl_vel)
   (if __rb_fl_vel (setq _rb_fl_vel __rb_fl_vel)) _rb_fl_vel)
  (:rb_fl_pos
   (&optional __rb_fl_pos)
   (if __rb_fl_pos (setq _rb_fl_pos __rb_fl_pos)) _rb_fl_pos)
  (:rb_ml_vel
   (&optional __rb_ml_vel)
   (if __rb_ml_vel (setq _rb_ml_vel __rb_ml_vel)) _rb_ml_vel)
  (:rb_ml_pos
   (&optional __rb_ml_pos)
   (if __rb_ml_pos (setq _rb_ml_pos __rb_ml_pos)) _rb_ml_pos)
  (:rb_rl_vel
   (&optional __rb_rl_vel)
   (if __rb_rl_vel (setq _rb_rl_vel __rb_rl_vel)) _rb_rl_vel)
  (:rb_rl_pos
   (&optional __rb_rl_pos)
   (if __rb_rl_pos (setq _rb_rl_pos __rb_rl_pos)) _rb_rl_pos)
  (:rb_rb_sig
   (&optional __rb_rb_sig)
   (if __rb_rb_sig (setq _rb_rb_sig __rb_rb_sig)) _rb_rb_sig)
  (:rb_lb_sig
   (&optional __rb_lb_sig)
   (if __rb_lb_sig (setq _rb_lb_sig __rb_lb_sig)) _rb_lb_sig)
  (:rb_da_sig
   (&optional __rb_da_sig)
   (if __rb_da_sig (setq _rb_da_sig __rb_da_sig)) _rb_da_sig)
  (:table_sig
   (&optional __table_sig)
   (if __table_sig (setq _table_sig __table_sig)) _table_sig)
  (:bd_sig
   (&optional __bd_sig)
   (if __bd_sig (setq _bd_sig __bd_sig)) _bd_sig)
  (:ad_sig
   (&optional __ad_sig)
   (if __ad_sig (setq _ad_sig __ad_sig)) _ad_sig)
  (:wpd_sig
   (&optional __wpd_sig)
   (if __wpd_sig (setq _wpd_sig __wpd_sig)) _wpd_sig)
  (:wrd_sig
   (&optional __wrd_sig)
   (if __wrd_sig (setq _wrd_sig __wrd_sig)) _wrd_sig)
  (:chss_gpio1
   (&optional __chss_gpio1)
   (if __chss_gpio1 (setq _chss_gpio1 __chss_gpio1)) _chss_gpio1)
  (:chss_gpio2
   (&optional __chss_gpio2)
   (if __chss_gpio2 (setq _chss_gpio2 __chss_gpio2)) _chss_gpio2)
  (:chss_gpio3
   (&optional __chss_gpio3)
   (if __chss_gpio3 (setq _chss_gpio3 __chss_gpio3)) _chss_gpio3)
  (:chss_gpio4
   (&optional __chss_gpio4)
   (if __chss_gpio4 (setq _chss_gpio4 __chss_gpio4)) _chss_gpio4)
  (:chss_gpio5
   (&optional __chss_gpio5)
   (if __chss_gpio5 (setq _chss_gpio5 __chss_gpio5)) _chss_gpio5)
  (:chss_gpio6
   (&optional __chss_gpio6)
   (if __chss_gpio6 (setq _chss_gpio6 __chss_gpio6)) _chss_gpio6)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:gz
   (&optional __gz)
   (if __gz (setq _gz __gz)) _gz)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:mz
   (&optional __mz)
   (if __mz (setq _mz __mz)) _mz)
  (:serialization-length
   ()
   (+
    ;; int32 _pressure
    4
    ;; int32 _rbl_temp
    4
    ;; int32 _rbr_temp
    4
    ;; int32 _bmp280_temp
    4
    ;; bool _st_set
    1
    ;; bool _st_index
    1
    ;; int32 _v_csense
    4
    ;; int32 _v_vsense
    4
    ;; int32 _rb_fr_vel
    4
    ;; int32 _rb_fr_pos
    4
    ;; int32 _rb_mr_vel
    4
    ;; int32 _rb_mr_pos
    4
    ;; int32 _rb_rr_vel
    4
    ;; int32 _rb_rr_pos
    4
    ;; int32 _rb_fl_vel
    4
    ;; int32 _rb_fl_pos
    4
    ;; int32 _rb_ml_vel
    4
    ;; int32 _rb_ml_pos
    4
    ;; int32 _rb_rl_vel
    4
    ;; int32 _rb_rl_pos
    4
    ;; int32 _rb_rb_sig
    4
    ;; int32 _rb_lb_sig
    4
    ;; int32 _rb_da_sig
    4
    ;; int32 _table_sig
    4
    ;; int32 _bd_sig
    4
    ;; int32 _ad_sig
    4
    ;; int32 _wpd_sig
    4
    ;; int32 _wrd_sig
    4
    ;; bool _chss_gpio1
    1
    ;; bool _chss_gpio2
    1
    ;; bool _chss_gpio3
    1
    ;; bool _chss_gpio4
    1
    ;; bool _chss_gpio5
    1
    ;; bool _chss_gpio6
    1
    ;; float32 _gx
    4
    ;; float32 _gy
    4
    ;; float32 _gz
    4
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ;; float32 _mx
    4
    ;; float32 _my
    4
    ;; float32 _mz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pressure
       (write-long _pressure s)
     ;; int32 _rbl_temp
       (write-long _rbl_temp s)
     ;; int32 _rbr_temp
       (write-long _rbr_temp s)
     ;; int32 _bmp280_temp
       (write-long _bmp280_temp s)
     ;; bool _st_set
       (if _st_set (write-byte -1 s) (write-byte 0 s))
     ;; bool _st_index
       (if _st_index (write-byte -1 s) (write-byte 0 s))
     ;; int32 _v_csense
       (write-long _v_csense s)
     ;; int32 _v_vsense
       (write-long _v_vsense s)
     ;; int32 _rb_fr_vel
       (write-long _rb_fr_vel s)
     ;; int32 _rb_fr_pos
       (write-long _rb_fr_pos s)
     ;; int32 _rb_mr_vel
       (write-long _rb_mr_vel s)
     ;; int32 _rb_mr_pos
       (write-long _rb_mr_pos s)
     ;; int32 _rb_rr_vel
       (write-long _rb_rr_vel s)
     ;; int32 _rb_rr_pos
       (write-long _rb_rr_pos s)
     ;; int32 _rb_fl_vel
       (write-long _rb_fl_vel s)
     ;; int32 _rb_fl_pos
       (write-long _rb_fl_pos s)
     ;; int32 _rb_ml_vel
       (write-long _rb_ml_vel s)
     ;; int32 _rb_ml_pos
       (write-long _rb_ml_pos s)
     ;; int32 _rb_rl_vel
       (write-long _rb_rl_vel s)
     ;; int32 _rb_rl_pos
       (write-long _rb_rl_pos s)
     ;; int32 _rb_rb_sig
       (write-long _rb_rb_sig s)
     ;; int32 _rb_lb_sig
       (write-long _rb_lb_sig s)
     ;; int32 _rb_da_sig
       (write-long _rb_da_sig s)
     ;; int32 _table_sig
       (write-long _table_sig s)
     ;; int32 _bd_sig
       (write-long _bd_sig s)
     ;; int32 _ad_sig
       (write-long _ad_sig s)
     ;; int32 _wpd_sig
       (write-long _wpd_sig s)
     ;; int32 _wrd_sig
       (write-long _wrd_sig s)
     ;; bool _chss_gpio1
       (if _chss_gpio1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _chss_gpio2
       (if _chss_gpio2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _chss_gpio3
       (if _chss_gpio3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _chss_gpio4
       (if _chss_gpio4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _chss_gpio5
       (if _chss_gpio5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _chss_gpio6
       (if _chss_gpio6 (write-byte -1 s) (write-byte 0 s))
     ;; float32 _gx
       (sys::poke _gx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gy
       (sys::poke _gy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gz
       (sys::poke _gz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mx
       (sys::poke _mx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _my
       (sys::poke _my (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mz
       (sys::poke _mz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pressure
     (setq _pressure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rbl_temp
     (setq _rbl_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rbr_temp
     (setq _rbr_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bmp280_temp
     (setq _bmp280_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _st_set
     (setq _st_set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _st_index
     (setq _st_index (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _v_csense
     (setq _v_csense (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _v_vsense
     (setq _v_vsense (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_fr_vel
     (setq _rb_fr_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_fr_pos
     (setq _rb_fr_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_mr_vel
     (setq _rb_mr_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_mr_pos
     (setq _rb_mr_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_rr_vel
     (setq _rb_rr_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_rr_pos
     (setq _rb_rr_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_fl_vel
     (setq _rb_fl_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_fl_pos
     (setq _rb_fl_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_ml_vel
     (setq _rb_ml_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_ml_pos
     (setq _rb_ml_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_rl_vel
     (setq _rb_rl_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_rl_pos
     (setq _rb_rl_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_rb_sig
     (setq _rb_rb_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_lb_sig
     (setq _rb_lb_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb_da_sig
     (setq _rb_da_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _table_sig
     (setq _table_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bd_sig
     (setq _bd_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ad_sig
     (setq _ad_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wpd_sig
     (setq _wpd_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wrd_sig
     (setq _wrd_sig (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _chss_gpio1
     (setq _chss_gpio1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chss_gpio2
     (setq _chss_gpio2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chss_gpio3
     (setq _chss_gpio3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chss_gpio4
     (setq _chss_gpio4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chss_gpio5
     (setq _chss_gpio5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _chss_gpio6
     (setq _chss_gpio6 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _gx
     (setq _gx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gy
     (setq _gy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gz
     (setq _gz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mx
     (setq _mx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _my
     (setq _my (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mz
     (setq _mz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_pkg::SensorData :md5sum-) "6d8c06323fba8db66de6bea5d0e4ef77")
(setf (get rover_pkg::SensorData :datatype-) "rover_pkg/SensorData")
(setf (get rover_pkg::SensorData :definition-)
      "int32 pressure
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









")



(provide :rover_pkg/SensorData "6d8c06323fba8db66de6bea5d0e4ef77")


