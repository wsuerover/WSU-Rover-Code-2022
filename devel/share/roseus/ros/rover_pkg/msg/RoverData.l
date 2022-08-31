;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::RoverData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'RoverData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::ROVERDATA")
  (make-package "ROVER_PKG::ROVERDATA"))

(in-package "ROS")
;;//! \htmlinclude RoverData.msg.html


(defclass rover_pkg::RoverData
  :super ros::object
  :slots (_rb_fr _rb_mr _rb_rr _rb_fl _rb_ml _rb_rl _arm_zm _arm_bm _arm_am _arm_wr _awm_wp _qdcl ))

(defmethod rover_pkg::RoverData
  (:init
   (&key
    ((:rb_fr __rb_fr) 0.0)
    ((:rb_mr __rb_mr) 0.0)
    ((:rb_rr __rb_rr) 0.0)
    ((:rb_fl __rb_fl) 0.0)
    ((:rb_ml __rb_ml) 0.0)
    ((:rb_rl __rb_rl) 0.0)
    ((:arm_zm __arm_zm) 0.0)
    ((:arm_bm __arm_bm) 0.0)
    ((:arm_am __arm_am) 0.0)
    ((:arm_wr __arm_wr) 0.0)
    ((:awm_wp __awm_wp) 0.0)
    ((:qdcl __qdcl) nil)
    )
   (send-super :init)
   (setq _rb_fr (float __rb_fr))
   (setq _rb_mr (float __rb_mr))
   (setq _rb_rr (float __rb_rr))
   (setq _rb_fl (float __rb_fl))
   (setq _rb_ml (float __rb_ml))
   (setq _rb_rl (float __rb_rl))
   (setq _arm_zm (float __arm_zm))
   (setq _arm_bm (float __arm_bm))
   (setq _arm_am (float __arm_am))
   (setq _arm_wr (float __arm_wr))
   (setq _awm_wp (float __awm_wp))
   (setq _qdcl __qdcl)
   self)
  (:rb_fr
   (&optional __rb_fr)
   (if __rb_fr (setq _rb_fr __rb_fr)) _rb_fr)
  (:rb_mr
   (&optional __rb_mr)
   (if __rb_mr (setq _rb_mr __rb_mr)) _rb_mr)
  (:rb_rr
   (&optional __rb_rr)
   (if __rb_rr (setq _rb_rr __rb_rr)) _rb_rr)
  (:rb_fl
   (&optional __rb_fl)
   (if __rb_fl (setq _rb_fl __rb_fl)) _rb_fl)
  (:rb_ml
   (&optional __rb_ml)
   (if __rb_ml (setq _rb_ml __rb_ml)) _rb_ml)
  (:rb_rl
   (&optional __rb_rl)
   (if __rb_rl (setq _rb_rl __rb_rl)) _rb_rl)
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
    ;; float32 _rb_fr
    4
    ;; float32 _rb_mr
    4
    ;; float32 _rb_rr
    4
    ;; float32 _rb_fl
    4
    ;; float32 _rb_ml
    4
    ;; float32 _rb_rl
    4
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
     ;; float32 _rb_fr
       (sys::poke _rb_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_mr
       (sys::poke _rb_mr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_rr
       (sys::poke _rb_rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_fl
       (sys::poke _rb_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_ml
       (sys::poke _rb_ml (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rb_rl
       (sys::poke _rb_rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _rb_fr
     (setq _rb_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_mr
     (setq _rb_mr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_rr
     (setq _rb_rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_fl
     (setq _rb_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_ml
     (setq _rb_ml (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rb_rl
     (setq _rb_rl (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get rover_pkg::RoverData :md5sum-) "736b6a6f87def00a2326ecbc6c3788ee")
(setf (get rover_pkg::RoverData :datatype-) "rover_pkg/RoverData")
(setf (get rover_pkg::RoverData :definition-)
      "float32 rb_fr
float32 rb_mr
float32 rb_rr
float32 rb_fl
float32 rb_ml
float32 rb_rl

float32 arm_zm
float32 arm_bm
float32 arm_am
float32 arm_wr
float32 awm_wp
bool qdcl

")



(provide :rover_pkg/RoverData "736b6a6f87def00a2326ecbc6c3788ee")


