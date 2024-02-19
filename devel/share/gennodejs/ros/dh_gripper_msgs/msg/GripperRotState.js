// Auto-generated. Do not edit!

// (in-package dh_gripper_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GripperRotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rot_state = null;
      this.angle = null;
      this.target_angle = null;
      this.target_force = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rot_state')) {
        this.rot_state = initObj.rot_state
      }
      else {
        this.rot_state = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('target_angle')) {
        this.target_angle = initObj.target_angle
      }
      else {
        this.target_angle = 0.0;
      }
      if (initObj.hasOwnProperty('target_force')) {
        this.target_force = initObj.target_force
      }
      else {
        this.target_force = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperRotState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rot_state]
    bufferOffset = _serializer.int32(obj.rot_state, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [target_angle]
    bufferOffset = _serializer.float32(obj.target_angle, buffer, bufferOffset);
    // Serialize message field [target_force]
    bufferOffset = _serializer.float32(obj.target_force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperRotState
    let len;
    let data = new GripperRotState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rot_state]
    data.rot_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_angle]
    data.target_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_force]
    data.target_force = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dh_gripper_msgs/GripperRotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea8c02af740cd29d571c990824f2a925';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperRotState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rot_state !== undefined) {
      resolved.rot_state = msg.rot_state;
    }
    else {
      resolved.rot_state = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.target_angle !== undefined) {
      resolved.target_angle = msg.target_angle;
    }
    else {
      resolved.target_angle = 0.0
    }

    if (msg.target_force !== undefined) {
      resolved.target_force = msg.target_force;
    }
    else {
      resolved.target_force = 0.0
    }

    return resolved;
    }
};

module.exports = GripperRotState;
