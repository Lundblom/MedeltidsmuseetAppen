package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	public class passwordBox extends MovieClip 
	{
		addEventListener(KeyboardEvent.KEY_UP, onClick);
		
		public function passwordBox(X, Y)
		{
			x = X;
			y = Y;
		}
		
		public function onClick(e)
		{
			appEngine(parent).removeChild(this);
		}
	}
	
	
	
}
