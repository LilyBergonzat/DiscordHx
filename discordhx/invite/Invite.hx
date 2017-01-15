package discordhx.invite;

import discordhx.channel.GuildChannel;
import discordhx.guild.PartialGuild;
import discordhx.channel.PartialGuildChannel;
import discordhx.user.User;
import discordhx.guild.Guild;
import discordhx.client.Client;
import haxe.extern.EitherType;
import js.Promise;

extern class Invite {
    public var channel: EitherType<GuildChannel, PartialGuildChannel>;
    public var client: Client;
    public var code: String;
    public var createdAt: Date;
    public var createdTimestamp: Int;
    public var expiresAt: Date;
    public var expiresTimestamp: Int;
    public var guild: EitherType<Guild, PartialGuild>;
    public var inviter: User;
    public var maxAge: Int;
    public var maxUses: Int;
    public var temporary: Bool;
    public var url: String;
    public var uses: Int;

    public function delete(): Promise<Invite>;
    public function toString(): String;
}
