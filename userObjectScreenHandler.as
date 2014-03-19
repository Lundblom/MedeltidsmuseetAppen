package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class userObjectScreenHandler extends MovieClip {
		
		var img;
		var item;
		
		public function userObjectScreenHandler() 
		{
			initialize();
		}
		
		public function tearDown()
		{
			appEngine(parent).removeChild(img);
			appEngine(parent).removeChild(item);
		}
		
		public function initialize()
		{
			appEngine(parent).noteButton.addEventListener(MouseEvent.CLICK, onClickNote)
			appEngine(parent).eyeButton.addEventListener(MouseEvent.CLICK, onClickEye)
			appEngine(parent).textButton.addEventListener(MouseEvent.CLICK, onClickText)
			appEngine(parent).objectDesc.text = appEngine.panelArray[appEngine(parent).selectedPanel].desc;
			
			img = new userObjectImage(appEngine.panelArray[appEngine(parent).selectedPanel].imageName, 859, 349);
			item = new userObjectItem(appEngine.panelArray[appEngine(parent).selectedPanel].imageName, 65, 336);
			appEngine(parent).addChild(img);
			appEngine(parent).addChild(item);
			
			appEngine(parent).objectDesc.visible = false;
			img.visible = false;
			appEngine(parent).speakButton.visible = false;
		}
		
		public function onClickText(e)
		{
			handleClick(3);
		}
		public function onClickNote(e)
		{
			handleClick(1);
		}
		public function onClickEye(e)
		{
			handleClick(2);
		}
		
		public function handleClick(id:int)
		{
			switch(id)
			{
				case 1:
					appEngine(parent).eyeButton.pressed = false;
					appEngine(parent).eyeButton.gotoAndStop(1);
					appEngine(parent).textButton.pressed = false;
					appEngine(parent).objectDesc.visible = false;
					appEngine(parent).textButton.gotoAndStop(1);
					img.visible = false;
					appEngine(parent).speakButton.visible = false;
					appEngine(parent).speakButton.bygelChannel.stop();
					appEngine(parent).speakButton.hornChannel.stop();
					break;
				case 2:
					appEngine(parent).noteButton.pressed = false;
					appEngine(parent).noteButton.gotoAndStop(1);
					appEngine(parent).textButton.pressed = false;
					appEngine(parent).objectDesc.visible = false;
					appEngine(parent).textButton.gotoAndStop(1);
					img.visible = true;
					appEngine(parent).speakButton.visible = false;
					appEngine(parent).speakButton.bygelChannel.stop();
					appEngine(parent).speakButton.hornChannel.stop();
					appEngine(parent).noteButton.bygelChannel.stop();
				appEngine(parent).noteButton.hornChannel.stop();
					break;
				case 3:
					appEngine(parent).eyeButton.pressed = false;
					appEngine(parent).eyeButton.gotoAndStop(1);
					appEngine(parent).noteButton.pressed = false;
					appEngine(parent).noteButton.gotoAndStop(1);
					appEngine(parent).objectDesc.visible = true;
					img.visible = false;
					appEngine(parent).speakButton.visible = true;
					appEngine(parent).noteButton.bygelChannel.stop();
					appEngine(parent).noteButton.hornChannel.stop();
					break;
				default:
					break;
			}
		}
	}
	
}
