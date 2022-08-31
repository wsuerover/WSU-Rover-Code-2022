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

class RoverData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rb_fr = null;
      this.rb_mr = null;
      this.rb_rr = null;
      this.rb_fl = null;
      this.rb_ml = null;
      this.rb_rl = null;
      this.arm_zm = null;
      this.arm_bm = null;
      this.arm_am = null;
      this.arm_wr = null;
      this.awm_wp = null;
      this.qdcl = null;
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
      if (initObj.hasOwnProperty('arm_zm')) {
        this.arm_zm = initObj.arm_zm
      }
      else {
        this.arm_zm = 0.0;
      }
      if (initObj.hasOwnProperty('arm_bm')) {
        this.arm_bm = initObj.arm_bm
      }
      else {
        this.arm_bm = 0.0;
      }
      if (initObj.hasOwnProperty('arm_am')) {
        this.arm_am = initObj.arm_am
      }
      else {
        this.arm_am = 0.0;
      }
      if (initObj.hasOwnProperty('arm_wr')) {
        this.arm_wr = initObj.arm_wr
      }
      else {
        this.arm_wr = 0.0;
      }
      if (initObj.hasOwnProperty('awm_wp')) {
        this.awm_wp = initObj.awm_wp
      }
      else {
        this.awm_wp = 0.0;
      }
      if (initObj.hasOwnProperty('qdcl')) {
        this.qdcl = initObj.qdcl
      }
      else {
        this.qdcl = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoverData
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
    // Serialize message field [arm_zm]
    bufferOffset = _serializer.float32(obj.arm_zm, buffer, bufferOffset);
    // Serialize message field [arm_bm]
    bufferOffset = _serializer.float32(obj.arm_bm, buffer, bufferOffset);
    // Serialize message field [arm_am]
    bufferOffset = _serializer.float32(obj.arm_am, buffer, bufferOffset);
    // Serialize message field [arm_wr]
    bufferOffset = _serializer.float32(obj.arm_wr, buffer, bufferOffset);
    // Serialize message field [awm_wp]
    bufferOffset = _serializer.float32(obj.awm_wp, buffer, bufferOffset);
    // Serialize message field [qdcl]
    bufferOffset = _serializer.bool(obj.qdcl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoverData
    let len;
    let data = new RoverData(null);
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
    // Deserialize message field [arm_zm]
    data.arm_zm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_bm]
    data.arm_bm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_am]
    data.arm_am = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_wr]
    data.arm_wr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [awm_wp]
    data.awm_wp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [qdcl]
    data.qdcl = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_pkg/RoverData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '736b6a6f87def00a2326ecbc6c3788ee';
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
    
    float32 arm_zm
    float32 arm_bm
    float32 arm_am
    float32 arm_wr
    float32 awm_wp
    bool qdcl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoverData(null);
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

    if (msg.arm_zm !== undefined) {
      resolved.arm_zm = msg.arm_zm;
    }
    else {
      resolved.arm_zm = 0.0
    }

    if (msg.arm_bm !== undefined) {
      resolved.arm_bm = msg.arm_bm;
    }
    else {
      resolved.arm_bm = 0.0
    }

    if (msg.arm_am !== undefined) {
      resolved.arm_am = msg.arm_am;
    }
    else {
      resolved.arm_am = 0.0
    }

    if (msg.arm_wr !== undefined) {
      resolved.arm_wr = msg.arm_wr;
    }
    else {
      resolved.arm_wr = 0.0
    }

    if (msg.awm_wp !== undefined) {
      resolved.awm_wp = msg.awm_wp;
    }
    else {
      resolved.awm_wp = 0.0
    }

    if (msg.qdcl !== undefined) {
      resolved.qdcl = msg.qdcl;
    }
    else {
      resolved.qdcl = false
    }

    return resolved;
    }
};

module.exports = RoverData;
