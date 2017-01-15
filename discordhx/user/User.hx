package discordhx.user;

import discordhx.channel.DMChannel;
import discordhx.presence.Presence;
import discordhx.channel.ChannelResolvable;
import discordhx.message.Message;
import haxe.extern.EitherType;
import discordhx.message.MessageOptions;
import js.Promise;
import discordhx.client.Client;

extern class User {
    public var avatar: String;
    public var avatarURL: String;
    public var bot: Bool;
    public var client: Client;
    public var createdAt: Date;
    public var createdTimestamp: Int;
    public var defaultAvatarURL: String;
    public var discriminator: String;
    public var displayAvatarURL: String;
    public var dmChannel: DMChannel;
    public var id: String;
    public var lastMessageID: String;
    public var note: String;
    public var presence: Presence;
    public var username: String;

    public function addFriend(): Promise<User>;
    public function block(): Promise<User>;
    public function deleteDM(): Promise<DMChannel>;
    public function equals(user: User): Bool;
    public function fetchProfile(): Promise<UserProfile>;
    public function removeFriend(): Promise<User>;
    public function send(?content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendCode(lang: String, content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendEmbed(embed: EitherType<RichEmbed, Dynamic>, ?content: String, ?options: MessageOptions): Promise<Message>;
    public function sendFile(attachment: BufferResolvable, ?fileName: String, ?content: StringResolvable, ?options: MessageOptions): Promise<Message>;
    public function sendMessage(content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function setNote(note: String): Promise<User>;
    public function toString(): String;
    public function typingDurationIn(channel: ChannelResolvable): Float;
    public function typingIn(channel: ChannelResolvable): Bool;
    public function typingSinceIn(channel: ChannelResolvable): Date;
    public function unblock(): Promise<User>;
}
