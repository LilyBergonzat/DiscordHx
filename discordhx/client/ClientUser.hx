package discordhx.client;

import discordhx.presence.PresenceData;
import discordhx.presence.PresenceStatus;
import discordhx.guild.Guild;
import discordhx.message.Message;
import js.Promise;
import haxe.extern.EitherType;
import discordhx.user.User;

extern class ClientUser extends User {
    public var blocked: Collection<String, User>;
    public var email: String;
    public var friends: Collection<String, User>;
    public var notes: Collection<String, String>;
    public var verified: Bool;

    public function createGuild(name: String, region: String, ?icon: EitherType<BufferResolvable, Base64Resolvable>): Promise<Guild>;
    public function fetchMentions(?options: MentionOptions): Promise<Array<Message>>;
    public function setAFK(afk: Bool): Promise<ClientUser>;
    public function setAvatar(avatar: EitherType<BufferResolvable, Base64Resolvable>): Promise<ClientUser>;
    public function setEmail(email: String, password: String): Promise<ClientUser>;
    public function setGame(game: String, ?streamingURL: String): Promise<ClientUser>;
    public function setPassword(newPassword: String, oldPassword: String): Promise<ClientUser>;
    public function setPresence(data: PresenceData): Promise<ClientUser>;
    public function setStatus(status: PresenceStatus): Promise<ClientUser>;
    public function setUsername(username: String, ?password: String): Promise<ClientUser>;
}
