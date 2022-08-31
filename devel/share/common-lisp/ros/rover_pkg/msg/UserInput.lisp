; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude UserInput.msg.html

(cl:defclass <UserInput> (roslisp-msg-protocol:ros-message)
  ((controlMode
    :reader controlMode
    :initarg :controlMode
    :type cl:string
    :initform "")
   (keysPressed
    :reader keysPressed
    :initarg :keysPressed
    :type cl:string
    :initform "")
   (ljx
    :reader ljx
    :initarg :ljx
    :type cl:float
    :initform 0.0)
   (ljy
    :reader ljy
    :initarg :ljy
    :type cl:float
    :initform 0.0)
   (rjx
    :reader rjx
    :initarg :rjx
    :type cl:float
    :initform 0.0)
   (rjy
    :reader rjy
    :initarg :rjy
    :type cl:float
    :initform 0.0)
   (but1
    :reader but1
    :initarg :but1
    :type cl:boolean
    :initform cl:nil)
   (but2
    :reader but2
    :initarg :but2
    :type cl:boolean
    :initform cl:nil)
   (but3
    :reader but3
    :initarg :but3
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UserInput (<UserInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<UserInput> is deprecated: use rover_pkg-msg:UserInput instead.")))

(cl:ensure-generic-function 'controlMode-val :lambda-list '(m))
(cl:defmethod controlMode-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:controlMode-val is deprecated.  Use rover_pkg-msg:controlMode instead.")
  (controlMode m))

(cl:ensure-generic-function 'keysPressed-val :lambda-list '(m))
(cl:defmethod keysPressed-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:keysPressed-val is deprecated.  Use rover_pkg-msg:keysPressed instead.")
  (keysPressed m))

(cl:ensure-generic-function 'ljx-val :lambda-list '(m))
(cl:defmethod ljx-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:ljx-val is deprecated.  Use rover_pkg-msg:ljx instead.")
  (ljx m))

(cl:ensure-generic-function 'ljy-val :lambda-list '(m))
(cl:defmethod ljy-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:ljy-val is deprecated.  Use rover_pkg-msg:ljy instead.")
  (ljy m))

(cl:ensure-generic-function 'rjx-val :lambda-list '(m))
(cl:defmethod rjx-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rjx-val is deprecated.  Use rover_pkg-msg:rjx instead.")
  (rjx m))

(cl:ensure-generic-function 'rjy-val :lambda-list '(m))
(cl:defmethod rjy-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rjy-val is deprecated.  Use rover_pkg-msg:rjy instead.")
  (rjy m))

(cl:ensure-generic-function 'but1-val :lambda-list '(m))
(cl:defmethod but1-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:but1-val is deprecated.  Use rover_pkg-msg:but1 instead.")
  (but1 m))

(cl:ensure-generic-function 'but2-val :lambda-list '(m))
(cl:defmethod but2-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:but2-val is deprecated.  Use rover_pkg-msg:but2 instead.")
  (but2 m))

(cl:ensure-generic-function 'but3-val :lambda-list '(m))
(cl:defmethod but3-val ((m <UserInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:but3-val is deprecated.  Use rover_pkg-msg:but3 instead.")
  (but3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserInput>) ostream)
  "Serializes a message object of type '<UserInput>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controlMode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controlMode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'keysPressed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'keysPressed))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ljx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ljy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rjx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rjy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'but1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'but2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'but3) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserInput>) istream)
  "Deserializes a message object of type '<UserInput>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controlMode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controlMode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'keysPressed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'keysPressed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ljx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ljy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rjx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rjy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'but1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'but2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'but3) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserInput>)))
  "Returns string type for a message object of type '<UserInput>"
  "rover_pkg/UserInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserInput)))
  "Returns string type for a message object of type 'UserInput"
  "rover_pkg/UserInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserInput>)))
  "Returns md5sum for a message object of type '<UserInput>"
  "66775f4abc092869a360f7947e03c1bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserInput)))
  "Returns md5sum for a message object of type 'UserInput"
  "66775f4abc092869a360f7947e03c1bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserInput>)))
  "Returns full string definition for message of type '<UserInput>"
  (cl:format cl:nil "string controlMode~%string keysPressed~%float32 ljx~%float32 ljy~%float32 rjx~%float32 rjy~%bool but1~%bool but2~%bool but3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserInput)))
  "Returns full string definition for message of type 'UserInput"
  (cl:format cl:nil "string controlMode~%string keysPressed~%float32 ljx~%float32 ljy~%float32 rjx~%float32 rjy~%bool but1~%bool but2~%bool but3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserInput>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'controlMode))
     4 (cl:length (cl:slot-value msg 'keysPressed))
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserInput>))
  "Converts a ROS message object to a list"
  (cl:list 'UserInput
    (cl:cons ':controlMode (controlMode msg))
    (cl:cons ':keysPressed (keysPressed msg))
    (cl:cons ':ljx (ljx msg))
    (cl:cons ':ljy (ljy msg))
    (cl:cons ':rjx (rjx msg))
    (cl:cons ':rjy (rjy msg))
    (cl:cons ':but1 (but1 msg))
    (cl:cons ':but2 (but2 msg))
    (cl:cons ':but3 (but3 msg))
))
