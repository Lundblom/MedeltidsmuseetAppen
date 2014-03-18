package  {
	
	import flash.display.MovieClip;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.events.MouseEvent;
	
	
	public class userObjectNoteButton extends userObjectButton {
		
		var bygelSound:Sound = new stigBygelSound();
		var hornSound:Sound = new dryckesHornSound();
		
		var bygelChannel:SoundChannel = bygelSound.play();
		var hornChannel:SoundChannel = hornSound.play();
		
		public function userObjectNoteButton() 
		{
			super();
			id = 1;
			
			bygelChannel.stop();
			hornChannel.stop();
			
			addEventListener(MouseEvent.CLICK, onNoteClick);
		}
		
		public function onNoteClick(e)
		{
			if(appEngine(parent).selectedPanel == 1)
				bygelChannel = bygelSound.play();
			if(appEngine(parent).selectedPanel == 0)
				hornChannel = hornSound.play();
				
		}
	}
	
}
