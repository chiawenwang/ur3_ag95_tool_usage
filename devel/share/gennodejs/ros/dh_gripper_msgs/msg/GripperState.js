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

class GripperState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_initialized = null;
      this.grip_state = null;
      this.position = null;
      this.target_position = null;
      this.target_force = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_initialized')) {
        this.is_initialized = initObj.is_initialized
      }
      else {
        this.is_initialized = false;
      }
      if (initObj.hasOwnProperty('grip_state')) {
        this.grip_state = initObj.grip_state
      }
      else {
        this.grip_state = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = 0.0;
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
    // Serializes a message object of type GripperState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_initialized]
    bufferOffset = _serializer.bool(obj.is_initialized, buffer, bufferOffset);
    // Serialize message field [grip_state]
    bufferOffset = _serializer.int32(obj.grip_state, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = _serializer.float32(obj.target_position, buffer, bufferOffset);
    // Serialize message field [target_force]
    bufferOffset = _serializer.float32(obj.target_force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperState
    let len;
    let data = new GripperState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_initialized]
    data.is_initialized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [grip_state]
    data.grip_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_force]
    data.target_force = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dh_gripper_msgs/GripperState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1390c2ae2fb82f820aa81dc4a377cf36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_initialized !== undefined) {
      resolved.is_initialized = msg.is_initialized;
    }
    else {
      resolved.is_initialized = false
    }

    if (msg.grip_state !== undefined) {
      resolved.grip_state = msg.grip_state;
    }
    else {
      resolved.grip_state = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = msg.target_position;
    }
    else {
      resolved.target_position = 0.0
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

module.exports = GripperState;
