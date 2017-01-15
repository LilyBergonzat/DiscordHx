package discordhx.presence;

extern class Presence {
    public var game: Game;
    public var status: PresenceStatus;

    public function equals(other: Presence): Bool;
}
