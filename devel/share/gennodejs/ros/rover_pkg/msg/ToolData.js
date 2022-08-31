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

class ToolData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.QDC_SIG1 = null;
      this.QDC_SIG2 = null;
      this.QDC_SIG3 = null;
      this.QDC_SIG4 = null;
      this.QDC_SIG5 = null;
      this.QDC_SIG6 = null;
      this.QDC_SIG7 = null;
    }
    else {
      if (initObj.hasOwnProperty('QDC_SIG1')) {
        this.QDC_SIG1 = initObj.QDC_SIG1
      }
      else {
        this.QDC_SIG1 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG2')) {
        this.QDC_SIG2 = initObj.QDC_SIG2
      }
      else {
        this.QDC_SIG2 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG3')) {
        this.QDC_SIG3 = initObj.QDC_SIG3
      }
      else {
        this.QDC_SIG3 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG4')) {
        this.QDC_SIG4 = initObj.QDC_SIG4
      }
      else {
        this.QDC_SIG4 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG5')) {
        this.QDC_SIG5 = initObj.QDC_SIG5
      }
      else {
        this.QDC_SIG5 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG6')) {
        this.QDC_SIG6 = initObj.QDC_SIG6
      }
      else {
        this.QDC_SIG6 = 0;
      }
      if (initObj.hasOwnProperty('QDC_SIG7')) {
        this.QDC_SIG7 = initObj.QDC_SIG7
      }
      else {
        this.QDC_SIG7 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolData
    // Serialize message field [QDC_SIG1]
    bufferOffset = _serializer.int16(obj.QDC_SIG1, buffer, bufferOffset);
    // Serialize message field [QDC_SIG2]
    bufferOffset = _serializer.int16(obj.QDC_SIG2, buffer, bufferOffset);
    // Serialize message field [QDC_SIG3]
    bufferOffset = _serializer.int16(obj.QDC_SIG3, buffer, bufferOffset);
    // Serialize message field [QDC_SIG4]
    bufferOffset = _serializer.int16(obj.QDC_SIG4, buffer, bufferOffset);
    // Serialize message field [QDC_SIG5]
    bufferOffset = _serializer.int16(obj.QDC_SIG5, buffer, bufferOffset);
    // Serialize message field [QDC_SIG6]
    bufferOffset = _serializer.int16(obj.QDC_SIG6, buffer, bufferOffset);
    // Serialize message field [QDC_SIG7]
    bufferOffset = _serializer.int16(obj.QDC_SIG7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolData
    let len;
    let data = new ToolData(null);
    // Deserialize message field [QDC_SIG1]
    data.QDC_SIG1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG2]
    data.QDC_SIG2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG3]
    data.QDC_SIG3 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG4]
    data.QDC_SIG4 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG5]
    data.QDC_SIG5 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG6]
    data.QDC_SIG6 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [QDC_SIG7]
    data.QDC_SIG7 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_pkg/ToolData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37110460499bfee4e7ed1a257662b8e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 QDC_SIG1
    int16 QDC_SIG2
    int16 QDC_SIG3
    int16 QDC_SIG4
    int16 QDC_SIG5
    int16 QDC_SIG6
    int16 QDC_SIG7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolData(null);
    if (msg.QDC_SIG1 !== undefined) {
      resolved.QDC_SIG1 = msg.QDC_SIG1;
    }
    else {
      resolved.QDC_SIG1 = 0
    }

    if (msg.QDC_SIG2 !== undefined) {
      resolved.QDC_SIG2 = msg.QDC_SIG2;
    }
    else {
      resolved.QDC_SIG2 = 0
    }

    if (msg.QDC_SIG3 !== undefined) {
      resolved.QDC_SIG3 = msg.QDC_SIG3;
    }
    else {
      resolved.QDC_SIG3 = 0
    }

    if (msg.QDC_SIG4 !== undefined) {
      resolved.QDC_SIG4 = msg.QDC_SIG4;
    }
    else {
      resolved.QDC_SIG4 = 0
    }

    if (msg.QDC_SIG5 !== undefined) {
      resolved.QDC_SIG5 = msg.QDC_SIG5;
    }
    else {
      resolved.QDC_SIG5 = 0
    }

    if (msg.QDC_SIG6 !== undefined) {
      resolved.QDC_SIG6 = msg.QDC_SIG6;
    }
    else {
      resolved.QDC_SIG6 = 0
    }

    if (msg.QDC_SIG7 !== undefined) {
      resolved.QDC_SIG7 = msg.QDC_SIG7;
    }
    else {
      resolved.QDC_SIG7 = 0
    }

    return resolved;
    }
};

module.exports = ToolData;
