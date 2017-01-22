package discordhx.voice;

import discordhx.channel.VoiceChannel;
import nodejs.events.EventEmitter;
import nodejs.stream.Readable;
import discordhx.stream.StreamOptions;
import discordhx.client.ClientVoiceManager;

extern class VoiceConnection extends EventEmitter {
    public var channel: VoiceChannel;
    public var player: AudioPlayer;
    public var receivers: Array<VoiceReceiver>;
    public var speaking: Bool;
    public var voiceManager: ClientVoiceManager;

    public function createReceiver(): VoiceReceiver;
    public function disconnect(): Void;
    public function playConvertedStream(stream: Readable, ?options: StreamOptions): StreamDispatcher;
    public function playFile(file: String, ?options: StreamOptions): StreamDispatcher;
    public function playStream(stream: Readable, ?options: StreamOptions): StreamDispatcher;
}

@:enum
abstract VoiceConnectionEvent(String) to String {
    var DEBUG = 'debug';
    var DISCONNECT = 'disconnect';
    var ERROR = 'error';
    var READY = 'ready';
    var SPEAKING = 'speaking';
    var WARN = 'warn';
}
