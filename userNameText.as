package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class userNameText extends MovieClip 
	{
		public function userNameText() 
		{
			addEventListener(Event.ENTER_FRAME, frameUpdater);
		}
		
		public function frameUpdater(e)
		{
			userNameTextField.text = appEngine(parent).userName;
		}
	}
	
}
