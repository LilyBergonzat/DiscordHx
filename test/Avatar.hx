package test;

import nodejs.Console;
import discordhx.channel.TextChannel;
import StringTools;
import discordhx.message.Message;
import discordhx.client.Client;

class Avatar {
    private var client: Client;

    public static function main() {
        new Avatar();
    }

    private function new() {
        client = new Client();

        client.on(cast ClientEvent.MESSAGE, messageHandler);
        client.login(AuthDetails.TOKEN, AuthDetails.PASSWORD).then(connectedHandler);
    }

    private function connectedHandler(token: String) {
        Console.info('Connected!');
    }

    private function messageHandler(message: Message) {
        if (StringTools.trim(message.content.toLowerCase()) == 'avatar') {
            var channel: TextChannel = cast message.channel;

            channel.sendFile(message.author.displayAvatarURL, message.author.id + '.jpg');
        }
    }
}
