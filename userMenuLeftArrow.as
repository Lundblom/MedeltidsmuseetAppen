package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class userMenuLeftArrow extends MovieClip {
		
		
		public function userMenuLeftArrow() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			
		}
		
		public function onClick(e)
		{
			appEngine(parent).theHandler.changeIndex(1);
		}
	}
	
}
