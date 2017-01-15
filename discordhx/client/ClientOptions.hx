package discordhx.client;

import discordhx.websocket.WebsocketOptions;

typedef ClientOptions = {
    var apiRequestMethod: String;
    var shardId: Float;
    var shardCount: Float;
    var messageCacheMaxSize: Float;
    var sync: Bool;
    var messageCacheLifetime: Float;
    var messageSweepInterval: Float;
    var fetchAllMembers: Bool;
    var disableEveryone: Bool;
    var restWsBridgeTimeout: Float;
    var disabledEvents: Array<String>;
    var ws: WebsocketOptions;
}
