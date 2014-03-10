package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	
	public class passwordBox extends MovieClip 
	{
		var password = "hejsan";
		var screenName;
		var returnScreen;
		
		public function passwordBox(_screenName:String, _returnScreen:String) 
		{
			addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
			screenName = _screenName;
			returnScreen = _returnScreen;
			x =  1280 / 2;
			y = 720 / 2;
		}
		
		public function onKeyPress(e)
		{
			if(e.keyCode == "13")
			{
				if(passwordField.text == password)
				{
					appEngine(parent).gotoAndStop(screenName);
					appEngine(parent).removeChild(this);
					removeEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
				}
			}
			if(e.keyCode == "27")
			{
				appEngine(parent).removeChild(this);
				appEngine(parent).gotoAndStop(returnScreen);
				removeEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
			}
		}
	}
	
}
