// ignore_for_file: public_member_api_docs, non_constant_identifier_names
//
import 'dart:js_interop';
import 'dart:typed_data';

@JS('self')
external JSWindow get window;

@JS()
@staticInterop
class JSWindow {}

extension JSWindowX on JSWindow {
  external JSIsar get isar;
  external JSWebAssembly get WebAssembly;
  external JSPromise fetch(String url);
}

@JS('WebAssembly')
@staticInterop
class JSWebAssembly {}

extension JSWebAssemblyX on JSWebAssembly {
  external JSPromise instantiateStreaming(
      JSPromise source,
      JSObject? importObject,
      );
}

@JS()
@staticInterop
class JSInstantiateResult {}

extension JSInstantiateResultX on JSInstantiateResult {
  external JSWasmModule get module;
  external JSWasmInstance get instance;
}

@JS()
@staticInterop
class JSWasmModule {}

extension JSWasmModuleX on JSWasmModule {
  external JSWasmInstance get instance;
}

@JS()
@staticInterop
class JSWasmInstance {}

extension JSWasmInstanceX on JSWasmInstance {
  external JSIsar get exports;
}

@JS()
@staticInterop
class JSIsar {}

extension JSIsarX on JSIsar {
  external JSMemory get memory;

  Uint8List get u8Heap => memory.buffer.toDart.asUint8List();
  Uint16List get u16Heap => memory.buffer.toDart.asUint16List();
  Uint32List get u32Heap => memory.buffer.toDart.asUint32List();

  external int malloc(int byteCount);
  external void free(int ptrAddress);
}

@JS()
@staticInterop
class JSMemory {}

extension JSMemoryX on JSMemory {
  external JSArrayBuffer get buffer;
}