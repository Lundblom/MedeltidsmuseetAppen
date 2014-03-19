package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	
	public class creditsBox extends MovieClip {
		
		
		public function creditsBox(X:int, Y:int) 
		{
			x = X;
			y = Y;
			
			addEventListener(KeyboardEvent.KEY_DOWN, onClick);
		}
		
		public function onClick(e)
		{
			if(e.keyCode == 27)
			{
				x = -100000000;
			}
		}
	}
	
}
