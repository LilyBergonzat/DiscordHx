package discordhx.user;

import discordhx.client.Client;
import discordhx.Object;
import discordhx.channel.VoiceChannel;

extern class User extends Equality implements Object {
    public var client: Client;
    public var username: String;
    public var discriminator: Int;
    public var avatar: String;
    public var status: UserStatus;
    public var game: Game;
    public var typing: UserTypingData;
    public var avatarURL: String;
    public var bot: Bool;
    public var voiceChannel: VoiceChannel;

    public function mention(): String;
}

@:enum
abstract UserStatus(String) {
    var ONLINE = 'online';
    var OFFLINE = 'offline';
    var IDLE = 'idle';
}
