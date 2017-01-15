package discordhx.presence;

typedef PresenceData = {
    var status: PresenceStatus;
    var afk: Bool;
    var game: PresenceDataGame;
};

typedef PresenceDataGame = {
    var name: String;
    var url: String;
}
