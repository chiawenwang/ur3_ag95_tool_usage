; Auto-generated. Do not edit!


(cl:in-package dh_gripper_msgs-msg)


;//! \htmlinclude GripperState.msg.html

(cl:defclass <GripperState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_initialized
    :reader is_initialized
    :initarg :is_initialized
    :type cl:boolean
    :initform cl:nil)
   (grip_state
    :reader grip_state
    :initarg :grip_state
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (target_position
    :reader target_position
    :initarg :target_position
    :type cl:float
    :initform 0.0)
   (target_force
    :reader target_force
    :initarg :target_force
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperState (<GripperState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dh_gripper_msgs-msg:<GripperState> is deprecated: use dh_gripper_msgs-msg:GripperState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:header-val is deprecated.  Use dh_gripper_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_initialized-val :lambda-list '(m))
(cl:defmethod is_initialized-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:is_initialized-val is deprecated.  Use dh_gripper_msgs-msg:is_initialized instead.")
  (is_initialized m))

(cl:ensure-generic-function 'grip_state-val :lambda-list '(m))
(cl:defmethod grip_state-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:grip_state-val is deprecated.  Use dh_gripper_msgs-msg:grip_state instead.")
  (grip_state m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:position-val is deprecated.  Use dh_gripper_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:target_position-val is deprecated.  Use dh_gripper_msgs-msg:target_position instead.")
  (target_position m))

(cl:ensure-generic-function 'target_force-val :lambda-list '(m))
(cl:defmethod target_force-val ((m <GripperState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:target_force-val is deprecated.  Use dh_gripper_msgs-msg:target_force instead.")
  (target_force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperState>) ostream)
  "Serializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_initialized) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'grip_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperState>) istream)
  "Deserializes a message object of type '<GripperState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_initialized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grip_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperState>)))
  "Returns string type for a message object of type '<GripperState>"
  "dh_gripper_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperState)))
  "Returns string type for a message object of type 'GripperState"
  "dh_gripper_msgs/GripperState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperState>)))
  "Returns md5sum for a message object of type '<GripperState>"
  "1390c2ae2fb82f820aa81dc4a377cf36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperState)))
  "Returns md5sum for a message object of type 'GripperState"
  "1390c2ae2fb82f820aa81dc4a377cf36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperState>)))
  "Returns full string definition for message of type '<GripperState>"
  (cl:format cl:nil "Header header~%bool is_initialized~%int32 grip_state~%float32 position~%float32 target_position~%float32 target_force~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperState)))
  "Returns full string definition for message of type 'GripperState"
  (cl:format cl:nil "Header header~%bool is_initialized~%int32 grip_state~%float32 position~%float32 target_position~%float32 target_force~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperState>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperState
    (cl:cons ':header (header msg))
    (cl:cons ':is_initialized (is_initialized msg))
    (cl:cons ':grip_state (grip_state msg))
    (cl:cons ':position (position msg))
    (cl:cons ':target_position (target_position msg))
    (cl:cons ':target_force (target_force msg))
))
