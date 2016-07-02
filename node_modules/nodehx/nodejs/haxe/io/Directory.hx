package nodejs.haxe.io;
import nodejs.fs.File;

/**
 * Class to wrap functionalities for the 'fs' package of nodejs.
 * @author 
 */
class Directory
{

	/**
	 * Traverse the folder and returns all files hit by the traversal.
	 * @param	p_path
	 * @param	p_callback
	 */
	static public function Traverse(p_path:String, p_callback : String->Void):Void
	{
		var p : String = StringTools.trim(p_path);
		if (p.charAt(p.length - 1) == "/") p = p.substr(0, p.length - 1);
		TraverseStep(p, "", p_callback);
	}
	
	/**
	 * Creates the directory system for the target path.
	 * @param	p_file
	 */
	static public function MkdirRecursive(p_path:String,p_mode:String="0777"):Void
	{
		p_path = StringTools.replace(p_path, "\\", "/");
		var p : Array<String> = p_path.split("/");
		var step : String = "";
		while (p.length > 0)
		{
			var it : String = p.shift();
			if (it.indexOf(".") >= 0) continue;
			step += step == "" ? it : ("/" + it);			
			if(!File.existsSync(step)) File.mkdirSync(step,p_mode);
		}		
	}
	
	/**
	 * Auxiliary method to traverse the directories.
	 * @param	p_root
	 * @param	p_current
	 * @param	p_callback
	 */
	static private function TraverseStep(p_root:String,p_current:String, p_callback : String->Void):Void
	{
		var p : String = p_root + p_current;
		
		//Check if its a file.
		if (p.indexOf(".") >= 0) { p_callback(p); return; }
		
		var list : Array<String> = File.readdirSync(p);
		for (i in 0...list.length)
		{
			TraverseStep(p+"/", list[i], p_callback);		
		}
	}
	
}