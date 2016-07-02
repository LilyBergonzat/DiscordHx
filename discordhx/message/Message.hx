package discordhx.message;

import discordhx.channel.Channel;
import discordhx.user.User;
import discordhx.client.Client;
import discordhx.Object;

extern class Message extends Equality implements Object {
    public var channel: Channel;
    public var client: Client;
    public var attachments: Array<Dynamic>;
    public var tts: Bool;
    public var embeds: Array<Dynamic>;
    public var timestamp: Int;
    public var everyoneMentioned: Bool;
    public var editedTimestamp: Int;
    public var author: User;
    public var sender: User;
    public var content: String;
    public var cleanContent: String;
    public var mentions: Array<User>;

    public function isMentionned(user: Dynamic): Bool;
}
