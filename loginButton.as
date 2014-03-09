package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	
	
	public class loginButton extends SimpleButton {
		
		
		public function loginButton() {
			addEventListener(MouseEvent.CLICK, onClick);
			appEngine(parent).addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
		}
		
		public function onClick(e):void
		{
			if(appEngine(parent).loginField.textBox.text == "fruJohansson1337")
			{
				appEngine(parent).gotoAndStop(2);
			}
		}
		
		public function onKeyPress(e:KeyboardEvent):void
		{
			if(e.keyCode == 13)
			{
				if(appEngine(parent).loginField.textBox.text == "fruJohansson1337")
				{
					appEngine(parent).gotoAndStop(2);
				}
			}
		}
	}
	
}
