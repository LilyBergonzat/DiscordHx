package discordhx.channel;

import discordhx.voice.VoiceConnection;
import discordhx.permission.PermissionOverwrites;
import discordhx.guild.GuildMember;
import js.Promise;

extern class VoiceChannel extends GuildChannel {
    public var bitrate: Float;
    public var connection: VoiceConnection;
    public var joinable: Bool;
    public var members: Collection<String, GuildMember>;
    public var permissionsOverwrites: Collection<String, PermissionOverwrites>;
    public var speakable: Bool;
    public var userLimit: Int;

    public function join(): Promise<VoiceConnection>;
    public function leave(): Void;
    public function setBitrate(bitrate: Float): Promise<VoiceChannel>;
}
