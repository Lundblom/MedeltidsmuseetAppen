package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	public class speakerButton extends SimpleButton {
		
		var bygelText:Sound = new stigBygelText();
		var hornText:Sound = new dryckesHornText();
		
		var bygelChannel:SoundChannel = bygelText.play();
		var hornChannel:SoundChannel = hornText.play();
		
		public function speakerButton() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			bygelChannel.stop();
			hornChannel.stop();
		}
		
		public function onClick(e)
		{
			if(appEngine(parent).selectedPanel == 1)
				bygelChannel = bygelText.play();
			if(appEngine(parent).selectedPanel == 0)
				hornChannel = hornText.play();
		}
	}
	
}
