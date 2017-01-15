package discordhx.client;

import discordhx.channel.VoiceChannel;
import discordhx.voice.VoiceConnection;
import js.Promise;

extern class ClientVoiceManager {
    public var client: Client;
    public var connections: Collection<String, VoiceConnection>;
    public var pending: Collection<String, VoiceChannel>;

    public function joinChannel(channel: VoiceChannel): Promise<VoiceConnection>;
    public function sendVoiceStateUpdate(channel: VoiceChannel, ?options: Dynamic): Void;
}
