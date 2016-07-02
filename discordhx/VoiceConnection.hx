package discordhx;

import discordhx.client.Client;
import discordhx.channel.VoiceChannel;

extern class VoiceConnection {
    public var voiceChannel: VoiceChannel;
    public var client: Client;
    public var token: String;
    public var server: Server;
    public var encoder: Dynamic;
    public var playingIntent: Dynamic;
    public var playing: Bool;
    public var streamTime: Int;

    public function playFile(path: String, ?options: PlayFileOptions, ?callback: Dynamic->Dynamic->Void): Void;
    public function playRawStream(stream: String, ?options: PlayFileOptions, ?callback: Dynamic->Dynamic->Void): Void;
    public function playArbitraryFFmpeg(?options: Dynamic, ?callback: Dynamic->Dynamic->Void): Void;
    public function setSpeaking(value: Bool): Void;
    public function setVolume(volume: Float): Void;
    public function getVolume(): Float;
    public function stopPlaying(): Void;
    public function destroy(): Void;
}
