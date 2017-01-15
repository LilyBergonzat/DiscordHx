package discordhx.permission;

import discordhx.permission.Permission;
import discordhx.permission.PermissionResolvable;
import discordhx.guild.GuildMember;

extern class EvaluatedPermissions {
    public var member: GuildMember;
    public var raw: Float;

    public function hasPermission(permission: PermissionResolvable, ?explicit: Bool): Bool;
    public function hasPermissions(permissions: Array<PermissionResolvable>, ?explicit: Bool): Bool;
    public function missingPermissions(permissions: Array<PermissionResolvable>, ?explicit: Bool): Array<Permission>;
    public function serialize(): Dynamic;
}
