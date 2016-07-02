package discordhx;

import discordhx.user.User;
import discordhx.channel.ServerChannel;

extern class Invite {
    public var maxAge: Int;
    public var code: String;
    public var server: Server;
    public var channel: ServerChannel;
    public var revoked: Bool;
    public var createdAt: Int;
    public var temporary: Bool;
    public var uses: Int;
    public var maxUses: Int;
    public var inviter: User;
    public var xkcd: Bool;
}
