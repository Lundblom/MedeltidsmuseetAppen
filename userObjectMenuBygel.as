package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	
	public class userObjectMenuBygel extends SimpleButton {
		
		
		public function userObjectMenuBygel() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).selectedPanel = 1;
			appEngine(parent).gotoAndStop("userObjectScreen");
		}
	}
	
}
