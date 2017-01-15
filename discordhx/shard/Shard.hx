package discordhx.shard;

import js.Promise;
import nodejs.ChildProcess;

@:native('(require("discord.js")).Shard')
extern class Shard {
    public var env: Dynamic;
    public var id: Int;
    public var manager: ShardingManager;
    public var process: ChildProcess;

    public function new(manager: ShardingManager, id: Int, ?args: Array<String>): Void;
    public function eval(script: String): Promise<Dynamic>;
    public function fetchClientValue(prop: String): Promise<Dynamic>;
    public function send(message: Dynamic): Promise<Shard>;
}
