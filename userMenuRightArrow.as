package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class userMenuRightArrow extends MovieClip {
		
		
		public function userMenuRightArrow() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			
		}
		
		public function onClick(e)
		{
			appEngine(parent).theHandler.changeIndex(-1);
		}
	}
	
}
