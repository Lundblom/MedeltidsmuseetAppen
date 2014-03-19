package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class userMenuInfo extends SimpleButton {
		
		var info;
		
		public function userMenuInfo() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			info = new infoBox(640,360);
			appEngine(parent).addChild(info);
			//appEngine(parent).addEventListener(KeyboardEvent.KEY_UP, onPress);
		}
	}
	
}
