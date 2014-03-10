package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class objectPanelHitBox extends MovieClip {
		
		
		public function objectPanelHitBox() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).gotoAndStop("userObjectScreen");
		}
	}
	
}
