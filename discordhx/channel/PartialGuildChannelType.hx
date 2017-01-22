package discordhx.channel;

@:enum
abstract PartialGuildChannelType (String) to String {
    var TEXT = 'text';
    var VOICE = 'voice';
}
