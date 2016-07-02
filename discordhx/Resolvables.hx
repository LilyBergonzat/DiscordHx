package discordhx;

import nodejs.Buffer;
import discordhx.channel.ServerChannel;
import discordhx.channel.PMChannel;
import discordhx.channel.TextChannel;
import discordhx.channel.VoiceChannel;
import discordhx.permission.Role;
import discordhx.user.User;
import discordhx.message.Message;
import discordhx.channel.Channel;
import haxe.extern.EitherType;

class Resolvables {}

typedef ChannelResolvable = EitherType<Channel, EitherType<Server, EitherType<Message, EitherType<User, String>>>>
typedef FileResolvable = String
typedef RoleResolvable = EitherType<String, Role>
typedef VoiceChannelResolvable = EitherType<String, VoiceChannel>
typedef MessageResolvable = EitherType<Message, EitherType<TextChannel, PMChannel>>
typedef UserResolvable = EitherType<User, EitherType<Message, EitherType<TextChannel, EitherType<PMChannel, EitherType<Server, String>>>>>
typedef StringResolvable = EitherType<Array<EitherType<String, EitherType<Float, Int>>>, String>
typedef ServerResolvable = EitherType<Server, EitherType<ServerChannel, EitherType<Message, String>>>
typedef InviteResolvable = EitherType<Invite, String>
typedef Base64Resolvable = EitherType<Buffer, String>