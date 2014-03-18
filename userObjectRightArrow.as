package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class userObjectRightArrow extends MovieClip {
		
		
		public function userObjectRightArrow() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).gotoAndStop("userObjectScreen");
		}
	}
	
}
