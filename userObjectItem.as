package  {
	
	import flash.display.MovieClip;
	
	
	public class userObjectItem extends MovieClip {
		
		
		public function userObjectItem(item:String, X, Y) 
		{
			x = X;
			y = Y;
			if(item=="stigBygel")
				x -= 1215;
		}
	}
	
}
