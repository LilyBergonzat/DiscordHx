package discordhx.user;

import discordhx.guild.Guild;
import discordhx.client.Client;

extern class UserProfile {
    public var client: Client;
    public var connections: Collection<String, UserConnection>;
    public var mutualGuilds: Collection<String, Guild>;
    public var premium: Bool;
    public var user: User;
}
