package  {
	
	import flash.display.MovieClip;
	
	
	public class appEngine extends MovieClip {
		
		public var userName:String = "";
		
		static var panelArray:Array = new Array(new objectEntry("Dryckeshorn", "God afton! Harald var namnet, jag håller på att förbereda en minnessdrickning till skyddshelgonens ära. Det är därför jag tagit fram detta dyrbara föremål som jag fick av min far när han låg inför döden. Min äldsta son kommer naturligtvis ärva den efter mig. På så vis kan även han bruka den vid högtidliga minnesdrickningar.", "dryckesHorn"), 
												new objectEntry("Stigbygel", "Var hälsad! Mitt namn är Riddare Järnhjälm. Jag är den tappraste av dem alla. Tack vare min rustning och mitt blanka svärd har jag överlevt många strider. Ser du föremålet i brons? Utan detta föremål hade stridandets konst varit ack så mycket svårare. Mitt svärd är så tungt att utan detta föremål hade jag troligtvis ramlat av i stridens hetta.", "stigBygel"));
		
		public var selectedPanel:int;
		
		public function appEngine() 
		{
			stop();
		}
	}
}
