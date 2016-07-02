package discordhx.channel;

import discordhx.message.Message;

extern class TextChannel extends ServerChannel {
    public var topic: String;
    public var lastMessage: Message;
    public var messages: Cache<Message>;
}
