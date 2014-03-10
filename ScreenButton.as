package  {
	
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;

	public class ScreenButton extends SimpleButton
	{
		var screen:String;
		
		public function ScreenButton(_screen:String) 
		{
			screen = _screen;
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).gotoAndStop(screen);
		}
	}
}
