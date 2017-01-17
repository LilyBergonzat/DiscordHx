package test;

import js.Promise;
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

        var connectionPromise: Promise<String> = client.login(AuthDetails.TOKEN, AuthDetails.PASSWORD);

        connectionPromise.then(connectedHandler);
        connectionPromise.catchError(connectionErrorHandler);
    }

    private function connectedHandler(token: String) {
        Console.info('Connected!');
    }

    private function connectionErrorHandler(token: String) {
        Console.error('Error while trying to connect!');
    }

    private function messageHandler(message: Message) {
        if (StringTools.trim(message.content.toLowerCase()) == 'ping') {
            var messageSendingPromise: Promise<Message> = message.reply('Pong!');

            messageSendingPromise.then(messageSentHandler);
            messageSendingPromise.catchError(messageSendingErrorHandler);
        }
    }

    private function messageSentHandler(message: Message) {
        Console.info('Pong sent!');
    }

    private function messageSendingErrorHandler(message: Message) {
        Console.error('Error while sending pong!');
    }
}
