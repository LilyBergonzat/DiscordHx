package discordhx.channel;

import discordhx.user.User;

extern class VoiceChannel extends ServerChannel {
    public var members: Cache<User>;
}
