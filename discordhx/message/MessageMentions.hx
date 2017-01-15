package discordhx.message;

import discordhx.channel.GuildChannel;
import discordhx.role.Role;
import discordhx.user.User;

typedef MessageMentions = {
    var users: Collection<String, User>;
    var roles: Collection<String, Role>;
    var channels: Collection<String, GuildChannel>;
    var everyone: Bool;
}
