package discordhx.webhook;

import discordhx.message.Message;
import haxe.extern.EitherType;
import js.Promise;
import discordhx.client.Client;

extern class Webhook {
    public var avatar: String;
    public var channelID: String;
    public var client: Client;
    public var guildID: String;
    public var id: String;
    public var name: String;
    public var token: String;

    public function delete(): Promise<Void>;
    public function edit(name: String, avatar: BufferResolvable): Promise<Webhook>;
    public function sendCode(lang: String, content: StringResolvable, ?options: WebhookMessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendFile(attachment: BufferResolvable, ?fileName: String, ?content: StringResolvable, ?options: WebhookMessageOptions): Promise<Message>;
    public function sendMessage(content: StringResolvable, ?options: WebhookMessageOptions): Promise<EitherType<Message, Array<Message>>>;
    public function sendSlackMessage(body: Dynamic): Promise<Void>;
    public function sendTTSMessage(content: StringResolvable, ?options: WebhookMessageOptions): Promise<EitherType<Message, Array<Message>>>;
}
