package  {
	
	import flash.display.MovieClip;
	
	
	public class endScreenHandler extends MovieClip {
		
		
		public function endScreenHandler() 
		{
			appEngine(parent).descriptionText.text = "Tack för att du spelade, " + appEngine(parent).userName + "! Du har nu gissat på 9/10 föremål, bra jobbat. Om du vill fortsätta gissa eller ändra dina gissningar kan du använda vänsterpilen. Om du har spelat klart, tryck på 'Avsluta'";
		}
	}
	
}
