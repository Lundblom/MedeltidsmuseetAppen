package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class teacherLoginButton extends SimpleButton {
		
		
		public function teacherLoginButton() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			appEngine(parent).addChild(new passwordBox("teacherMainScreen", "userLoginScreen"));
		}
	}
	
}
