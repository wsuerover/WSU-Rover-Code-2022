;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::ArmData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'ArmData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::ARMDATA")
  (make-package "ROVER_PKG::ARMDATA"))

(in-package "ROS")
;;//! \htmlinclude ArmData.msg.html


(defclass rover_pkg::ArmData
  :super ros::object
  :slots (_arm_zm _arm_bm _arm_am _arm_wr _awm_wp _qdcl ))

(defmethod rover_pkg::ArmData
  (:init
   (&key
    ((:arm_zm __arm_zm) 0.0)
    ((:arm_bm __arm_bm) 0.0)
    ((:arm_am __arm_am) 0.0)
    ((:arm_wr __arm_wr) 0.0)
    ((:awm_wp __awm_wp) 0.0)
    ((:qdcl __qdcl) nil)
    )
   (send-super :init)
   (setq _arm_zm (float __arm_zm))
   (setq _arm_bm (float __arm_bm))
   (setq _arm_am (float __arm_am))
   (setq _arm_wr (float __arm_wr))
   (setq _awm_wp (float __awm_wp))
   (setq _qdcl __qdcl)
   self)
  (:arm_zm
   (&optional __arm_zm)
   (if __arm_zm (setq _arm_zm __arm_zm)) _arm_zm)
  (:arm_bm
   (&optional __arm_bm)
   (if __arm_bm (setq _arm_bm __arm_bm)) _arm_bm)
  (:arm_am
   (&optional __arm_am)
   (if __arm_am (setq _arm_am __arm_am)) _arm_am)
  (:arm_wr
   (&optional __arm_wr)
   (if __arm_wr (setq _arm_wr __arm_wr)) _arm_wr)
  (:awm_wp
   (&optional __awm_wp)
   (if __awm_wp (setq _awm_wp __awm_wp)) _awm_wp)
  (:qdcl
   (&optional __qdcl)
   (if __qdcl (setq _qdcl __qdcl)) _qdcl)
  (:serialization-length
   ()
   (+
    ;; float32 _arm_zm
    4
    ;; float32 _arm_bm
    4
    ;; float32 _arm_am
    4
    ;; float32 _arm_wr
    4
    ;; float32 _awm_wp
    4
    ;; bool _qdcl
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _arm_zm
       (sys::poke _arm_zm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_bm
       (sys::poke _arm_bm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_am
       (sys::poke _arm_am (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arm_wr
       (sys::poke _arm_wr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _awm_wp
       (sys::poke _awm_wp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _qdcl
       (if _qdcl (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _arm_zm
     (setq _arm_zm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_bm
     (setq _arm_bm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_am
     (setq _arm_am (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arm_wr
     (setq _arm_wr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _awm_wp
     (setq _awm_wp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _qdcl
     (setq _qdcl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rover_pkg::ArmData :md5sum-) "7179ed0dcb5c273219b9474db52af818")
(setf (get rover_pkg::ArmData :datatype-) "rover_pkg/ArmData")
(setf (get rover_pkg::ArmData :definition-)
      "float32 arm_zm
float32 arm_bm
float32 arm_am
float32 arm_wr
float32 awm_wp
bool qdcl

")



(provide :rover_pkg/ArmData "7179ed0dcb5c273219b9474db52af818")


