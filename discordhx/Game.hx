package discordhx;

extern class Game {
    public var name: String;
    public var streaming: Bool;
    public var type: Float;
    public var url: String;

    public function equals(other: Game): Bool;
}
