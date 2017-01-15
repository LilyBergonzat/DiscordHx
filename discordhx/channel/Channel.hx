package discordhx.channel;

import js.Promise;
import discordhx.client.Client;

extern class Channel {
    public var client: Client;
    public var createdAt: Date;
    public var createdTimestamp: Float;
    public var id: String;
    public var type: ChannelType;

    public function delete(): Promise<Channel>;
}
