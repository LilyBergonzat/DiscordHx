package discordhx.js;

@:native("Map")
extern class JSMap<K, V> {
    public var size(default, null): Int;

    public function new(): Void;
    public function set(key: K, value: V): V;
    public function get(key: K): V;
    public function has(key: K): Bool;
    public function delete(key: K): Bool;
    public function keys(): Array<K>;
    public function values(): Array<V>;
    public function clear(): Void;
}
