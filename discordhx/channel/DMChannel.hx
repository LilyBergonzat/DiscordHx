package discordhx.channel;

import discordhx.message.MessageOptions;
import discordhx.message.MessageCollector;
import discordhx.collector.CollectorOptions;
import haxe.extern.EitherType;
import js.Promise;
import discordhx.collector.CollectorFilterFunction;
import discordhx.user.User;
import discordhx.message.Message;

extern class DMChannel extends Channel {
    public var lastMessageID: String;
    public var messages: Collection<String, Message>;
    public var recipient: User;
    public var typing: Bool;
    public var typingCount: Int;

    public function awaitMessages(filter: CollectorFilterFunction, ?options: AwaitMessagesOptions): Promise<Collection<String, Message>>;
    public function bulkDelete(messages: EitherType<Collection<String, Message>, EitherType<Array<Message>, Int>>): Promise<Collection<String, Message>>;
    public function createCollector(filter: CollectorFilterFunction, ?options: CollectorOptions): MessageCollector;
    public function fetchMessage(messageID: String): Promise<Message>;
    public function fetchMessages(?options: ChannelLogsQueryOptions): Promise<Collection<String, Message>>;
    public function fetchPinnedMessages(): Promise<Collection<String, Message>>;
    public function send(?content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendCode(lang: String, content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendEmbed(embed: EitherType<RichEmbed, Dynamic>, ?content: String, ?options: MessageOptions): Promise<Message>;
    public function sendFile(attachment: BufferResolvable, ?name: String, ?content: StringResolvable, ?options: MessageOptions): Promise<Message>;
    public function sendMessage(content: StringResolvable, ?options: MessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function startTyping(?count: Int): Void;
    public function stopTyping(?force: Bool): Void;
    public function toString(): String;
}
