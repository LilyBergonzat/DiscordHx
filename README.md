# DiscordHx

This is, as you already know if you read the description, a pack of externs to use [DiscordJS](https://github.com/hydrabolt/discord.js) with [Haxe](http://haxe.org/).

## History
Haxe is a strict meta language. That means you can code in Haxe and compile your code in other languages such as JavaScript. So I decided to create a bot using the DiscordJS library and Haxe. But this language has a strict compiler, and you can't just go "Yeah, instanciate Discord.Client, don't worry, I know what I'm doing!". You have to explain him how to work with the library using externs.

## Externs
Externs are a bridge between a Haxe code and a code in another language. It's a tool you can use as an interface to introduce an external library to Haxe. It works just like any other interface, except it's called an extern because it's interfacing something external (like the DiscordJS library). [More info](https://haxe.org/manual/lf-externs.html)

## Installation
You can either set DiscordHx as a dependency in your package.json, or you can clone this repository and execute `npm install`.

When you do so, it will trigger a post-install script that will create the folder `out` and install the `discord.js` dependency there. Now, you need to go in the `test` folder and make a copy of `AuthDetails_example.hx` that you will name `AuthDetails.hx`. Open this file and fill it with your Discord API credentials.

Then, you can run either `npm run test:ping` or `npm run test:avatar` to compile the ping example bot, or the avatar example bot. *.js files will be in the `out` folder. All that you need to do is run `node out/ping.js` or `node out/avatar.js`, and a bot will be launched.

## Contribution
Feel free to leave issues or to make pull requests! You can also contact me at elianwonhalf@gmail.com.