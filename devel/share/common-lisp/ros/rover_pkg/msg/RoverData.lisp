; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude RoverData.msg.html

(cl:defclass <RoverData> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (arm_zm
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

(cl:defclass RoverData (<RoverData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoverData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoverData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<RoverData> is deprecated: use rover_pkg-msg:RoverData instead.")))

(cl:ensure-generic-function 'rb_fr-val :lambda-list '(m))
(cl:defmethod rb_fr-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_fr-val is deprecated.  Use rover_pkg-msg:rb_fr instead.")
  (rb_fr m))

(cl:ensure-generic-function 'rb_mr-val :lambda-list '(m))
(cl:defmethod rb_mr-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_mr-val is deprecated.  Use rover_pkg-msg:rb_mr instead.")
  (rb_mr m))

(cl:ensure-generic-function 'rb_rr-val :lambda-list '(m))
(cl:defmethod rb_rr-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_rr-val is deprecated.  Use rover_pkg-msg:rb_rr instead.")
  (rb_rr m))

(cl:ensure-generic-function 'rb_fl-val :lambda-list '(m))
(cl:defmethod rb_fl-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_fl-val is deprecated.  Use rover_pkg-msg:rb_fl instead.")
  (rb_fl m))

(cl:ensure-generic-function 'rb_ml-val :lambda-list '(m))
(cl:defmethod rb_ml-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_ml-val is deprecated.  Use rover_pkg-msg:rb_ml instead.")
  (rb_ml m))

(cl:ensure-generic-function 'rb_rl-val :lambda-list '(m))
(cl:defmethod rb_rl-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:rb_rl-val is deprecated.  Use rover_pkg-msg:rb_rl instead.")
  (rb_rl m))

(cl:ensure-generic-function 'arm_zm-val :lambda-list '(m))
(cl:defmethod arm_zm-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_zm-val is deprecated.  Use rover_pkg-msg:arm_zm instead.")
  (arm_zm m))

(cl:ensure-generic-function 'arm_bm-val :lambda-list '(m))
(cl:defmethod arm_bm-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_bm-val is deprecated.  Use rover_pkg-msg:arm_bm instead.")
  (arm_bm m))

(cl:ensure-generic-function 'arm_am-val :lambda-list '(m))
(cl:defmethod arm_am-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_am-val is deprecated.  Use rover_pkg-msg:arm_am instead.")
  (arm_am m))

(cl:ensure-generic-function 'arm_wr-val :lambda-list '(m))
(cl:defmethod arm_wr-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:arm_wr-val is deprecated.  Use rover_pkg-msg:arm_wr instead.")
  (arm_wr m))

(cl:ensure-generic-function 'awm_wp-val :lambda-list '(m))
(cl:defmethod awm_wp-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:awm_wp-val is deprecated.  Use rover_pkg-msg:awm_wp instead.")
  (awm_wp m))

(cl:ensure-generic-function 'qdcl-val :lambda-list '(m))
(cl:defmethod qdcl-val ((m <RoverData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_pkg-msg:qdcl-val is deprecated.  Use rover_pkg-msg:qdcl instead.")
  (qdcl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoverData>) ostream)
  "Serializes a message object of type '<RoverData>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoverData>) istream)
  "Deserializes a message object of type '<RoverData>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoverData>)))
  "Returns string type for a message object of type '<RoverData>"
  "rover_pkg/RoverData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoverData)))
  "Returns string type for a message object of type 'RoverData"
  "rover_pkg/RoverData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoverData>)))
  "Returns md5sum for a message object of type '<RoverData>"
  "736b6a6f87def00a2326ecbc6c3788ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoverData)))
  "Returns md5sum for a message object of type 'RoverData"
  "736b6a6f87def00a2326ecbc6c3788ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoverData>)))
  "Returns full string definition for message of type '<RoverData>"
  (cl:format cl:nil "float32 rb_fr~%float32 rb_mr~%float32 rb_rr~%float32 rb_fl~%float32 rb_ml~%float32 rb_rl~%~%float32 arm_zm~%float32 arm_bm~%float32 arm_am~%float32 arm_wr~%float32 awm_wp~%bool qdcl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoverData)))
  "Returns full string definition for message of type 'RoverData"
  (cl:format cl:nil "float32 rb_fr~%float32 rb_mr~%float32 rb_rr~%float32 rb_fl~%float32 rb_ml~%float32 rb_rl~%~%float32 arm_zm~%float32 arm_bm~%float32 arm_am~%float32 arm_wr~%float32 awm_wp~%bool qdcl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoverData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoverData>))
  "Converts a ROS message object to a list"
  (cl:list 'RoverData
    (cl:cons ':rb_fr (rb_fr msg))
    (cl:cons ':rb_mr (rb_mr msg))
    (cl:cons ':rb_rr (rb_rr msg))
    (cl:cons ':rb_fl (rb_fl msg))
    (cl:cons ':rb_ml (rb_ml msg))
    (cl:cons ':rb_rl (rb_rl msg))
    (cl:cons ':arm_zm (arm_zm msg))
    (cl:cons ':arm_bm (arm_bm msg))
    (cl:cons ':arm_am (arm_am msg))
    (cl:cons ':arm_wr (arm_wr msg))
    (cl:cons ':awm_wp (awm_wp msg))
    (cl:cons ':qdcl (qdcl msg))
))
