; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude ArmData.msg.html

(cl:defclass <ArmData> (roslisp-msg-protocol:ros-message)
  ((arm_zm
    :reader arm_zm
    :initarg :arm_zm
    :type cl:float
    :initform 0.0)
   (arm_bm
    :reader arm_bm
    :initarg :arm_bm
    :type cl:float
    :initform 0.0)
   (arm_am
    :reader arm_am
    :initarg :arm_am
    :type cl:float
    :initform 0.0)
   (arm_wr
    :reader arm_wr
    :initarg :arm_wr
    :type cl:float
    :initform 0.0)
   (awm_wp
    :reader awm_wp
    :initarg :awm_wp
    :type cl:float
    :initform 0.0)
   (qdcl
    :reader qdcl
    :initarg :qdcl
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmData (<ArmData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<ArmData> is deprecated: use rover_pkg-msg:ArmData instead.")))

(cl:ensure-generic-function 'arm_zm-val :lambda-list '(m))
(cl:defmethod arm_zm-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_zm-val is deprecated.  Use rover_pkg-msg:arm_zm instead.")
  (arm_zm m))

(cl:ensure-generic-function 'arm_bm-val :lambda-list '(m))
(cl:defmethod arm_bm-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_bm-val is deprecated.  Use rover_pkg-msg:arm_bm instead.")
  (arm_bm m))

(cl:ensure-generic-function 'arm_am-val :lambda-list '(m))
(cl:defmethod arm_am-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_am-val is deprecated.  Use rover_pkg-msg:arm_am instead.")
  (arm_am m))

(cl:ensure-generic-function 'arm_wr-val :lambda-list '(m))
(cl:defmethod arm_wr-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_wr-val is deprecated.  Use rover_pkg-msg:arm_wr instead.")
  (arm_wr m))

(cl:ensure-generic-function 'awm_wp-val :lambda-list '(m))
(cl:defmethod awm_wp-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:awm_wp-val is deprecated.  Use rover_pkg-msg:awm_wp instead.")
  (awm_wp m))

(cl:ensure-generic-function 'qdcl-val :lambda-list '(m))
(cl:defmethod qdcl-val ((m <ArmData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:qdcl-val is deprecated.  Use rover_pkg-msg:qdcl instead.")
  (qdcl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmData>) ostream)
  "Serializes a message object of type '<ArmData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_zm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_bm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_am))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arm_wr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'awm_wp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'qdcl) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmData>) istream)
  "Deserializes a message object of type '<ArmData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_zm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_bm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_am) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_wr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'awm_wp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'qdcl) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmData>)))
  "Returns string type for a message object of type '<ArmData>"
  "rover_pkg/ArmData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmData)))
  "Returns string type for a message object of type 'ArmData"
  "rover_pkg/ArmData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmData>)))
  "Returns md5sum for a message object of type '<ArmData>"
  "7179ed0dcb5c273219b9474db52af818")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmData)))
  "Returns md5sum for a message object of type 'ArmData"
  "7179ed0dcb5c273219b9474db52af818")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmData>)))
  "Returns full string definition for message of type '<ArmData>"
  (cl:format cl:nil "float32 arm_zm~%float32 arm_bm~%float32 arm_am~%float32 arm_wr~%float32 awm_wp~%bool qdcl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmData)))
  "Returns full string definition for message of type 'ArmData"
  (cl:format cl:nil "float32 arm_zm~%float32 arm_bm~%float32 arm_am~%float32 arm_wr~%float32 awm_wp~%bool qdcl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmData>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmData
    (cl:cons ':arm_zm (arm_zm msg))
    (cl:cons ':arm_bm (arm_bm msg))
    (cl:cons ':arm_am (arm_am msg))
    (cl:cons ':arm_wr (arm_wr msg))
    (cl:cons ':awm_wp (awm_wp msg))
    (cl:cons ':qdcl (qdcl msg))
))
