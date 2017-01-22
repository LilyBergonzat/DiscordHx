package discordhx.presence;

@:enum
abstract PresenceStatus(String) to String {
    var ONLINE = 'online';
    var OFFLINE = 'offline';
    var IDLE = 'idle';
    var DND = 'dnd';
}