package discordhx.user;

import discordhx.guild.GuildMember;
import discordhx.message.Message;
import discordhx.guild.Guild;
import haxe.extern.EitherType;

typedef UserResolvable = EitherType<User, EitherType<String, EitherType<Message, EitherType<Guild, GuildMember>>>>;
