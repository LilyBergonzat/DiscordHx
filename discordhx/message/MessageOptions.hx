package discordhx.message;

import haxe.extern.EitherType;

typedef MessageOptions = {
    var tts: Bool;
    var nonce: String;
    var disableEveryone: Bool;
    var split: EitherType<Bool, SplitOptions>;
}
