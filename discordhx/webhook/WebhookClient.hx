package discordhx.webhook;

import discordhx.client.ClientOptions;

@:native('(require("discord.js")).WebhookClient')
extern class WebhookClient extends Webhook {
    public var options: ClientOptions;

    public function new(id: String, token: String, ?options: ClientOptions): Void;
}
