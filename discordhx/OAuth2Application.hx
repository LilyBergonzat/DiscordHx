package discordhx;

import discordhx.client.Client;

extern class OAuth2Application {
    public var client: Client;
    public var createdAt: Date;
    public var createdTimestamp: Int;
    public var description: String;
    public var icon: String;
    public var iconURL: String;
    public var id: String;
    public var name: String;
    public var rpcOrigins: Array<String>;

    public function toString(): String;
}
