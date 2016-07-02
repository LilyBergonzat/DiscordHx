package discordhx.permission;

class SerializedPermissions {
    // General
    var createInstantInvite: Bool;
    var kickMembers: Bool;
    var banMembers: Bool;
    var manageRoles: Bool;
    var managePermissions: Bool;
    var manageChannels: Bool;
    var manageChannel: Bool;
    var manageServer: Bool;

    // Text
    var readMessages: Bool;
    var sendMessages: Bool;
    var sendTTSMessages: Bool;
    var manageMessages: Bool;
    var embedLinks: Bool;
    var attachFiles: Bool;
    var readMessageHistory: Bool;
    var mentionEveryone: Bool;

    // Voice
    var voiceConnect: Bool;
    var voiceSpeak: Bool;
    var voiceMuteMembers: Bool;
    var voiceDeafenMembers: Bool;
    var voiceMoveMembers: Bool;
    var voiceUseVAD: Bool;
}
