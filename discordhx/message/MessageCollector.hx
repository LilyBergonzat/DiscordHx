package discordhx.message;

import nodejs.events.EventEmitter;
import js.Promise;
import discordhx.collector.CollectorOptions;
import discordhx.collector.CollectorFilterFunction;
import discordhx.channel.Channel;

@:native('(require("discord.js")).MessageCollector')
extern class MessageCollector extends EventEmitter {
    public var channel: Channel;
    public var collected: Collection<String, Message>;
    public var ended: Bool;
    public var filter: CollectorFilterFunction;
    public var next: Promise<Message>;
    public var options: CollectorOptions;

    public function new(channel: Channel, filter: CollectorFilterFunction, ?options: CollectorOptions): Void;
    public function stop(?reason: String): Void;
    public function verify(message: Message): Bool;
}

@:enum
abstract MessageCollectorEvent(String) {
    var END = 'end';
    var MESSAGE = 'message';
}
