package discordhx.emoji;

import discordhx.role.Role;
import haxe.extern.EitherType;
import discordhx.guild.Guild;
import discordhx.client.Client;

extern class Emoji {
    public var client: Client;
    public var createdAt: Date;
    public var createdTimestamp: Float;
    public var guild: Guild;
    public var id: String;
    public var identifier: String;
    public var managed: Bool;
    public var name: String;
    public var requiresColons: Bool;
    public var roles: Collection<String, Role>;
    public var url: String;

    public function equals(other: EitherType<Emoji, Dynamic>): String;
    public function toString(): String;
}
