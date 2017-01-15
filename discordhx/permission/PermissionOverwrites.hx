package discordhx.permission;

import discordhx.channel.GuildChannel;
import js.Promise;

extern class PermissionOverwrites {
    public var channel: GuildChannel;
    public var id: String;
    public var type: String;

    public function delete(): Promise<PermissionOverwrites>;
}
