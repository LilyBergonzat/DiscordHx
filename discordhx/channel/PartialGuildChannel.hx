package discordhx.channel;

import discordhx.client.Client;

extern class PartialGuildChannel {
    public var client: Client;
    public var id: String;
    public var name: String;
    public var type: PartialGuildChannelType;
}
