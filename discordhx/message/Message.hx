package discordhx.message;

import discordhx.channel.GuildChannel;
import discordhx.role.Role;
import discordhx.emoji.Emoji;
import discordhx.emoji.ReactionEmoji;
import discordhx.webhook.Webhook;
import discordhx.channel.GroupDMChannel;
import discordhx.channel.DMChannel;
import discordhx.channel.TextChannel;
import discordhx.guild.GuildMember;
import discordhx.user.User;
import js.Promise;
import discordhx.guild.Guild;
import discordhx.client.Client;
import haxe.extern.EitherType;

extern class Message {
    public var attachments: Collection<String, MessageAttachment>;
    public var author: User;
    public var channel: EitherType<TextChannel, EitherType<DMChannel, GroupDMChannel>>;
    public var cleanContent: String;
    public var client: Client;
    public var content: String;
    public var createdAt: Date;
    public var createdTimestamp: Float;
    public var deletable: Bool;
    public var editable: Bool;
    public var editedAt: Bool;
    public var editedTimestamp: Float;
    public var edits: Array<Message>;
    public var embeds: Array<MessageEmbed>;
    public var guild: Guild;
    public var id: String;
    public var member: GuildMember;
    public var mentions: MessageMentions;
    public var nonce: String;
    public var pinnable: Bool;
    public var pinned: Bool;
    public var reactions: Collection<String, MessageReaction>;
    public var system: Bool;
    public var tts: Bool;
    public var type: String;
    public var webhookID: String;

    public function clearReactions(): Promise<Message>;
    public function delete(?timeout: Float): Promise<Message>;
    public function edit(content: StringResolvable, ?options: MessageEditOptions): Promise<Message>;
    public function editCode(lang: String, content: StringResolvable): Promise<Message>;
    public function equals(message: Message, rawData: Dynamic): Bool;
    public function fetchWebhook(): Promise<Webhook>;
    public function isMemberMentionned(member: EitherType<GuildMember, User>): Bool;
    public function isMentionned(data: EitherType<GuildChannel, EitherType<User, EitherType<Role, String>>>): Bool;
    public function pin(): Promise<Message>;
    public function react(emoji: EitherType<String, EitherType<Emoji, ReactionEmoji>>): Promise<MessageReaction>;
    public function reply(content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function toString(): String;
    public function unpin(): Promise<Message>;
}
