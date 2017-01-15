package discordhx.channel;

import discordhx.guild.GuildMemberResolvable;
import discordhx.guild.Guild;
import discordhx.role.Role;
import discordhx.channel.ChannelData;
import discordhx.invite.Invite;
import discordhx.permission.EvaluatedPermissions;
import discordhx.permission.PermissionOverwrites;
import discordhx.permission.PermissionOverwriteOptions;
import discordhx.channel.Channel;
import discordhx.invite.InviteOptions;
import discordhx.user.UserResolvable;
import haxe.extern.EitherType;
import js.Promise;

extern class GuildChannel extends Channel {
    public var guild: Guild;
    public var name: String;
    public var permissionOverwrites: Collection<String, PermissionOverwrites>;
    public var position: Int;

    public function clone(?name: String, ?withPermissions: Bool): Promise<GuildChannel>;
    public function createInvite(?options: InviteOptions): Promise<Invite>;
    public function edit(data: ChannelData): Promise<GuildChannel>;
    public function equals(channel: GuildChannel): Bool;
    public function overwritePermissions(userOrRole: EitherType<Role, UserResolvable>, options: PermissionOverwriteOptions): Promise<Void>;
    public function permissionsFor(member: GuildMemberResolvable): EvaluatedPermissions;
    public function setName(name: String): Promise<GuildChannel>;
    public function setPosition(position: Int): Promise<GuildChannel>;
    public function setTopic(topic: String): Promise<GuildChannel>;
    public function toString(): String;
}
