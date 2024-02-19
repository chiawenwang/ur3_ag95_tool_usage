;; Auto-generated. Do not edit!


(when (boundp 'dh_gripper_msgs::GripperRotState)
  (if (not (find-package "DH_GRIPPER_MSGS"))
    (make-package "DH_GRIPPER_MSGS"))
  (shadow 'GripperRotState (find-package "DH_GRIPPER_MSGS")))
(unless (find-package "DH_GRIPPER_MSGS::GRIPPERROTSTATE")
  (make-package "DH_GRIPPER_MSGS::GRIPPERROTSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperRotState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dh_gripper_msgs::GripperRotState
  :super ros::object
  :slots (_header _rot_state _angle _target_angle _target_force ))

(defmethod dh_gripper_msgs::GripperRotState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rot_state __rot_state) 0)
    ((:angle __angle) 0.0)
    ((:target_angle __target_angle) 0.0)
    ((:target_force __target_force) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rot_state (round __rot_state))
   (setq _angle (float __angle))
   (setq _target_angle (float __target_angle))
   (setq _target_force (float __target_force))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rot_state
   (&optional __rot_state)
   (if __rot_state (setq _rot_state __rot_state)) _rot_state)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:target_angle
   (&optional __target_angle)
   (if __target_angle (setq _target_angle __target_angle)) _target_angle)
  (:target_force
   (&optional __target_force)
   (if __target_force (setq _target_force __target_force)) _target_force)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rot_state
    4
    ;; float32 _angle
    4
    ;; float32 _target_angle
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
     ;; int32 _rot_state
       (write-long _rot_state s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_angle
       (sys::poke _target_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_force
       (sys::poke _target_force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rot_state
     (setq _rot_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_angle
     (setq _target_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_force
     (setq _target_force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dh_gripper_msgs::GripperRotState :md5sum-) "ea8c02af740cd29d571c990824f2a925")
(setf (get dh_gripper_msgs::GripperRotState :datatype-) "dh_gripper_msgs/GripperRotState")
(setf (get dh_gripper_msgs::GripperRotState :definition-)
      "Header header
int32   rot_state
float32 angle
float32 target_angle
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



(provide :dh_gripper_msgs/GripperRotState "ea8c02af740cd29d571c990824f2a925")


