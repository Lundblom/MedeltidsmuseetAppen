package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	
	public class loginButton extends SimpleButton {
		
		var myTimer:Timer;
		
		public function loginButton() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			appEngine(parent).addEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
		}
		
		public function onClick(e):void
		{
			if(appEngine(parent).loginField.textBox.text == "user")
			{
				cleanUp();
				appEngine(parent).gotoAndStop("userLoginScreen");	
			}
			if(appEngine(parent).loginField.textBox.text == "teacher")
			{
				cleanUp();
				appEngine(parent).gotoAndStop("teacherMainScreen");
				
			}
			else
			{
				appEngine(parent).loginErrorText.visible = true;
				myTimer = new Timer(1000, 1); // 1 second
				myTimer.addEventListener(TimerEvent.TIMER, runOnce);
				myTimer.start();
			}
		}
		
		public function cleanUp()
		{
			appEngine(parent).removeEventListener(KeyboardEvent.KEY_DOWN, onKeyPress);
			removeEventListener(MouseEvent.CLICK, onClick);
			//appEngine(parent).removeChild(appEngine(parent).creditsHit.credits);
		}
		
		public function runOnce(e)
		{
			appEngine(parent).loginErrorText.visible = false;
		}
		
		public function onKeyPress(e:KeyboardEvent):void
		{
			if(e.keyCode == 13)
			{
				if(appEngine(parent).loginField.textBox.text == "user")
				{
					cleanUp();
					appEngine(parent).gotoAndStop("userLoginScreen");
					
				}
				if(appEngine(parent).loginField.textBox.text == "teacher")
				{
					cleanUp();
					appEngine(parent).gotoAndStop("teacherMainScreen");
				}
				else
				{
					appEngine(parent).loginErrorText.visible = true;
					myTimer = new Timer(1000, 1); // 1 second
					myTimer.addEventListener(TimerEvent.TIMER, runOnce);
					myTimer.start();
				}
				
			}
		}
	}
	
}
