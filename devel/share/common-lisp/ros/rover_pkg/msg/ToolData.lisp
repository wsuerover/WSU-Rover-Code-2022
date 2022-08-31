; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude ToolData.msg.html

(cl:defclass <ToolData> (roslisp-msg-protocol:ros-message)
  ((QDC_SIG1
    :reader QDC_SIG1
    :initarg :QDC_SIG1
    :type cl:fixnum
    :initform 0)
   (QDC_SIG2
    :reader QDC_SIG2
    :initarg :QDC_SIG2
    :type cl:fixnum
    :initform 0)
   (QDC_SIG3
    :reader QDC_SIG3
    :initarg :QDC_SIG3
    :type cl:fixnum
    :initform 0)
   (QDC_SIG4
    :reader QDC_SIG4
    :initarg :QDC_SIG4
    :type cl:fixnum
    :initform 0)
   (QDC_SIG5
    :reader QDC_SIG5
    :initarg :QDC_SIG5
    :type cl:fixnum
    :initform 0)
   (QDC_SIG6
    :reader QDC_SIG6
    :initarg :QDC_SIG6
    :type cl:fixnum
    :initform 0)
   (QDC_SIG7
    :reader QDC_SIG7
    :initarg :QDC_SIG7
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ToolData (<ToolData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ToolData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ToolData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<ToolData> is deprecated: use rover_pkg-msg:ToolData instead.")))

(cl:ensure-generic-function 'QDC_SIG1-val :lambda-list '(m))
(cl:defmethod QDC_SIG1-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG1-val is deprecated.  Use rover_pkg-msg:QDC_SIG1 instead.")
  (QDC_SIG1 m))

(cl:ensure-generic-function 'QDC_SIG2-val :lambda-list '(m))
(cl:defmethod QDC_SIG2-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG2-val is deprecated.  Use rover_pkg-msg:QDC_SIG2 instead.")
  (QDC_SIG2 m))

(cl:ensure-generic-function 'QDC_SIG3-val :lambda-list '(m))
(cl:defmethod QDC_SIG3-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG3-val is deprecated.  Use rover_pkg-msg:QDC_SIG3 instead.")
  (QDC_SIG3 m))

(cl:ensure-generic-function 'QDC_SIG4-val :lambda-list '(m))
(cl:defmethod QDC_SIG4-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG4-val is deprecated.  Use rover_pkg-msg:QDC_SIG4 instead.")
  (QDC_SIG4 m))

(cl:ensure-generic-function 'QDC_SIG5-val :lambda-list '(m))
(cl:defmethod QDC_SIG5-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG5-val is deprecated.  Use rover_pkg-msg:QDC_SIG5 instead.")
  (QDC_SIG5 m))

(cl:ensure-generic-function 'QDC_SIG6-val :lambda-list '(m))
(cl:defmethod QDC_SIG6-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG6-val is deprecated.  Use rover_pkg-msg:QDC_SIG6 instead.")
  (QDC_SIG6 m))

(cl:ensure-generic-function 'QDC_SIG7-val :lambda-list '(m))
(cl:defmethod QDC_SIG7-val ((m <ToolData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:QDC_SIG7-val is deprecated.  Use rover_pkg-msg:QDC_SIG7 instead.")
  (QDC_SIG7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ToolData>) ostream)
  "Serializes a message object of type '<ToolData>"
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'QDC_SIG7)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ToolData>) istream)
  "Deserializes a message object of type '<ToolData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG5) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG6) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QDC_SIG7) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ToolData>)))
  "Returns string type for a message object of type '<ToolData>"
  "rover_pkg/ToolData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ToolData)))
  "Returns string type for a message object of type 'ToolData"
  "rover_pkg/ToolData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ToolData>)))
  "Returns md5sum for a message object of type '<ToolData>"
  "37110460499bfee4e7ed1a257662b8e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ToolData)))
  "Returns md5sum for a message object of type 'ToolData"
  "37110460499bfee4e7ed1a257662b8e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ToolData>)))
  "Returns full string definition for message of type '<ToolData>"
  (cl:format cl:nil "int16 QDC_SIG1~%int16 QDC_SIG2~%int16 QDC_SIG3~%int16 QDC_SIG4~%int16 QDC_SIG5~%int16 QDC_SIG6~%int16 QDC_SIG7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ToolData)))
  "Returns full string definition for message of type 'ToolData"
  (cl:format cl:nil "int16 QDC_SIG1~%int16 QDC_SIG2~%int16 QDC_SIG3~%int16 QDC_SIG4~%int16 QDC_SIG5~%int16 QDC_SIG6~%int16 QDC_SIG7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ToolData>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ToolData>))
  "Converts a ROS message object to a list"
  (cl:list 'ToolData
    (cl:cons ':QDC_SIG1 (QDC_SIG1 msg))
    (cl:cons ':QDC_SIG2 (QDC_SIG2 msg))
    (cl:cons ':QDC_SIG3 (QDC_SIG3 msg))
    (cl:cons ':QDC_SIG4 (QDC_SIG4 msg))
    (cl:cons ':QDC_SIG5 (QDC_SIG5 msg))
    (cl:cons ':QDC_SIG6 (QDC_SIG6 msg))
    (cl:cons ':QDC_SIG7 (QDC_SIG7 msg))
))
