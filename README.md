# DiscordHx

This is, as you already know if you read the description, a pack of externs to use [DiscordJS](https://github.com/hydrabolt/discord.js) with [Haxe](http://haxe.org/).

## History
Haxe is a strict meta language. That means you can code in Haxe and compile your code in other languages such as JavaScript. So I decided to create a bot using the DiscordJS library and Haxe. But this language has a strict compiler, and you can't just go "Yeah, instanciate Discord.Client, don't worry, I know what I'm doing!". You have to explain him how to work with the library using externs.

## Externs
Externs are a bridge between a Haxe code and a code in another language. It's a tool you can use as an interface to introduce an external library to Haxe. It works just like any other interface, except it's called an extern because it's interfacing something external (like the DiscordJS library). [More info](https://haxe.org/manual/lf-externs.html)

## The ping-pong example
DiscordJS show this code as an example on how to use the library :

```js
var Discord = require("discord.js");

var mybot = new Discord.Client();

mybot.on("message", function(message) {
    if(message.content === "ping") {
        mybot.reply(message, "pong");
    }
});

mybot.loginWithToken("token");
// If you still need to login with email and password, use mybot.login("email", "password");
```

I will just translate it in Haxe :

```haxe
package ;

import discordhx.client.Client;
import discordhx.message.Message;

class Bot {
    public static function main() {
        var mybot: Client = new Client();

        mybot.on(cast ClientEventType.MESSAGE, function(message: Message) {
            if(message.content == "ping") {
                mybot.reply(message, "pong");
            }
        });

        mybot.loginWithToken("token");
        // If you still need to login with email and password, use mybot.login("email", "password");
    }
}
```

## Contribution
Feel free to leave issues or to make pull requests! You can also contact me at elianwonhalf@gmail.com.