; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude RockerBogieData.msg.html

(cl:defclass <RockerBogieData> (roslisp-msg-protocol:ros-message)
  ((rb_fr
    :reader rb_fr
    :initarg :rb_fr
    :type cl:float
    :initform 0.0)
   (rb_mr
    :reader rb_mr
    :initarg :rb_mr
    :type cl:float
    :initform 0.0)
   (rb_rr
    :reader rb_rr
    :initarg :rb_rr
    :type cl:float
    :initform 0.0)
   (rb_fl
    :reader rb_fl
    :initarg :rb_fl
    :type cl:float
    :initform 0.0)
   (rb_ml
    :reader rb_ml
    :initarg :rb_ml
    :type cl:float
    :initform 0.0)
   (rb_rl
    :reader rb_rl
    :initarg :rb_rl
    :type cl:float
    :initform 0.0))
)

(cl:defclass RockerBogieData (<RockerBogieData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RockerBogieData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RockerBogieData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<RockerBogieData> is deprecated: use rover_pkg-msg:RockerBogieData instead.")))

(cl:ensure-generic-function 'rb_fr-val :lambda-list '(m))
(cl:defmethod rb_fr-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_fr-val is deprecated.  Use rover_pkg-msg:rb_fr instead.")
  (rb_fr m))

(cl:ensure-generic-function 'rb_mr-val :lambda-list '(m))
(cl:defmethod rb_mr-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_mr-val is deprecated.  Use rover_pkg-msg:rb_mr instead.")
  (rb_mr m))

(cl:ensure-generic-function 'rb_rr-val :lambda-list '(m))
(cl:defmethod rb_rr-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_rr-val is deprecated.  Use rover_pkg-msg:rb_rr instead.")
  (rb_rr m))

(cl:ensure-generic-function 'rb_fl-val :lambda-list '(m))
(cl:defmethod rb_fl-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_fl-val is deprecated.  Use rover_pkg-msg:rb_fl instead.")
  (rb_fl m))

(cl:ensure-generic-function 'rb_ml-val :lambda-list '(m))
(cl:defmethod rb_ml-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_ml-val is deprecated.  Use rover_pkg-msg:rb_ml instead.")
  (rb_ml m))

(cl:ensure-generic-function 'rb_rl-val :lambda-list '(m))
(cl:defmethod rb_rl-val ((m <RockerBogieData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_rl-val is deprecated.  Use rover_pkg-msg:rb_rl instead.")
  (rb_rl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RockerBogieData>) ostream)
  "Serializes a message object of type '<RockerBogieData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_mr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_rr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_ml))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rb_rl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RockerBogieData>) istream)
  "Deserializes a message object of type '<RockerBogieData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_fr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_mr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_rr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_fl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_ml) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rb_rl) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RockerBogieData>)))
  "Returns string type for a message object of type '<RockerBogieData>"
  "rover_pkg/RockerBogieData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RockerBogieData)))
  "Returns string type for a message object of type 'RockerBogieData"
  "rover_pkg/RockerBogieData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RockerBogieData>)))
  "Returns md5sum for a message object of type '<RockerBogieData>"
  "9fabc40ef174095f6a972da72d98b480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RockerBogieData)))
  "Returns md5sum for a message object of type 'RockerBogieData"
  "9fabc40ef174095f6a972da72d98b480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RockerBogieData>)))
  "Returns full string definition for message of type '<RockerBogieData>"
  (cl:format cl:nil "float32 rb_fr~%float32 rb_mr~%float32 rb_rr~%float32 rb_fl~%float32 rb_ml~%float32 rb_rl~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RockerBogieData)))
  "Returns full string definition for message of type 'RockerBogieData"
  (cl:format cl:nil "float32 rb_fr~%float32 rb_mr~%float32 rb_rr~%float32 rb_fl~%float32 rb_ml~%float32 rb_rl~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RockerBogieData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RockerBogieData>))
  "Converts a ROS message object to a list"
  (cl:list 'RockerBogieData
    (cl:cons ':rb_fr (rb_fr msg))
    (cl:cons ':rb_mr (rb_mr msg))
    (cl:cons ':rb_rr (rb_rr msg))
    (cl:cons ':rb_fl (rb_fl msg))
    (cl:cons ':rb_ml (rb_ml msg))
    (cl:cons ':rb_rl (rb_rl msg))
))
