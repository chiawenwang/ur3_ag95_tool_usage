;; Auto-generated. Do not edit!


(when (boundp 'dh_gripper_msgs::GripperCtrl)
  (if (not (find-package "DH_GRIPPER_MSGS"))
    (make-package "DH_GRIPPER_MSGS"))
  (shadow 'GripperCtrl (find-package "DH_GRIPPER_MSGS")))
(unless (find-package "DH_GRIPPER_MSGS::GRIPPERCTRL")
  (make-package "DH_GRIPPER_MSGS::GRIPPERCTRL"))

(in-package "ROS")
;;//! \htmlinclude GripperCtrl.msg.html


(defclass dh_gripper_msgs::GripperCtrl
  :super ros::object
  :slots (_initialize _position _force _speed ))

(defmethod dh_gripper_msgs::GripperCtrl
  (:init
   (&key
    ((:initialize __initialize) nil)
    ((:position __position) 0.0)
    ((:force __force) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _initialize __initialize)
   (setq _position (float __position))
   (setq _force (float __force))
   (setq _speed (float __speed))
   self)
  (:initialize
   (&optional (__initialize :null))
   (if (not (eq __initialize :null)) (setq _initialize __initialize)) _initialize)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; bool _initialize
    1
    ;; float32 _position
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
     ;; bool _initialize
       (if _initialize (write-byte -1 s) (write-byte 0 s))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _initialize
     (setq _initialize (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dh_gripper_msgs::GripperCtrl :md5sum-) "9dac35721dba07cb7d14035fd6884134")
(setf (get dh_gripper_msgs::GripperCtrl :datatype-) "dh_gripper_msgs/GripperCtrl")
(setf (get dh_gripper_msgs::GripperCtrl :definition-)
      "bool initialize
float32 position
float32 force
float32 speed


")



(provide :dh_gripper_msgs/GripperCtrl "9dac35721dba07cb7d14035fd6884134")


