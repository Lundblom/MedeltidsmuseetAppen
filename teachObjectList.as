package  {
	
	import flash.display.MovieClip;
	
	
	public class teachObjectList extends MovieClip {
		
		var entriesInList:int = 15;
		
		var allEntries:Array = new Array("Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337");
		
		public function teachObjectList() 
		{
			update(0);
		}
		
		public function update(pos:Number)
		{
			var max:int = clamp((pos * allEntries.length), entriesInList, allEntries.length);
			var min:int = clamp((max - 12), 0, max);
			entries.text = "";
			
			
			for(var i = min; i < max; i++)
			{
				entries.appendText(allEntries[i] + "\n");
			}
		}
		
		function clamp(val:Number, min:Number, max:Number)
		{
    		return Math.max(min, Math.min(max, val))
		}
		
	}
	
}
