// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_oneof_merging.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_oneof_merging.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// This is based on unittest.proto's TestParsingMerge & RepeatedFieldsGenerator,
/// but focused on oneofs to ensure the behaviors around merging/replaces on
/// oneofs is correct.
///
// -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct SwiftUnittest_TestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var oneofField: OneOf_OneofField? {
    get {return _storage._oneofField}
    set {_uniqueStorage()._oneofField = newValue}
  }

  var oneofUint32: UInt32 {
    get {
      if case .oneofUint32(let v)? = _storage._oneofField {return v}
      return 0
    }
    set {_uniqueStorage()._oneofField = .oneofUint32(newValue)}
  }

  var oneofNestedMessage: SwiftUnittest_TestMessage.NestedMessage {
    get {
      if case .oneofNestedMessage(let v)? = _storage._oneofField {return v}
      return SwiftUnittest_TestMessage.NestedMessage()
    }
    set {_uniqueStorage()._oneofField = .oneofNestedMessage(newValue)}
  }

  var oneofString: String {
    get {
      if case .oneofString(let v)? = _storage._oneofField {return v}
      return String()
    }
    set {_uniqueStorage()._oneofField = .oneofString(newValue)}
  }

  var oneofBytes: Data {
    get {
      if case .oneofBytes(let v)? = _storage._oneofField {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {_uniqueStorage()._oneofField = .oneofBytes(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_OneofField: Equatable {
    case oneofUint32(UInt32)
    case oneofNestedMessage(SwiftUnittest_TestMessage.NestedMessage)
    case oneofString(String)
    case oneofBytes(Data)
  }

  struct NestedMessage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var a: Int32 {
      get {return _a ?? 0}
      set {_a = newValue}
    }
    /// Returns true if `a` has been explicitly set.
    var hasA: Bool {return self._a != nil}
    /// Clears the value of `a`. Subsequent reads from it will return its default value.
    mutating func clearA() {self._a = nil}

    var b: Int32 {
      get {return _b ?? 0}
      set {_b = newValue}
    }
    /// Returns true if `b` has been explicitly set.
    var hasB: Bool {return self._b != nil}
    /// Clears the value of `b`. Subsequent reads from it will return its default value.
    mutating func clearB() {self._b = nil}

    var c: Int32 {
      get {return _c ?? 0}
      set {_c = newValue}
    }
    /// Returns true if `c` has been explicitly set.
    var hasC: Bool {return self._c != nil}
    /// Clears the value of `c`. Subsequent reads from it will return its default value.
    mutating func clearC() {self._c = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _a: Int32? = nil
    fileprivate var _b: Int32? = nil
    fileprivate var _c: Int32? = nil
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct SwiftUnittest_TestParsingMerge {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var optionalMessage: SwiftUnittest_TestMessage {
    get {return _storage._optionalMessage ?? SwiftUnittest_TestMessage()}
    set {_uniqueStorage()._optionalMessage = newValue}
  }
  /// Returns true if `optionalMessage` has been explicitly set.
  var hasOptionalMessage: Bool {return _storage._optionalMessage != nil}
  /// Clears the value of `optionalMessage`. Subsequent reads from it will return its default value.
  mutating func clearOptionalMessage() {_uniqueStorage()._optionalMessage = nil}

  var repeatedMessage: [SwiftUnittest_TestMessage] {
    get {return _storage._repeatedMessage}
    set {_uniqueStorage()._repeatedMessage = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct RepeatedFieldsGenerator {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var field1: [SwiftUnittest_TestMessage] = []

    var field2: [SwiftUnittest_TestMessage] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_unittest"

extension SwiftUnittest_TestMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    111: .standard(proto: "oneof_uint32"),
    112: .standard(proto: "oneof_nested_message"),
    113: .standard(proto: "oneof_string"),
    114: .standard(proto: "oneof_bytes"),
  ]

  fileprivate class _StorageClass {
    var _oneofField: SwiftUnittest_TestMessage.OneOf_OneofField?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _oneofField = source._oneofField
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 111:
          if _storage._oneofField != nil {try decoder.handleConflictingOneOf()}
          var v: UInt32?
          try decoder.decodeSingularUInt32Field(value: &v)
          if let v = v {_storage._oneofField = .oneofUint32(v)}
        case 112:
          var v: SwiftUnittest_TestMessage.NestedMessage?
          if let current = _storage._oneofField {
            try decoder.handleConflictingOneOf()
            if case .oneofNestedMessage(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._oneofField = .oneofNestedMessage(v)}
        case 113:
          if _storage._oneofField != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._oneofField = .oneofString(v)}
        case 114:
          if _storage._oneofField != nil {try decoder.handleConflictingOneOf()}
          var v: Data?
          try decoder.decodeSingularBytesField(value: &v)
          if let v = v {_storage._oneofField = .oneofBytes(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._oneofField {
      case .oneofUint32(let v)?:
        try visitor.visitSingularUInt32Field(value: v, fieldNumber: 111)
      case .oneofNestedMessage(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 112)
      case .oneofString(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 113)
      case .oneofBytes(let v)?:
        try visitor.visitSingularBytesField(value: v, fieldNumber: 114)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftUnittest_TestMessage, rhs: SwiftUnittest_TestMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._oneofField != rhs_storage._oneofField {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftUnittest_TestMessage.NestedMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = SwiftUnittest_TestMessage.protoMessageName + ".NestedMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "a"),
    2: .same(proto: "b"),
    3: .same(proto: "c"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._a)
      case 2: try decoder.decodeSingularInt32Field(value: &self._b)
      case 3: try decoder.decodeSingularInt32Field(value: &self._c)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._a {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._b {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._c {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftUnittest_TestMessage.NestedMessage, rhs: SwiftUnittest_TestMessage.NestedMessage) -> Bool {
    if lhs._a != rhs._a {return false}
    if lhs._b != rhs._b {return false}
    if lhs._c != rhs._c {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftUnittest_TestParsingMerge: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TestParsingMerge"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "optional_message"),
    2: .standard(proto: "repeated_message"),
  ]

  fileprivate class _StorageClass {
    var _optionalMessage: SwiftUnittest_TestMessage? = nil
    var _repeatedMessage: [SwiftUnittest_TestMessage] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _optionalMessage = source._optionalMessage
      _repeatedMessage = source._repeatedMessage
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._optionalMessage)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._repeatedMessage)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._optionalMessage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._repeatedMessage.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._repeatedMessage, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftUnittest_TestParsingMerge, rhs: SwiftUnittest_TestParsingMerge) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._optionalMessage != rhs_storage._optionalMessage {return false}
        if _storage._repeatedMessage != rhs_storage._repeatedMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftUnittest_TestParsingMerge.RepeatedFieldsGenerator: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = SwiftUnittest_TestParsingMerge.protoMessageName + ".RepeatedFieldsGenerator"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "field1"),
    2: .same(proto: "field2"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.field1)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.field2)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.field1.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.field1, fieldNumber: 1)
    }
    if !self.field2.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.field2, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SwiftUnittest_TestParsingMerge.RepeatedFieldsGenerator, rhs: SwiftUnittest_TestParsingMerge.RepeatedFieldsGenerator) -> Bool {
    if lhs.field1 != rhs.field1 {return false}
    if lhs.field2 != rhs.field2 {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
