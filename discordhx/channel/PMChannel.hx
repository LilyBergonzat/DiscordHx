package discordhx.channel;

import discordhx.user.User;
import discordhx.message.Message;

extern class PMChannel extends Channel {
    public var messages: Cache<Message>;
    public var recipient: User;
    public var lastMessage: Message;
}
