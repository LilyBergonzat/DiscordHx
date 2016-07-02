package discordhx;

extern class Cache<T> extends Array<T> {
    public function get(key: String, value: Dynamic): T;
    public function getAll(key: String, value: Dynamic): Cache<T>;
    public function has(key: String, value: Dynamic): Bool;
    public function add(data: T): Void;
    public function update(old: T, data: T): Bool;
    public function random(): T;
}
