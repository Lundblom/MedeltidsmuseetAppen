package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class checkBox extends MovieClip 
	{
		var ticked:Boolean = false;
		
		public function checkBox() 
		{
			stop();
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		public function onClick(e)
		{
			ticked = !ticked;
			gotoAndStop(ticked + 1);
		}
	}
	
}
