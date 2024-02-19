;; Auto-generated. Do not edit!


(when (boundp 'dh_gripper_msgs::GripperState)
  (if (not (find-package "DH_GRIPPER_MSGS"))
    (make-package "DH_GRIPPER_MSGS"))
  (shadow 'GripperState (find-package "DH_GRIPPER_MSGS")))
(unless (find-package "DH_GRIPPER_MSGS::GRIPPERSTATE")
  (make-package "DH_GRIPPER_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dh_gripper_msgs::GripperState
  :super ros::object
  :slots (_header _is_initialized _grip_state _position _target_position _target_force ))

(defmethod dh_gripper_msgs::GripperState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_initialized __is_initialized) nil)
    ((:grip_state __grip_state) 0)
    ((:position __position) 0.0)
    ((:target_position __target_position) 0.0)
    ((:target_force __target_force) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_initialized __is_initialized)
   (setq _grip_state (round __grip_state))
   (setq _position (float __position))
   (setq _target_position (float __target_position))
   (setq _target_force (float __target_force))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_initialized
   (&optional (__is_initialized :null))
   (if (not (eq __is_initialized :null)) (setq _is_initialized __is_initialized)) _is_initialized)
  (:grip_state
   (&optional __grip_state)
   (if __grip_state (setq _grip_state __grip_state)) _grip_state)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:target_position
   (&optional __target_position)
   (if __target_position (setq _target_position __target_position)) _target_position)
  (:target_force
   (&optional __target_force)
   (if __target_force (setq _target_force __target_force)) _target_force)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_initialized
    1
    ;; int32 _grip_state
    4
    ;; float32 _position
    4
    ;; float32 _target_position
    4
    ;; float32 _target_force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_initialized
       (if _is_initialized (write-byte -1 s) (write-byte 0 s))
     ;; int32 _grip_state
       (write-long _grip_state s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position
       (sys::poke _target_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_force
       (sys::poke _target_force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_initialized
     (setq _is_initialized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _grip_state
     (setq _grip_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position
     (setq _target_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_force
     (setq _target_force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dh_gripper_msgs::GripperState :md5sum-) "1390c2ae2fb82f820aa81dc4a377cf36")
(setf (get dh_gripper_msgs::GripperState :datatype-) "dh_gripper_msgs/GripperState")
(setf (get dh_gripper_msgs::GripperState :definition-)
      "Header header
bool is_initialized
int32 grip_state
float32 position
float32 target_position
float32 target_force

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :dh_gripper_msgs/GripperState "1390c2ae2fb82f820aa81dc4a377cf36")


