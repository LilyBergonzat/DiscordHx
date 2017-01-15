package discordhx.role;

import discordhx.permission.PermissionOverwriteOptions;
import haxe.extern.EitherType;
import Array;
import discordhx.permission.PermissionResolvable;
import js.Promise;
import discordhx.guild.GuildMember;
import discordhx.guild.Guild;
import discordhx.client.Client;

extern class Role {
    public var client: Client;
    public var color: Int;
    public var createdAt: Date;
    public var createdTimestamp: Int;
    public var editable: Bool;
    public var guild: Guild;
    public var hexColor: String;
    public var hoist: Bool;
    public var id: String;
    public var managed: Bool;
    public var members: Collection<String, GuildMember>;
    public var mentionable: Bool;
    public var name: String;
    public var permissions: Int;
    public var position: Int;

    public static function comparePosition(role1: Role, role2: Role): Int;

    public function comparePositionTo(role: Role): Int;
    public function delete(): Promise<Role>;
    public function edit(data: RoleData): Promise<Role>;
    public function equals(role: Role): Bool;
    public function hasPermission(permission: PermissionResolvable, ?explicit: Bool): Bool;
    public function hasPermissions(permissions: Array<PermissionResolvable>, ?explicit: Bool): Bool;
    public function serialize(): PermissionOverwriteOptions;
    public function setColor(color: EitherType<Float, String>): Promise<Role>;
    public function setHoist(hoist: Bool): Promise<Role>;
    public function setMentionable(mentionable: Bool): Promise<Role>;
    public function setName(name: String): Promise<Role>;
    public function setPermissions(permissions: Array<String>): Promise<Role>;
    public function setPosition(position: Int): Promise<Role>;
    public function toString(): String;
}
