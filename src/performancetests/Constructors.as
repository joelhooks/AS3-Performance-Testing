package performancetests
{
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public class Constructors
	{
		// the number of loops to run in every test:
		protected var loops:uint = 1000000;
		protected var instance:MyObject;
		
		public function Constructors()
		{

			instance = new MyObject();


		}

		public function objectDotConstructor():void {
			for (var i:uint=0; i<loops; i++) {
				Object(instance).constructor
			}
		}
		
		public function InstanceAsObjectConstructor():void {
			for (var i:uint=0; i<loops; i++) {
				(instance as Object).constructor
			}
		}
		
		public function instanceBracketConstructor():void {
			for (var i:uint=0; i<loops; i++) {
				instance["constructor"]
			}
		}
		
		public function currentMethod():void {
			for (var i:uint=0; i<loops; i++) {
				Class(getDefinitionByName(getQualifiedClassName(instance))); 
			}
			
		}
	}
}