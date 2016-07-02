package discordhx.permission;

import discordhx.client.Client;
import discordhx.Object;

extern class Role implements Object {
    public var position: Int;
    public var name: String;
    public var managed: Bool;
    public var id: String;
    public var hoist: Bool;
    public var color: Int;
    public var server: Server;
    public var client: Client;

    public function serialise(): SerializedPermissions;
    public function serialize(): SerializedPermissions;
    public function hasPermission(permission: Permission): Bool;
    public function colorAsHex(): String;
}

@:enum
abstract Permission(String) {
    // General
    var CREATE_INSTANT_INVITE = 'createInstantInvite';
    var KICK_MEMBERS = 'kickMembers';
    var BAN_MEMBERS = 'banMembers';
    var MANAGE_ROLES = 'manageRoles';
    var MANAGE_PERMISSIONS = 'managePermissions';
    var MANAGE_CHANNELS = 'manageChannels';
    var MANAGE_CHANNEL = 'manageChannel';
    var MANAGE_SERVER = 'manageServer';

    // Text
    var READ_MESSAGES = 'readMessages';
    var SEND_MESSAGES = 'sendMessages';
    var SEND_TTS_MESSAGES = 'sendTTSMessages';
    var MANAGE_MESSAGES = 'manageMessages';
    var EMBED_LINKS = 'embedLinks';
    var ATTACH_FILES = 'attachFiles';
    var READ_MESSAGE_HISTORY = 'readMessageHistory';
    var MENTION_EVERYONE = 'mentionEveryone';

    // Voice
    var VOICE_CONNECT = 'voiceConnect';
    var VOICE_SPEAK = 'voiceSpeak';
    var VOICE_MUTE_MEMBERS = 'voiceMuteMembers';
    var VOICE_DEAFEN_MEMBERS = 'voiceDeafenMembers';
    var VOICE_MOVE_MEMBERS = 'voiceMoveMembers';
    var VOICE_USE_VAD = 'voiceUseVAD';
}

class RoleData {
    public var color: Int;
    public var hoist: Bool;
    public var name: String;
    public var permissions: Array<Permission>;
}