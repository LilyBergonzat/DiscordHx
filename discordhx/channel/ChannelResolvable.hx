package discordhx.channel;

import discordhx.message.Message;
import discordhx.guild.Guild;
import haxe.extern.EitherType;

typedef ChannelResolvable = EitherType<Channel, EitherType<Guild, EitherType<Message, String>>>;
