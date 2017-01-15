package discordhx.message;

import discordhx.client.Client;

extern class MessageAttachment {
    public var client: Client;
    public var filename: String;
    public var filesize: Float;
    public var height: Float;
    public var id: String;
    public var message: Message;
    public var proxyURL: String;
    public var url: String;
    public var width: Float;
}
