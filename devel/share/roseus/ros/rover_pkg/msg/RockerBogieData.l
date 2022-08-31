;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::RockerBogieData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'RockerBogieData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::ROCKERBOGIEDATA")
  (make-package "ROVER_PKG::ROCKERBOGIEDATA"))

(in-package "ROS")
;;//! \htmlinclude RockerBogieData.msg.html


(defclass rover_pkg::RockerBogieData
  :super ros::object
  :slots (_rb_fr _rb_mr _rb_rr _rb_fl _rb_ml _rb_rl ))

(defmethod rover_pkg::RockerBogieData
  (:init
   (&key
    ((:rb_fr __rb_fr) 0.0)
    ((:rb_mr __rb_mr) 0.0)
    ((:rb_rr __rb_rr) 0.0)
    ((:rb_fl __rb_fl) 0.0)
    ((:rb_ml __rb_ml) 0.0)
    ((:rb_rl __rb_rl) 0.0)
    )
   (send-super :init)
   (setq _rb_fr (float __rb_fr))
   (setq _rb_mr (float __rb_mr))
   (setq _rb_rr (float __rb_rr))
   (setq _rb_fl (float __rb_fl))
   (setq _rb_ml (float __rb_ml))
   (setq _rb_rl (float __rb_rl))
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
   ;;
   self)
  )

(setf (get rover_pkg::RockerBogieData :md5sum-) "9fabc40ef174095f6a972da72d98b480")
(setf (get rover_pkg::RockerBogieData :datatype-) "rover_pkg/RockerBogieData")
(setf (get rover_pkg::RockerBogieData :definition-)
      "float32 rb_fr
float32 rb_mr
float32 rb_rr
float32 rb_fl
float32 rb_ml
float32 rb_rl


")



(provide :rover_pkg/RockerBogieData "9fabc40ef174095f6a972da72d98b480")


