package discordhx.message;

import discordhx.emoji.ReactionEmoji;
import discordhx.emoji.Emoji;
import discordhx.user.UserResolvable;
import js.Promise;
import discordhx.user.User;
import haxe.extern.EitherType;

extern class MessageReaction {
    public var count: Int;
    public var emoji: EitherType<Emoji, ReactionEmoji>;
    public var me: Bool;
    public var message: Message;
    public var users: Collection<String, User>;

    public function fetchUsers(?limit: Int): Promise<Collection<String, User>>;
    public function remove(?user: UserResolvable): Promise<MessageReaction>;
}
