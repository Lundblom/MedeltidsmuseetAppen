package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class userObjectLeft extends SimpleButton {
		
		
		public function userObjectLeft() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			if(appEngine(parent).selectedPanel == 0)
			{
				appEngine(parent).selectedPanel = 1;
				appEngine(parent).userObjectTheHandler.tearDown();
				appEngine(parent).userObjectTheHandler.initialize();
			}
			else
			{
				appEngine(parent).selectedPanel = 0;
				appEngine(parent).userObjectTheHandler.tearDown();
				appEngine(parent).userObjectTheHandler.initialize();
			}
		}
	}
	
}
