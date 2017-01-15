package discordhx.presence;

@:enum
abstract PresenceStatus(String) {
    var ONLINE = 'online';
    var OFFLINE = 'offline';
    var IDLE = 'idle';
    var DND = 'dnd';
}