package discordhx.message;

extern class MessageEmbedField {
    public var embed: MessageEmbed;
    public var isInline(get, set): Bool;
    public var name: String;
    public var value: String;

    inline function get_isInline(): Bool {
        return untyped this['inline'];
    }

    inline function set_isInline(isInline: Bool): Bool {
        return untyped this['inline'] = isInline;
    }
}
