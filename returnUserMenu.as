package  {
	
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.SimpleButton;
	
	public class returnUserMenu extends SimpleButton {
		
		
		public function returnUserMenu() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).removeChild(appEngine(parent).userObjectTheHandler.img);
			appEngine(parent).removeChild(appEngine(parent).userObjectTheHandler.item);
			appEngine(parent).speakButton.bygelChannel.stop();
			appEngine(parent).speakButton.hornChannel.stop();
			appEngine(parent).noteButton.bygelChannel.stop();
			appEngine(parent).noteButton.hornChannel.stop();
			appEngine(parent).gotoAndStop("userMainMenu");
		}
	}
	
}
