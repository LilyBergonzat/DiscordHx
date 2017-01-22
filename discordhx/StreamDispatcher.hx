package discordhx;

import nodejs.events.EventEmitter;

extern class StreamDispatcher extends EventEmitter {
    public var passes: Int;
    public var paused: Bool;
    public var time: Float;
    public var totalStreamTime: Float;
    public var volume: Float;

    public function end(?reason: String): Void;
    public function pause(): Void;
    public function resume(): Void;
    public function setVolume(volume: Float): Void;
    public function setVolumeDecibels(db: Float): Void;
    public function setVolumeLogarithmic(value: Float): Void;
}

@:enum
abstract StreamDispatcherEvent(String) to String {
    var DEBUG = 'debug';
    var END = 'end';
    var ERROR = 'error';
    var SPEAKING = 'speaking';
    var START = 'start';
}
