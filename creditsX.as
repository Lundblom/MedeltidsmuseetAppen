package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class creditsX extends SimpleButton {
		
		
		public function creditsX() 
		{
			addEventListener(MouseEvent.CLICK, onClick)
		}
		
		public function onClick(e)
		{
			appEngine(parent.parent).removeChild(parent);
		}
	}
	
}
