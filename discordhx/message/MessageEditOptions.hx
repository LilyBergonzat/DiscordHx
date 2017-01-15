package discordhx.message;

import haxe.extern.EitherType;

typedef MessageEditOptions = {
    var embed: Dynamic;
    var code: EitherType<String, Bool>;
}
