; Auto-generated. Do not edit!


(cl:in-package dh_gripper_msgs-msg)


;//! \htmlinclude GripperRotCtrl.msg.html

(cl:defclass <GripperRotCtrl> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperRotCtrl (<GripperRotCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperRotCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperRotCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dh_gripper_msgs-msg:<GripperRotCtrl> is deprecated: use dh_gripper_msgs-msg:GripperRotCtrl instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <GripperRotCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:angle-val is deprecated.  Use dh_gripper_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperRotCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:force-val is deprecated.  Use dh_gripper_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GripperRotCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:speed-val is deprecated.  Use dh_gripper_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperRotCtrl>) ostream)
  "Serializes a message object of type '<GripperRotCtrl>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperRotCtrl>) istream)
  "Deserializes a message object of type '<GripperRotCtrl>"
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
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperRotCtrl>)))
  "Returns string type for a message object of type '<GripperRotCtrl>"
  "dh_gripper_msgs/GripperRotCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperRotCtrl)))
  "Returns string type for a message object of type 'GripperRotCtrl"
  "dh_gripper_msgs/GripperRotCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperRotCtrl>)))
  "Returns md5sum for a message object of type '<GripperRotCtrl>"
  "a77492f68f8cfc74c6aa20ed8861b625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperRotCtrl)))
  "Returns md5sum for a message object of type 'GripperRotCtrl"
  "a77492f68f8cfc74c6aa20ed8861b625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperRotCtrl>)))
  "Returns full string definition for message of type '<GripperRotCtrl>"
  (cl:format cl:nil "float32 angle~%float32 force~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperRotCtrl)))
  "Returns full string definition for message of type 'GripperRotCtrl"
  (cl:format cl:nil "float32 angle~%float32 force~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperRotCtrl>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperRotCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperRotCtrl
    (cl:cons ':angle (angle msg))
    (cl:cons ':force (force msg))
    (cl:cons ':speed (speed msg))
))
