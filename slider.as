package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flashx.textLayout.formats.Float;
	
	
	public class slider extends MovieClip {
		
		public var moving:Boolean;
		public var maxHeight:Number;
		public var minHeight:Number;
		
		public function slider(_minHeight:int, _maxHeight:int) 
		{
			addEventListener(MouseEvent.MOUSE_DOWN, onClick);
			addEventListener(MouseEvent.MOUSE_UP, onRelease);
			
			addEventListener(MouseEvent.MOUSE_OUT, onRelease);
			
			
			maxHeight = _maxHeight;
			minHeight = _minHeight;
			
			y = clamp(y, _minHeight, _maxHeight);
		}
		
		
		
		public function moveSlider(amount:Number)
		{
			y = clamp(y + amount, minHeight, maxHeight);
		}
		
		public function onClick(e)
		{
			moving = true;
		}
		
		function clamp(val:Number, min:Number, max:Number)
		{
    		return Math.max(min, Math.min(max, val))
		}
		
		public function onRelease(e)
		{
			moving = false;
		}
	}
	
}
