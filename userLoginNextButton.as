package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	
	public class userLoginNextButton extends SimpleButton {
		
		
		public function userLoginNextButton() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			if(appEngine(parent).speechBox.userLoginName.text != "")
			{
				appEngine(parent).userName = appEngine(parent).speechBox.userLoginName.text;
				appEngine(parent).gotoAndStop("userMainMenu");
			}
		}
	}
	
}
