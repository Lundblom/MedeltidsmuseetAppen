package  {
	
	import flash.display.MovieClip;
	
	
	public class userMainMenuHandler extends MovieClip 
	{
		var index = 0;
		
		var panelArray:Array = new Array("Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337", 
										 "Sten", "Grus", "Vas", "Gräs", "Fest", "Olle", "Mange", "Ivar", "1337");
		
		public function userMainMenuHandler() 
		{
			updatePanels();
		}
		
		public function getIndexOf(index:int)
		{
			if(index < 0)
				return(panelArray.length - 1);
			if(index > panelArray.length - 1)
				return(0)
			return index;
		}
		
		public function changeIndex(delta:int)
		{
			index = getIndexOf(index + delta);
			updatePanels();
		}
		
		public function updatePanels()
		{
			appEngine(parent).panel0.textField.text = panelArray[getIndexOf(index - 1)];
			appEngine(parent).panel1.textField.text = panelArray[getIndexOf(index)];
			appEngine(parent).panel2.textField.text = panelArray[getIndexOf(index + 1)];
		}
	}
	
}
