package discordhx.voice;

import nodejs.events.EventEmitter;
import nodejs.stream.Readable;
import discordhx.user.UserResolvable;

extern class VoiceReceiver extends EventEmitter {
    public var destroyed: Bool;
    public var voiceConnection: VoiceConnection;

    public function createOpusStream(user: UserResolvable): Readable;
    public function createPCMStream(user: UserResolvable): Readable;
    public function destroy(): Void;
    public function recreate(): Void;
}

@:enum
abstract VoiceReceiverEvent(String) {
    var OPUS = 'opus';
    var PCM = 'pcm';
    var WARN = 'warn';
}
