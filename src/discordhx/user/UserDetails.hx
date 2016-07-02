package discordhx.user;

import discordhx.permission.Role;

class UserDetails {
    public var joinedAt: Int;
    public var roles: Array<Role>;
    public var mute: Bool;
    public var self_mute: Bool;
    public var self_deaf: Bool;
}
