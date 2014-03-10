package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class userNameText extends MovieClip 
	{
		public function userNameText() 
		{
			userNameTextField.text = "Välkommen " + appEngine(parent).userName;
		}
	}
	
}
