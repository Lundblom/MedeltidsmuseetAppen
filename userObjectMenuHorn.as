package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	
	public class userObjectMenuHorn extends SimpleButton {
		
		
		public function userObjectMenuHorn() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).selectedPanel = 0;
			appEngine(parent).gotoAndStop("userObjectScreen");
		}
	}
	
}
