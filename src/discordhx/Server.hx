package discordhx;

import discordhx.user.User;
import discordhx.client.Client;
import discordhx.Object;
import discordhx.user.UserDetails;
import discordhx.permission.Role;
import discordhx.channel.ServerChannel;

extern class Server extends Equality implements Object {
    public var client: Client;
    public var region: ServerRegion;
    public var name: String;
    public var members: Cache<User>;
    public var channels: Cache<ServerChannel>;
    public var roles: Cache<Role>;
    public var icon: String;
    public var afkTimeout: Int;
    public var afkChannel: ServerChannel;
    public var defaultChannel: ServerChannel;
    public var generalChannel: ServerChannel;
    public var general: ServerChannel;
    public var owner: User;
    public var iconURL: String;

    public function rolesOfUser(user: User): Array<Role>;
    public function rolesOf(user: User): Array<Role>;
    public function rolesOfMember(user: User): Array<Role>;
    public function usersWithRole(role: Role): Array<User>;
    public function membersWithRole(role: Role): Array<User>;
    public function detailsOfUser(user: User): UserDetails;
    public function detailsOfMember(user: User): UserDetails;
    public function detailsOf(user: User): UserDetails;
    public function leave(?callback: Dynamic->Void): Void;
    public function delete(?callback: Dynamic->Void): Void;
    public function createInvite(?options: Dynamic, ?callback: Dynamic->Invite->Void): Void;
    public function createRole(?data: RoleData, ?callback: Dynamic->Role->Void): Void;
    public function createChannel(name: String, ?type: ServerChannelType, ?callback: Dynamic->ServerChannel->Void): Void;
    public function getBans(?callback: Dynamic->Array<Dynamic>->Void): Void;
    public function banMember(user: Dynamic, ?length: Int, ?callback: Dynamic->Void): Void;
    public function banUser(user: Dynamic, ?length: Int, ?callback: Dynamic->Void): Void;
    public function ban(user: Dynamic, ?length: Int, ?callback: Dynamic->Void): Void;
    public function unbanMember(user: Dynamic, ?callback: Dynamic->Void): Void;
    public function unbanUser(user: Dynamic, ?callback: Dynamic->Void): Void;
    public function unban(user: Dynamic, ?callback: Dynamic->Void): Void;
    public function kickMember(user: Dynamic, ?callback: Dynamic->Void): Void;
    public function kickUser(user: Dynamic, ?callback: Dynamic->Void): Void;
    public function kick(user: Dynamic, ?callback: Dynamic->Void): Void;
}

@:enum
abstract ServerRegion(String) {
    var US_WEST = 'us-west';
    var US_EAST = 'us-east';
    var SINGAPORE = 'singapore';
    var LONDON = 'london';
    var SYDNEY = 'sydney';
    var AMSTERDAM = 'amsterdam';
}
