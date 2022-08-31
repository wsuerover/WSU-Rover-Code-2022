; Auto-generated. Do not edit!


(cl:in-package rover_pkg-msg)


;//! \htmlinclude ScienceData.msg.html

(cl:defclass <ScienceData> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ScienceData (<ScienceData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScienceData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScienceData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_pkg-msg:<ScienceData> is deprecated: use rover_pkg-msg:ScienceData instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScienceData>) ostream)
  "Serializes a message object of type '<ScienceData>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScienceData>) istream)
  "Deserializes a message object of type '<ScienceData>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScienceData>)))
  "Returns string type for a message object of type '<ScienceData>"
  "rover_pkg/ScienceData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScienceData)))
  "Returns string type for a message object of type 'ScienceData"
  "rover_pkg/ScienceData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScienceData>)))
  "Returns md5sum for a message object of type '<ScienceData>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScienceData)))
  "Returns md5sum for a message object of type 'ScienceData"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScienceData>)))
  "Returns full string definition for message of type '<ScienceData>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScienceData)))
  "Returns full string definition for message of type 'ScienceData"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScienceData>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScienceData>))
  "Converts a ROS message object to a list"
  (cl:list 'ScienceData
))
