;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::ToolData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'ToolData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::TOOLDATA")
  (make-package "ROVER_PKG::TOOLDATA"))

(in-package "ROS")
;;//! \htmlinclude ToolData.msg.html


(defclass rover_pkg::ToolData
  :super ros::object
  :slots (_QDC_SIG1 _QDC_SIG2 _QDC_SIG3 _QDC_SIG4 _QDC_SIG5 _QDC_SIG6 _QDC_SIG7 ))

(defmethod rover_pkg::ToolData
  (:init
   (&key
    ((:QDC_SIG1 __QDC_SIG1) 0)
    ((:QDC_SIG2 __QDC_SIG2) 0)
    ((:QDC_SIG3 __QDC_SIG3) 0)
    ((:QDC_SIG4 __QDC_SIG4) 0)
    ((:QDC_SIG5 __QDC_SIG5) 0)
    ((:QDC_SIG6 __QDC_SIG6) 0)
    ((:QDC_SIG7 __QDC_SIG7) 0)
    )
   (send-super :init)
   (setq _QDC_SIG1 (round __QDC_SIG1))
   (setq _QDC_SIG2 (round __QDC_SIG2))
   (setq _QDC_SIG3 (round __QDC_SIG3))
   (setq _QDC_SIG4 (round __QDC_SIG4))
   (setq _QDC_SIG5 (round __QDC_SIG5))
   (setq _QDC_SIG6 (round __QDC_SIG6))
   (setq _QDC_SIG7 (round __QDC_SIG7))
   self)
  (:QDC_SIG1
   (&optional __QDC_SIG1)
   (if __QDC_SIG1 (setq _QDC_SIG1 __QDC_SIG1)) _QDC_SIG1)
  (:QDC_SIG2
   (&optional __QDC_SIG2)
   (if __QDC_SIG2 (setq _QDC_SIG2 __QDC_SIG2)) _QDC_SIG2)
  (:QDC_SIG3
   (&optional __QDC_SIG3)
   (if __QDC_SIG3 (setq _QDC_SIG3 __QDC_SIG3)) _QDC_SIG3)
  (:QDC_SIG4
   (&optional __QDC_SIG4)
   (if __QDC_SIG4 (setq _QDC_SIG4 __QDC_SIG4)) _QDC_SIG4)
  (:QDC_SIG5
   (&optional __QDC_SIG5)
   (if __QDC_SIG5 (setq _QDC_SIG5 __QDC_SIG5)) _QDC_SIG5)
  (:QDC_SIG6
   (&optional __QDC_SIG6)
   (if __QDC_SIG6 (setq _QDC_SIG6 __QDC_SIG6)) _QDC_SIG6)
  (:QDC_SIG7
   (&optional __QDC_SIG7)
   (if __QDC_SIG7 (setq _QDC_SIG7 __QDC_SIG7)) _QDC_SIG7)
  (:serialization-length
   ()
   (+
    ;; int16 _QDC_SIG1
    2
    ;; int16 _QDC_SIG2
    2
    ;; int16 _QDC_SIG3
    2
    ;; int16 _QDC_SIG4
    2
    ;; int16 _QDC_SIG5
    2
    ;; int16 _QDC_SIG6
    2
    ;; int16 _QDC_SIG7
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _QDC_SIG1
       (write-word _QDC_SIG1 s)
     ;; int16 _QDC_SIG2
       (write-word _QDC_SIG2 s)
     ;; int16 _QDC_SIG3
       (write-word _QDC_SIG3 s)
     ;; int16 _QDC_SIG4
       (write-word _QDC_SIG4 s)
     ;; int16 _QDC_SIG5
       (write-word _QDC_SIG5 s)
     ;; int16 _QDC_SIG6
       (write-word _QDC_SIG6 s)
     ;; int16 _QDC_SIG7
       (write-word _QDC_SIG7 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _QDC_SIG1
     (setq _QDC_SIG1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG2
     (setq _QDC_SIG2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG3
     (setq _QDC_SIG3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG4
     (setq _QDC_SIG4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG5
     (setq _QDC_SIG5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG6
     (setq _QDC_SIG6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _QDC_SIG7
     (setq _QDC_SIG7 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rover_pkg::ToolData :md5sum-) "37110460499bfee4e7ed1a257662b8e0")
(setf (get rover_pkg::ToolData :datatype-) "rover_pkg/ToolData")
(setf (get rover_pkg::ToolData :definition-)
      "int16 QDC_SIG1
int16 QDC_SIG2
int16 QDC_SIG3
int16 QDC_SIG4
int16 QDC_SIG5
int16 QDC_SIG6
int16 QDC_SIG7

")



(provide :rover_pkg/ToolData "37110460499bfee4e7ed1a257662b8e0")


