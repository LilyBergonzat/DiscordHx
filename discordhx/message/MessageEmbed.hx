package discordhx.message;

import discordhx.user.User;
import discordhx.client.Client;

extern class MessageEmbed {
    public var author: User;
    public var client: Client;
    public var color: Int;
    public var createdAt: Date;
    public var createdTimestamp: Float;
    public var description: String;
    public var fields: Array<MessageEmbedField>;
    public var footer: MessageEmbedFooter;
    public var hexColor: String;
    public var message: Message;
    public var provider: MessageEmbedProvider;
    public var thumbnail: MessageEmbedThumbnail;
    public var title: String;
    public var type: String;
    public var url: String;
}
