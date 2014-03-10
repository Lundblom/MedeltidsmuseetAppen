package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class backToTeacherScreenObject extends SimpleButton {
		
		
		public function backToTeacherScreenObject() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).removeChild(appEngine(parent).handler.theSlider);
			appEngine(parent).handler.clearListeners();
			appEngine(parent).gotoAndStop("teacherMainScreen");
		}

	}
	
}
