// Auto-generated. Do not edit!

// (in-package rover_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RockerBogieData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rb_fr = null;
      this.rb_mr = null;
      this.rb_rr = null;
      this.rb_fl = null;
      this.rb_ml = null;
      this.rb_rl = null;
    }
    else {
      if (initObj.hasOwnProperty('rb_fr')) {
        this.rb_fr = initObj.rb_fr
      }
      else {
        this.rb_fr = 0.0;
      }
      if (initObj.hasOwnProperty('rb_mr')) {
        this.rb_mr = initObj.rb_mr
      }
      else {
        this.rb_mr = 0.0;
      }
      if (initObj.hasOwnProperty('rb_rr')) {
        this.rb_rr = initObj.rb_rr
      }
      else {
        this.rb_rr = 0.0;
      }
      if (initObj.hasOwnProperty('rb_fl')) {
        this.rb_fl = initObj.rb_fl
      }
      else {
        this.rb_fl = 0.0;
      }
      if (initObj.hasOwnProperty('rb_ml')) {
        this.rb_ml = initObj.rb_ml
      }
      else {
        this.rb_ml = 0.0;
      }
      if (initObj.hasOwnProperty('rb_rl')) {
        this.rb_rl = initObj.rb_rl
      }
      else {
        this.rb_rl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RockerBogieData
    // Serialize message field [rb_fr]
    bufferOffset = _serializer.float32(obj.rb_fr, buffer, bufferOffset);
    // Serialize message field [rb_mr]
    bufferOffset = _serializer.float32(obj.rb_mr, buffer, bufferOffset);
    // Serialize message field [rb_rr]
    bufferOffset = _serializer.float32(obj.rb_rr, buffer, bufferOffset);
    // Serialize message field [rb_fl]
    bufferOffset = _serializer.float32(obj.rb_fl, buffer, bufferOffset);
    // Serialize message field [rb_ml]
    bufferOffset = _serializer.float32(obj.rb_ml, buffer, bufferOffset);
    // Serialize message field [rb_rl]
    bufferOffset = _serializer.float32(obj.rb_rl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RockerBogieData
    let len;
    let data = new RockerBogieData(null);
    // Deserialize message field [rb_fr]
    data.rb_fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_mr]
    data.rb_mr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_rr]
    data.rb_rr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_fl]
    data.rb_fl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_ml]
    data.rb_ml = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rb_rl]
    data.rb_rl = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_pkg/RockerBogieData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fabc40ef174095f6a972da72d98b480';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 rb_fr
    float32 rb_mr
    float32 rb_rr
    float32 rb_fl
    float32 rb_ml
    float32 rb_rl
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RockerBogieData(null);
    if (msg.rb_fr !== undefined) {
      resolved.rb_fr = msg.rb_fr;
    }
    else {
      resolved.rb_fr = 0.0
    }

    if (msg.rb_mr !== undefined) {
      resolved.rb_mr = msg.rb_mr;
    }
    else {
      resolved.rb_mr = 0.0
    }

    if (msg.rb_rr !== undefined) {
      resolved.rb_rr = msg.rb_rr;
    }
    else {
      resolved.rb_rr = 0.0
    }

    if (msg.rb_fl !== undefined) {
      resolved.rb_fl = msg.rb_fl;
    }
    else {
      resolved.rb_fl = 0.0
    }

    if (msg.rb_ml !== undefined) {
      resolved.rb_ml = msg.rb_ml;
    }
    else {
      resolved.rb_ml = 0.0
    }

    if (msg.rb_rl !== undefined) {
      resolved.rb_rl = msg.rb_rl;
    }
    else {
      resolved.rb_rl = 0.0
    }

    return resolved;
    }
};

module.exports = RockerBogieData;
