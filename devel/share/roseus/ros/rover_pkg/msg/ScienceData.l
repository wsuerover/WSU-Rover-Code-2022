;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::ScienceData)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'ScienceData (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::SCIENCEDATA")
  (make-package "ROVER_PKG::SCIENCEDATA"))

(in-package "ROS")
;;//! \htmlinclude ScienceData.msg.html


(defclass rover_pkg::ScienceData
  :super ros::object
  :slots ())

(defmethod rover_pkg::ScienceData
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get rover_pkg::ScienceData :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rover_pkg::ScienceData :datatype-) "rover_pkg/ScienceData")
(setf (get rover_pkg::ScienceData :definition-)
      "
")



(provide :rover_pkg/ScienceData "d41d8cd98f00b204e9800998ecf8427e")


