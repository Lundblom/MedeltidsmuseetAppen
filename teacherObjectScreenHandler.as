package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class teacherObjectScreenHandler extends MovieClip
	{
		
		public var theSlider:slider;
		
		public function teacherObjectScreenHandler() 
		{
			theSlider = new slider(200, 540);
			theSlider.x = 300;
			
			appEngine(parent).addChild(theSlider);
			appEngine(parent).addEventListener(MouseEvent.MOUSE_WHEEL,mouseWheel);
			addEventListener(MouseEvent.MOUSE_MOVE, frameUpdater);
		}
		
		public function mouseWheel(e)
		{
			theSlider.moveSlider(e.delta);
			appEngine(parent).objectEntries.update(theSlider.y/theSlider.maxHeight);
		}
		
		public function clearListeners()
		{
			appEngine(parent).removeEventListener(MouseEvent.MOUSE_WHEEL,mouseWheel);
			removeEventListener(MouseEvent.MOUSE_MOVE, frameUpdater);
		}
		
		public function frameUpdater(e)
		{
			if(theSlider.moving)
			{
				theSlider.y = theSlider.clamp(appEngine(parent).mouseY, theSlider.minHeight, theSlider.maxHeight);
				appEngine(parent).objectEntries.update(theSlider.y/theSlider.maxHeight);
			}
		}
	}
	
}
