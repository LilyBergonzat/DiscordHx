package discordhx.shard;

import discordhx.client.Client;
import js.Promise;

@:native('(require("discord.js")).ShardClientUtil')
extern class ShardClientUtil {
    public var count: Int;
    public var id: Int;

    public static function singleton(client: Client): ShardClientUtil;

    public function new(client: Client): Void;
    public function broadcastEval(script: String): Promise<Array<Dynamic>>;
    public function fetchClientValues(prop: String): Promise<Array<Dynamic>>;
    public function send(message: Dynamic): Promise<Void>;
}
