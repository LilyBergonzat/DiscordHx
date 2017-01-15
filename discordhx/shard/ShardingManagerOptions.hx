package discordhx.shard;

import haxe.extern.EitherType;

typedef ShardingManagerOptions = {
    var totalShards: EitherType<Int, String>;
    var respawn: Bool;
    var shardArgs: Array<String>;
    var token: String;
}
