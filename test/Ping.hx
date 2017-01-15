package test;

import nodejs.Console;
import StringTools;
import discordhx.message.Message;
import discordhx.client.Client;

class Ping {
    private var client: Client;

    public static function main() {
        new Ping();
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
        if (StringTools.trim(message.content.toLowerCase()) == 'ping') {
            message.reply('Pong!');
        }
    }
}
