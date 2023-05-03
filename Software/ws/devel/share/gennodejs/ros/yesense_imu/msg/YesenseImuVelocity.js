// Auto-generated. Do not edit!

// (in-package yesense_imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class YesenseImuVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_e = null;
      this.v_n = null;
      this.v_u = null;
    }
    else {
      if (initObj.hasOwnProperty('v_e')) {
        this.v_e = initObj.v_e
      }
      else {
        this.v_e = 0.0;
      }
      if (initObj.hasOwnProperty('v_n')) {
        this.v_n = initObj.v_n
      }
      else {
        this.v_n = 0.0;
      }
      if (initObj.hasOwnProperty('v_u')) {
        this.v_u = initObj.v_u
      }
      else {
        this.v_u = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YesenseImuVelocity
    // Serialize message field [v_e]
    bufferOffset = _serializer.float32(obj.v_e, buffer, bufferOffset);
    // Serialize message field [v_n]
    bufferOffset = _serializer.float32(obj.v_n, buffer, bufferOffset);
    // Serialize message field [v_u]
    bufferOffset = _serializer.float32(obj.v_u, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YesenseImuVelocity
    let len;
    let data = new YesenseImuVelocity(null);
    // Deserialize message field [v_e]
    data.v_e = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_n]
    data.v_n = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_u]
    data.v_u = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yesense_imu/YesenseImuVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee3bc63430d946c96d8af696d4656826';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 v_e
    float32 v_n
    float32 v_u
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YesenseImuVelocity(null);
    if (msg.v_e !== undefined) {
      resolved.v_e = msg.v_e;
    }
    else {
      resolved.v_e = 0.0
    }

    if (msg.v_n !== undefined) {
      resolved.v_n = msg.v_n;
    }
    else {
      resolved.v_n = 0.0
    }

    if (msg.v_u !== undefined) {
      resolved.v_u = msg.v_u;
    }
    else {
      resolved.v_u = 0.0
    }

    return resolved;
    }
};

module.exports = YesenseImuVelocity;
