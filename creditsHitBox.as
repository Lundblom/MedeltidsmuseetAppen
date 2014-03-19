package  {
	
	import flash.display.SimpleButton;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	
	public class creditsHitBox extends SimpleButton 
	{
		
		var credits;
		
		public function creditsHitBox() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			credits = new creditsBox(640,360);
			appEngine(parent).addChild(credits);
			appEngine(parent).addEventListener(KeyboardEvent.KEY_UP, onPress);
		}
		
		public function onPress(e)
		{
			if(e.keyCode == 27 && credits != null)
				appEngine(parent).removeChild(credits);
		}
	}
	
}
