package discordhx;

import discordhx.js.JSMap;
import haxe.extern.EitherType;
import js.Promise;

@:native('(require("discord.js")).Collection')
extern class Collection<K, V> extends JSMap<K, V> {
    public function array(): Array<V>;
    public function concat(collections: Collection<K, V>): Collection<K, V>;
    public function deleteAll(): Array<Promise<Void>>;
    public function equals(collection: Collection<K, V>): Bool;
    public function every(fn: V->Bool, ?thisArg: Dynamic): Bool;
    public function exists(prop: K, value: V): Bool;
    public function filter(fn: V->Bool, ?thisArg: Dynamic): Collection<K, V>;
    public function filterArray(fn: V->Bool, ?thisArg: Dynamic): Collection<K, V>;
    public function find(propOrFn: EitherType<String, V->Bool>, ?value: Dynamic): V;
    public function findAll(prop: String, ?value: Dynamic): Array<V>;
    public function findKey(propOrFn: EitherType<String, V->Bool>, ?value: Dynamic): K;
    public function first(): V;
    public function firstKey(): K;
    public function keyArray(): Array<K>;
    public function last(): V;
    public function lastKey(): K;
    public function map(fn: V->K->Collection<K, V>, ?thisArg: Dynamic): Array<Dynamic>;
    public function random(): V;
    public function randomKey(): K;
    public function reduce(fn: Dynamic->V->K->Collection<K, V>, ?startVal: Dynamic): Bool;
    public function some(fn: V->K->Collection<K, V>, ?thisArg: Dynamic): Bool;
}
