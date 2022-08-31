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

class UserInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controlMode = null;
      this.keysPressed = null;
      this.ljx = null;
      this.ljy = null;
      this.rjx = null;
      this.rjy = null;
      this.but1 = null;
      this.but2 = null;
      this.but3 = null;
    }
    else {
      if (initObj.hasOwnProperty('controlMode')) {
        this.controlMode = initObj.controlMode
      }
      else {
        this.controlMode = '';
      }
      if (initObj.hasOwnProperty('keysPressed')) {
        this.keysPressed = initObj.keysPressed
      }
      else {
        this.keysPressed = '';
      }
      if (initObj.hasOwnProperty('ljx')) {
        this.ljx = initObj.ljx
      }
      else {
        this.ljx = 0.0;
      }
      if (initObj.hasOwnProperty('ljy')) {
        this.ljy = initObj.ljy
      }
      else {
        this.ljy = 0.0;
      }
      if (initObj.hasOwnProperty('rjx')) {
        this.rjx = initObj.rjx
      }
      else {
        this.rjx = 0.0;
      }
      if (initObj.hasOwnProperty('rjy')) {
        this.rjy = initObj.rjy
      }
      else {
        this.rjy = 0.0;
      }
      if (initObj.hasOwnProperty('but1')) {
        this.but1 = initObj.but1
      }
      else {
        this.but1 = false;
      }
      if (initObj.hasOwnProperty('but2')) {
        this.but2 = initObj.but2
      }
      else {
        this.but2 = false;
      }
      if (initObj.hasOwnProperty('but3')) {
        this.but3 = initObj.but3
      }
      else {
        this.but3 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserInput
    // Serialize message field [controlMode]
    bufferOffset = _serializer.string(obj.controlMode, buffer, bufferOffset);
    // Serialize message field [keysPressed]
    bufferOffset = _serializer.string(obj.keysPressed, buffer, bufferOffset);
    // Serialize message field [ljx]
    bufferOffset = _serializer.float32(obj.ljx, buffer, bufferOffset);
    // Serialize message field [ljy]
    bufferOffset = _serializer.float32(obj.ljy, buffer, bufferOffset);
    // Serialize message field [rjx]
    bufferOffset = _serializer.float32(obj.rjx, buffer, bufferOffset);
    // Serialize message field [rjy]
    bufferOffset = _serializer.float32(obj.rjy, buffer, bufferOffset);
    // Serialize message field [but1]
    bufferOffset = _serializer.bool(obj.but1, buffer, bufferOffset);
    // Serialize message field [but2]
    bufferOffset = _serializer.bool(obj.but2, buffer, bufferOffset);
    // Serialize message field [but3]
    bufferOffset = _serializer.bool(obj.but3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserInput
    let len;
    let data = new UserInput(null);
    // Deserialize message field [controlMode]
    data.controlMode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [keysPressed]
    data.keysPressed = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ljx]
    data.ljx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ljy]
    data.ljy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rjx]
    data.rjx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rjy]
    data.rjy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [but1]
    data.but1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [but2]
    data.but2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [but3]
    data.but3 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.controlMode.length;
    length += object.keysPressed.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_pkg/UserInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66775f4abc092869a360f7947e03c1bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string controlMode
    string keysPressed
    float32 ljx
    float32 ljy
    float32 rjx
    float32 rjy
    bool but1
    bool but2
    bool but3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserInput(null);
    if (msg.controlMode !== undefined) {
      resolved.controlMode = msg.controlMode;
    }
    else {
      resolved.controlMode = ''
    }

    if (msg.keysPressed !== undefined) {
      resolved.keysPressed = msg.keysPressed;
    }
    else {
      resolved.keysPressed = ''
    }

    if (msg.ljx !== undefined) {
      resolved.ljx = msg.ljx;
    }
    else {
      resolved.ljx = 0.0
    }

    if (msg.ljy !== undefined) {
      resolved.ljy = msg.ljy;
    }
    else {
      resolved.ljy = 0.0
    }

    if (msg.rjx !== undefined) {
      resolved.rjx = msg.rjx;
    }
    else {
      resolved.rjx = 0.0
    }

    if (msg.rjy !== undefined) {
      resolved.rjy = msg.rjy;
    }
    else {
      resolved.rjy = 0.0
    }

    if (msg.but1 !== undefined) {
      resolved.but1 = msg.but1;
    }
    else {
      resolved.but1 = false
    }

    if (msg.but2 !== undefined) {
      resolved.but2 = msg.but2;
    }
    else {
      resolved.but2 = false
    }

    if (msg.but3 !== undefined) {
      resolved.but3 = msg.but3;
    }
    else {
      resolved.but3 = false
    }

    return resolved;
    }
};

module.exports = UserInput;
