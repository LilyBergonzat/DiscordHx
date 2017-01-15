package discordhx;

import nodejs.events.EventEmitter;
import discordhx.voice.VoiceConnection;

extern class AudioPlayer extends EventEmitter {
    public var dispatcher: StreamDispatcher;
    public var voiceConnection: VoiceConnection;
}
