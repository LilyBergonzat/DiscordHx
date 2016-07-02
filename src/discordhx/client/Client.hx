package discordhx.client;

import discordhx.Resolvables.ChannelResolvable;
import discordhx.Resolvables.FileResolvable;
import discordhx.Resolvables.ServerResolvable;
import discordhx.Resolvables.InviteResolvable;
import discordhx.Resolvables.UserResolvable;
import discordhx.Resolvables.Base64Resolvable;
import discordhx.Resolvables.VoiceChannelResolvable;
import discordhx.Resolvables.RoleResolvable;
import discordhx.channel.Channel;
import haxe.extern.EitherType;
import discordhx.message.Message;
import discordhx.user.User;
import discordhx.permission.PermissionOverwrite.OverwritePermissionsOptions;
import discordhx.message.MessageOptions;
import discordhx.UserAgent;
import discordhx.Server;
import discordhx.Server.ServerRegion;
import discordhx.permission.Role;
import discordhx.channel.ServerChannel;
import discordhx.channel.PMChannel;
import nodejs.events.EventEmitter;

@:native('(require("discord.js")).Client')
extern class Client extends EventEmitter {
    public var users: Cache<User>;
    public var channels: Cache<ServerChannel>;
    public var privateChannels: Cache<PMChannel>;
    public var servers: Cache<Server>;
    public var unavailableServers: Cache<Server>;
    public var voiceConnections: Cache<VoiceConnection>;
    public var voiceConnection: VoiceConnection;
    public var readyTime: Int;
    public var uptime: Int;
    public var user: User;
    public var userAgent: UserAgent;

    public function new(): Void;
    public function login(email: String, password: String, ?callback: Dynamic->String->Void): Void;
    public function loginWithToken(token: String, ?email: String, ?password: String, ?callback: Dynamic->String->Void): Void;
    public function logout(?callback: Dynamic->Void): Void;
    public function destroy(?callback: Dynamic->Void): Void;
    public function sendMessage(channel: ChannelResolvable, content: String, ?options: MessageOptions, ?callback: Dynamic->Message->Void): Void;
    public function sendTTSMessage(destination: ChannelResolvable, content: String, ?callback: Dynamic->Message->Void): Void;
    public function sendFile(channel: ChannelResolvable, attachment: FileResolvable, name: String, ?callback: Dynamic->Message->Void): Void;
    public function reply(message: Message, content: String, ?options: MessageOptions, ?callback: Dynamic->Message->Void): Void;
    public function replyTTS(message: Message, content: String, ?callback: Dynamic->Message->Void): Void;
    public function updateMessage(message: Message, content: String, ?options: Dynamic, ?callback: Dynamic->Message->Void): Void;
    public function deleteMessage(message: Message, ?options: Dynamic, ?callback: Dynamic->Void): Void;
    public function getChannelLogs(where: Channel, ?limit: Int, ?options: Dynamic, ?callback: Dynamic->Array<Message>->Void): Void;
    public function getBans(server: ServerResolvable, ?callback: Dynamic->Array<Dynamic>->Void): Void;
    public function joinServer(invite: InviteResolvable, ?callback: Dynamic->Server->Void): Void;
    public function createServer(name: String, region: ServerRegion, ?callback: Dynamic->Server->Void): Void;
    public function leaveServer(server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function createChannel(server: ServerResolvable, name: String, ?type: ServerChannelType, ?callback: Dynamic->ServerChannel->Void): Void;
    public function deleteChannel(channel: ChannelResolvable, ?callback: Dynamic->Void): Void;
    public function banMember(user: UserResolvable, server: ServerResolvable, ?length: Int, ?callback: Dynamic->Void): Void;
    public function unbanMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function kickMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function moveMember(user: UserResolvable, channel: ChannelResolvable, ?callback: Dynamic->Void): Void;
    public function createInvite(channel: ChannelResolvable, ?options: Dynamic, ?callback: Dynamic->Invite->Void): Void;
    public function getInvite(invite: InviteResolvable, ?options: Dynamic, ?callback: Dynamic->Invite->Void): Void;
    public function deleteInvite(invite: InviteResolvable, ?callback: Dynamic->Void): Void;
    public function setStatus(status: ClientStatus, game: Int, ?callback: Dynamic->Void): Void;
    public function setStatusIdle(): Void;
    public function setStatusAway(): Void;
    public function setStatusOnline(): Void;
    public function setStatusHere(): Void;
    public function setStatusActive(): Void;
    public function setStatusAvailable(): Void;
    public function setChannelTopic(channel: ChannelResolvable, topic: String, ?callback: Dynamic->Void): Void;
    public function setChannelName(channel: ChannelResolvable, name: String, ?callback: Dynamic->Void): Void;
    public function setChannelNameAndTopic(channel: ChannelResolvable, name: String, topic: String, ?callback: Dynamic->Void): Void;
    public function startTyping(channel: ChannelResolvable, ?callback: Dynamic->Void): Void;
    public function stopTyping(channel: ChannelResolvable, ?callback: Dynamic->Void): Void;
    public function updateDetails(details: ClientDetails, ?callback: Dynamic->Void): Void;
    public function setAvatar(avatar: Base64Resolvable, ?callback: Dynamic->Void): Void;
    public function setUsername(name: String, ?callback: Dynamic->Void): Void;
    public function joinVoiceChannel(channel: VoiceChannelResolvable, ?callback: Dynamic->VoiceConnection->Void): Void;
    public function leaveVoiceChannel(?callback: Dynamic->Void): Void;
    public function createRole(server: ServerResolvable, ?data: RoleData, ?callback: Dynamic->Role->Void): Void;
    public function updateRole(role: Role, data: RoleData, ?callback: Dynamic->Role->Void): Void;
    public function deleteRole(role: Role, ?callback: Dynamic->Void): Void;
    public function addMemberToRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>, ?callback: Dynamic->Void): Void;
    public function addUserToRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>, ?callback: Dynamic->Void): Void;
    public function memberHasRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>): Void;
    public function userHasRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>): Void;
    public function removeMemberFromRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>, ?callback: Dynamic->Void): Void;
    public function removeUserFromRole(member: UserResolvable, role: EitherType<RoleResolvable, Array<RoleResolvable>>, ?callback: Dynamic->Void): Void;
    public function overwritePermissions(channel: ChannelResolvable, roleOrUser: EitherType<Role, User>, options: OverwritePermissionsOptions, ?callback: Dynamic->Void): Void;
    public function muteMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function unmuteMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function deafenMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
    public function undeafenMember(user: UserResolvable, server: ServerResolvable, ?callback: Dynamic->Void): Void;
}

@:enum
abstract ClientStatus(String) {
    var ONLINE = 'online';
    var IDLE = 'idle';
}

@:enum
abstract ClientEventType(String) {
    var READY = 'ready';
    var DEBUG = 'debug';
    var MESSAGE = 'message';
    var WARN = 'warn';
    var MESSAGE_DELETED = 'messageDeleted';
    var MESSAGE_UPDATED = 'messageUpdated';
    var DISCONNECTED = 'disconnected';
    var ERROR = 'error';
    var RAW = 'raw';
    var SERVER_CREATED = 'serverCreated';
    var SERVER_DELETED = 'serverDeleted';
    var SERVER_UPDATED = 'serverUpdated';
    var CHANNEL_CREATED = 'channelCreated';
    var CHANNEL_DELETED = 'channelDeleted';
    var CHANNEL_UPDATED = 'channelUpdated';
    var SERVER_ROLE_CREATED = 'serverRoleCreated';
    var SERVER_ROLE_DELETED = 'serverRoleDeleted';
    var SERVER_ROLE_UPDATED = 'serverRoleUpdated';
    var SERVER_NEW_MEMBER = 'serverNewMember';
    var SERVER_MEMBER_REMOVED = 'serverMemberRemoved';
    var SERVER_MEMBER_UPDATED = 'serverMemberUpdated';
    var PRESENCE = 'presence';
    var USER_TYPING_STARTED = 'userTypingStarted';
    var USER_TYPING_STOPPED = 'userTypingStopped';
    var USER_BANNED = 'userBanned';
    var USER_UNBANNED = 'userUnbanned';
    var VOICE_JOIN = 'voiceJoin';
    var VOICE_LEAVE = 'voiceLeave';
    var VOICE_STATE_UPDATE = 'voiceStateUpdate';
}
