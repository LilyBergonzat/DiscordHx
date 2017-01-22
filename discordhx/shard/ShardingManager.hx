package discordhx.shard;

import haxe.extern.EitherType;
import js.Promise;

@:native('(require("discord.js")).ShardingManager')
extern class ShardingManager {
    public var file: String;
    public var respawn: Bool;
    public var shardArgs: Array<String>;
    public var shards: Collection<Int, Shard>;
    public var token: String;
    public var totalShards: EitherType<Int, String>;

    public function new(file: String, options: ShardingManagerOptions): Void;
    public function broadcast(message: Dynamic): Promise<Array<Shard>>;
    public function broadcastEval(script: String): Promise<Array<Dynamic>>;
    public function createShard(id: Int): Promise<Shard>;
    public function fetchClientValues(prop: String): Promise<Array<Dynamic>>;
    public function spawn(?amount: Int, ?delay: Int): Promise<Collection<Int, Shard>>;
}

@:enum
abstract ShardingManagerEvent(String) to String {
    var LAUNCH = 'launch';
    var MESSAGE = 'message';
}
