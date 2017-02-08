package discordhx;

import haxe.extern.EitherType;

@:native('(require("discord.js")).RichEmbed')
extern class RichEmbed {
    public var author: Dynamic;
    public var color: Int;
    public var description: String;
    public var fields: Array<Dynamic>;
    public var footer: Dynamic;
    public var image: Dynamic;
    public var thumbnail: Dynamic;
    public var timestamp: Date;
    public var title: String;
    public var url: String;

    public function new(?data: Dynamic): Void;
    public function addField(name: StringResolvable, value: StringResolvable, ?isInline: Bool): RichEmbed;
    public function setAuthor(name: StringResolvable, ?icon: String, ?url: String): RichEmbed;
    public function setColor(color: EitherType<String, EitherType<Int, Array<Int>>>): RichEmbed;
    public function setDescription(description: StringResolvable): RichEmbed;
    public function setFooter(text: StringResolvable, ?icon: String): RichEmbed;
    public function setImage(url: String): RichEmbed;
    public function setThumbnail(url: String): RichEmbed;
    public function setTimestamp(?timestamp: Date): RichEmbed;
    public function setTitle(title: StringResolvable): RichEmbed;
    public function setURL(url: String): RichEmbed;
}
