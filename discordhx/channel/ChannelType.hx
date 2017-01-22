package discordhx.channel;

@:enum
abstract ChannelType (String) to String {
    var DM = 'dm';
    var GROUP = 'group';
    var TEXT = 'text';
    var VOICE = 'voice';
}
