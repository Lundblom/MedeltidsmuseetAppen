package  {
	
	import flash.display.MovieClip;
	
	
	public class userSymbolTitle extends MovieClip {
		
		
		public function userSymbolTitle() 
		{
			titleText.text = appEngine(parent).selectedPanel;
		}
	}
	
}
