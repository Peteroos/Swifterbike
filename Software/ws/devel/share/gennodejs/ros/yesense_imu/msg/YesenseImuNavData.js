// Auto-generated. Do not edit!

// (in-package yesense_imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let YesenseImuLocation = require('./YesenseImuLocation.js');
let YesenseImuUtcTime = require('./YesenseImuUtcTime.js');
let YesenseImuStatus = require('./YesenseImuStatus.js');

//-----------------------------------------------------------

class YesenseImuNavData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tid = null;
      this.location = null;
      this.utc_time = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('tid')) {
        this.tid = initObj.tid
      }
      else {
        this.tid = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new YesenseImuLocation();
      }
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = new YesenseImuUtcTime();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new YesenseImuStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YesenseImuNavData
    // Serialize message field [tid]
    bufferOffset = _serializer.uint16(obj.tid, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = YesenseImuLocation.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [utc_time]
    bufferOffset = YesenseImuUtcTime.serialize(obj.utc_time, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = YesenseImuStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YesenseImuNavData
    let len;
    let data = new YesenseImuNavData(null);
    // Deserialize message field [tid]
    data.tid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = YesenseImuLocation.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_time]
    data.utc_time = YesenseImuUtcTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = YesenseImuStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yesense_imu/YesenseImuNavData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4aa52ebf06cd4d0bdd17a2cc70d2b2cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16                          tid
    yesense_imu/YesenseImuLocation  location
    yesense_imu/YesenseImuUtcTime   utc_time
    yesense_imu/YesenseImuStatus    status
    ================================================================================
    MSG: yesense_imu/YesenseImuLocation
    float64 longtidue
    float64 latitude
    float32 altidue
    ================================================================================
    MSG: yesense_imu/YesenseImuUtcTime
    uint16 year
    uint8 month
    uint8 date
    uint8 hour
    uint8 min
    uint8 sec
    uint32 ms
    ================================================================================
    MSG: yesense_imu/YesenseImuStatus
    uint8 fusion_status
    uint8 gnss_status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YesenseImuNavData(null);
    if (msg.tid !== undefined) {
      resolved.tid = msg.tid;
    }
    else {
      resolved.tid = 0
    }

    if (msg.location !== undefined) {
      resolved.location = YesenseImuLocation.Resolve(msg.location)
    }
    else {
      resolved.location = new YesenseImuLocation()
    }

    if (msg.utc_time !== undefined) {
      resolved.utc_time = YesenseImuUtcTime.Resolve(msg.utc_time)
    }
    else {
      resolved.utc_time = new YesenseImuUtcTime()
    }

    if (msg.status !== undefined) {
      resolved.status = YesenseImuStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new YesenseImuStatus()
    }

    return resolved;
    }
};

module.exports = YesenseImuNavData;
