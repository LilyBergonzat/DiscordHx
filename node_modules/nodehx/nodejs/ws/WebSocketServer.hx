package nodejs.ws;
import haxe.ds.ObjectMap;
import nodejs.events.EventEmitter;
import nodejs.http.HTTPServer;
import nodejs.http.IncomingMessage;
import nodejs.net.TCPSocket;

class WebSocketServerEventType
{
	/**
	 * function (error) { }
	 * If the underlying server emits an error, it will be forwarded here.
	 */
	static public var Error : String = "error";
	
	/**
	 * function (headers) { }
	 * Emitted with the object of HTTP headers that are going to be written to the Stream as part of the handshake.
	 */
	static public var Headers : String = "headers";
	
	/**
	 * function (socket) { }
	 * When a new WebSocket connection is established. socket is an object of type ws.WebSocket.
	 */
	static public var Connection : String = "connection";	

}

extern class WebSocketServerOption
{
	
	var host : String;
	
	var port : Int;
	
	var server : HTTPServer;
	
	var verifyClient : Dynamic;
	
	var path : String;
	
	var noServer : Bool;
	
	var disableHixie : Bool;
	
	var clientTracking : Bool;
}

/**
 * ...
 * @author Eduardo Pons - eduardo@thelaborat.org
 */
@:native("(require('ws').Server)")
extern class WebSocketServer extends EventEmitter
{

	public var clients : Array<WebSocket>;

	/**
	 * Construct a new server object.
	 * Either port or server must be provided, otherwise you might enable noServer if you want to pass the requests directly.
	 * Please note that the callback is only used when you supply the a port number in the options.
	 * @param	p_options
	 * @param	p_callback
	 */
	@:overload(function(p_options:WebSocketServerOption):Void{})
	public function new(p_options:WebSocketServerOption, p_callback : Dynamic);
	
	/**
	 * Close the server and terminate all clients
	 * @param	p_code
	 * @param	p_data
	 */
	@:overload(function():Void{})
	@:overload(function(p_code:Int):Void{})
	function close(p_code:Int, p_data : Dynamic):Void;
	
	/**
	 * Handles a HTTP Upgrade request. request is an instance of http.ServerRequest, socket is an instance of net.Socket.
	 * When the Upgrade was successfully, the callback will be called with a ws.WebSocket object as parameter.
	 * @param	p_request
	 * @param	p_socket
	 * @param	p_upgradeHead
	 * @param	p_callback
	 */
	function handleUpgrade(p_request : IncomingMessage, p_socket : TCPSocket, p_upgradeHead : Dynamic, p_callback : WebSocket -> Void):Void;
}
