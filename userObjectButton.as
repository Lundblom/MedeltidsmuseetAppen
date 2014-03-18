package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class userObjectButton extends  MovieClip
	{
		var pressed = false;
		var id = 1;
		
		public function userObjectButton() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			stop();
		}
		
		public function onClick(e)
		{
			pressed = !pressed;
			
			gotoAndStop(pressed + 1);
		}
	}
	
}
