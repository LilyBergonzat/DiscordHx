package discordhx;

import discordhx.guild.Guild;
import haxe.extern.EitherType;

typedef MentionOptions = {
    var limit: Int;
    var roles: Bool;
    var everyone: Bool;
    var guild: EitherType<Guild, String>;
};
