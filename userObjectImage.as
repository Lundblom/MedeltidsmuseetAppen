package  {
	
	import flash.display.MovieClip;
	
	
	public class userObjectImage extends MovieClip {
		
		
		public function userObjectImage(image:String, X,  Y) 
		{
			x = X;
			y = Y;
			if(image == "stigBygel")
				x -= 2000;
		}
	}
	
}
