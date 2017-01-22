package discordhx.client;

import discordhx.shard.ShardClientUtil;
import discordhx.emoji.Emoji;
import discordhx.invite.Invite;
import haxe.extern.Rest;
import discordhx.permission.PermissionResolvable;
import discordhx.webhook.Webhook;
import discordhx.presence.Presence;
import nodejs.events.EventEmitter;
import discordhx.user.User;
import discordhx.channel.Channel;
import discordhx.invite.InviteResolvable;
import haxe.extern.EitherType;
import js.Promise;
import discordhx.voice.VoiceConnection;
import discordhx.guild.Guild;

@:native('(require("discord.js")).Client')
extern class Client extends EventEmitter {
    public var browser: Bool;
    public var channels: Collection<String, Channel>;
    public var emojis: Collection<String, Emoji>;
    public var guilds: Collection<String, Guild>;
    public var options: ClientOptions;
    public var ping: Float;
    public var pings: Array<Float>;
    public var presences: Collection<String, Presence>;
    public var readyAt: Date;
    public var readyTimestamp: Float;
    public var shard: ShardClientUtil;
    public var status: Float;
    public var token: String;
    public var uptime: Float;
    public var user: ClientUser;
    public var users: Collection<String, User>;
    public var voiceConnections: Collection<String, VoiceConnection>;

    public function new(?options: ClientOptions): Void;
    public function clearInterval(interval: Int): Void;
    public function clearTimeout(interval: Int): Void;
    public function destroy(): Promise<Void>;
    public function fetchApplication(): Promise<ClientOAuth2Application>;
    public function fetchInvite(invite: InviteResolvable): Promise<Invite>;
    public function fetchUser(id: String): Promise<User>;
    public function fetchWebhook(id: String, ?token: String): Promise<Webhook>;
    public function generateInvite(?permissions: EitherType<Array<PermissionResolvable>, Int>): Promise<String>;
    public function login(tokenOrEmail: String, ?password: String): Promise<String>;
    public function setInterval(fn: Void->Void, delay: Int, args: Rest<Dynamic>): Int;
    public function setTimeout(fn: Void->Void, delay: Int, args: Rest<Dynamic>): Int;
    public function sweepMessages(?lifetime: Float): Float;
    public function syncGuilds(?guilds:EitherType<Array<Guild>, Collection<String, Guild>>): Void;
}

@:enum
abstract ClientEvent(String) to String {
    var CHANNEL_CREATE = 'channelCreate';
    var CHANNEL_DELETE = 'channelDelete';
    var CHANNEL_PINS_UPDATE = 'channelPinsUpdate';
    var CHANNEL_UPDATE = 'channelUpdate';
    var DEBUG = 'debug';
    var DISCONNECT = 'disconnect';
    var EMOJI_CREATE = 'emojiCreate';
    var EMOJI_DELETE = 'emojiDelete';
    var EMOJI_UPDATE = 'emojiUpdate';
    var ERROR = 'error';
    var GUILD_BAN_ADD = 'guildBanAdd';
    var GUILD_BAN_REMOVE = 'guildBanRemove';
    var GUILD_CREATE = 'guildCreate';
    var GUILD_DELETE = 'guildDelete';
    var GUILD_MEMBER_ADD = 'guildMemberAdd';
    var GUILD_MEMBER_AVAILABLE = 'guildMemberAvailable';
    var GUILD_MEMBER_REMOVE = 'guildMemberRemove';
    var GUILD_MEMBERS_CHUNK = 'guildMembersChunk';
    var GUILD_MEMBER_SPEAKING = 'guildMemberSpeaking';
    var GUILD_MEMBER_UPDATE = 'guildMemberUpdate';
    var GUILD_UNAVAILABLE = 'guildUnavailable';
    var GUILD_UPDATE = 'guildUpdate';
    var MESSAGE = 'message';
    var MESSAGE_DELETE = 'messageDelete';
    var MESSAGE_DELETE_BULK = 'messageDeleteBulk';
    var MESSAGE_REACTION_ADD = 'messageReactionAdd';
    var MESSAGE_REACTION_REMOVE = 'messageReactionRemove';
    var MESSAGE_REACTION_REMOVE_ALL = 'messageReactionRemoveAll';
    var MESSAGE_UPDATE = 'messageUpdate';
    var PRESENCE_UPDATE = 'presenceUpdate';
    var READY = 'ready';
    var RECONNECTING = 'reconnecting';
    var ROLE_CREATE = 'roleCreate';
    var ROLE_DELETE = 'roleDelete';
    var ROLE_UPDATE = 'roleUpdate';
    var TYPING_START = 'typingStart';
    var TYPING_STOP = 'typingStop';
    var USER_NOTE_UPDATE = 'userNoteUpdate';
    var USER_UPDATE = 'userUpdate';
    var VOICE_STATE_UPDATE = 'voiceStateUpdate';
    var WARN = 'warn';
}
