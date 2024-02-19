; Auto-generated. Do not edit!


(cl:in-package dh_gripper_msgs-msg)


;//! \htmlinclude GripperRotState.msg.html

(cl:defclass <GripperRotState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rot_state
    :reader rot_state
    :initarg :rot_state
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (target_angle
    :reader target_angle
    :initarg :target_angle
    :type cl:float
    :initform 0.0)
   (target_force
    :reader target_force
    :initarg :target_force
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperRotState (<GripperRotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperRotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperRotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dh_gripper_msgs-msg:<GripperRotState> is deprecated: use dh_gripper_msgs-msg:GripperRotState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GripperRotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:header-val is deprecated.  Use dh_gripper_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rot_state-val :lambda-list '(m))
(cl:defmethod rot_state-val ((m <GripperRotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:rot_state-val is deprecated.  Use dh_gripper_msgs-msg:rot_state instead.")
  (rot_state m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GripperRotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:angle-val is deprecated.  Use dh_gripper_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'target_angle-val :lambda-list '(m))
(cl:defmethod target_angle-val ((m <GripperRotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:target_angle-val is deprecated.  Use dh_gripper_msgs-msg:target_angle instead.")
  (target_angle m))

(cl:ensure-generic-function 'target_force-val :lambda-list '(m))
(cl:defmethod target_force-val ((m <GripperRotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:target_force-val is deprecated.  Use dh_gripper_msgs-msg:target_force instead.")
  (target_force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperRotState>) ostream)
  "Serializes a message object of type '<GripperRotState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rot_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperRotState>) istream)
  "Deserializes a message object of type '<GripperRotState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rot_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperRotState>)))
  "Returns string type for a message object of type '<GripperRotState>"
  "dh_gripper_msgs/GripperRotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperRotState)))
  "Returns string type for a message object of type 'GripperRotState"
  "dh_gripper_msgs/GripperRotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperRotState>)))
  "Returns md5sum for a message object of type '<GripperRotState>"
  "ea8c02af740cd29d571c990824f2a925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperRotState)))
  "Returns md5sum for a message object of type 'GripperRotState"
  "ea8c02af740cd29d571c990824f2a925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperRotState>)))
  "Returns full string definition for message of type '<GripperRotState>"
  (cl:format cl:nil "Header header~%int32   rot_state~%float32 angle~%float32 target_angle~%float32 target_force~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperRotState)))
  "Returns full string definition for message of type 'GripperRotState"
  (cl:format cl:nil "Header header~%int32   rot_state~%float32 angle~%float32 target_angle~%float32 target_force~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperRotState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperRotState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperRotState
    (cl:cons ':header (header msg))
    (cl:cons ':rot_state (rot_state msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':target_angle (target_angle msg))
    (cl:cons ':target_force (target_force msg))
))
