package discordhx.role;

import haxe.extern.EitherType;

typedef RoleData = {
    var name: String;
    var color: EitherType<Int, String>;
    var hoist: Bool;
    var position: Int;
    var permissions: Array<String>;
    var mentionable: Bool;
}
