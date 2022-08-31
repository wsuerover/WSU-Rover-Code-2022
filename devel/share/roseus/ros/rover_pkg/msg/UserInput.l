;; Auto-generated. Do not edit!


(when (boundp 'rover_pkg::UserInput)
  (if (not (find-package "ROVER_PKG"))
    (make-package "ROVER_PKG"))
  (shadow 'UserInput (find-package "ROVER_PKG")))
(unless (find-package "ROVER_PKG::USERINPUT")
  (make-package "ROVER_PKG::USERINPUT"))

(in-package "ROS")
;;//! \htmlinclude UserInput.msg.html


(defclass rover_pkg::UserInput
  :super ros::object
  :slots (_controlMode _keysPressed _ljx _ljy _rjx _rjy _but1 _but2 _but3 ))

(defmethod rover_pkg::UserInput
  (:init
   (&key
    ((:controlMode __controlMode) "")
    ((:keysPressed __keysPressed) "")
    ((:ljx __ljx) 0.0)
    ((:ljy __ljy) 0.0)
    ((:rjx __rjx) 0.0)
    ((:rjy __rjy) 0.0)
    ((:but1 __but1) nil)
    ((:but2 __but2) nil)
    ((:but3 __but3) nil)
    )
   (send-super :init)
   (setq _controlMode (string __controlMode))
   (setq _keysPressed (string __keysPressed))
   (setq _ljx (float __ljx))
   (setq _ljy (float __ljy))
   (setq _rjx (float __rjx))
   (setq _rjy (float __rjy))
   (setq _but1 __but1)
   (setq _but2 __but2)
   (setq _but3 __but3)
   self)
  (:controlMode
   (&optional __controlMode)
   (if __controlMode (setq _controlMode __controlMode)) _controlMode)
  (:keysPressed
   (&optional __keysPressed)
   (if __keysPressed (setq _keysPressed __keysPressed)) _keysPressed)
  (:ljx
   (&optional __ljx)
   (if __ljx (setq _ljx __ljx)) _ljx)
  (:ljy
   (&optional __ljy)
   (if __ljy (setq _ljy __ljy)) _ljy)
  (:rjx
   (&optional __rjx)
   (if __rjx (setq _rjx __rjx)) _rjx)
  (:rjy
   (&optional __rjy)
   (if __rjy (setq _rjy __rjy)) _rjy)
  (:but1
   (&optional __but1)
   (if __but1 (setq _but1 __but1)) _but1)
  (:but2
   (&optional __but2)
   (if __but2 (setq _but2 __but2)) _but2)
  (:but3
   (&optional __but3)
   (if __but3 (setq _but3 __but3)) _but3)
  (:serialization-length
   ()
   (+
    ;; string _controlMode
    4 (length _controlMode)
    ;; string _keysPressed
    4 (length _keysPressed)
    ;; float32 _ljx
    4
    ;; float32 _ljy
    4
    ;; float32 _rjx
    4
    ;; float32 _rjy
    4
    ;; bool _but1
    1
    ;; bool _but2
    1
    ;; bool _but3
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _controlMode
       (write-long (length _controlMode) s) (princ _controlMode s)
     ;; string _keysPressed
       (write-long (length _keysPressed) s) (princ _keysPressed s)
     ;; float32 _ljx
       (sys::poke _ljx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ljy
       (sys::poke _ljy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rjx
       (sys::poke _rjx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rjy
       (sys::poke _rjy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _but1
       (if _but1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _but2
       (if _but2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _but3
       (if _but3 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _controlMode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controlMode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _keysPressed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _keysPressed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _ljx
     (setq _ljx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ljy
     (setq _ljy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rjx
     (setq _rjx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rjy
     (setq _rjy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _but1
     (setq _but1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _but2
     (setq _but2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _but3
     (setq _but3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rover_pkg::UserInput :md5sum-) "66775f4abc092869a360f7947e03c1bb")
(setf (get rover_pkg::UserInput :datatype-) "rover_pkg/UserInput")
(setf (get rover_pkg::UserInput :definition-)
      "string controlMode
string keysPressed
float32 ljx
float32 ljy
float32 rjx
float32 rjy
bool but1
bool but2
bool but3

")



(provide :rover_pkg/UserInput "66775f4abc092869a360f7947e03c1bb")


