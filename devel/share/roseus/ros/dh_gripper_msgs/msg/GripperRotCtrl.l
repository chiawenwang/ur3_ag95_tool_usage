;; Auto-generated. Do not edit!


(when (boundp 'dh_gripper_msgs::GripperRotCtrl)
  (if (not (find-package "DH_GRIPPER_MSGS"))
    (make-package "DH_GRIPPER_MSGS"))
  (shadow 'GripperRotCtrl (find-package "DH_GRIPPER_MSGS")))
(unless (find-package "DH_GRIPPER_MSGS::GRIPPERROTCTRL")
  (make-package "DH_GRIPPER_MSGS::GRIPPERROTCTRL"))

(in-package "ROS")
;;//! \htmlinclude GripperRotCtrl.msg.html


(defclass dh_gripper_msgs::GripperRotCtrl
  :super ros::object
  :slots (_angle _force _speed ))

(defmethod dh_gripper_msgs::GripperRotCtrl
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:force __force) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _force (float __force))
   (setq _speed (float __speed))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _force
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dh_gripper_msgs::GripperRotCtrl :md5sum-) "a77492f68f8cfc74c6aa20ed8861b625")
(setf (get dh_gripper_msgs::GripperRotCtrl :datatype-) "dh_gripper_msgs/GripperRotCtrl")
(setf (get dh_gripper_msgs::GripperRotCtrl :definition-)
      "float32 angle
float32 force
float32 speed

")



(provide :dh_gripper_msgs/GripperRotCtrl "a77492f68f8cfc74c6aa20ed8861b625")


