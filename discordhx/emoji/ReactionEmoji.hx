package discordhx.emoji;

import discordhx.message.MessageReaction;

extern class ReactionEmoji {
    public var id: String;
    public var identifier: String;
    public var name: String;
    public var reaction: MessageReaction;

    public function toString(): String;
}
