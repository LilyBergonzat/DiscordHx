package discordhx.channel;

import discordhx.client.Client;
import discordhx.Object;

extern class Channel extends Equality implements Object {
    public var client: Client;
    public var isPrivate: Bool;

    public function delete(): Void;
}
