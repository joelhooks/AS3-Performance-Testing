package performancetests
{
	import flash.utils.getDefinitionByName;
	
	import mx.core.UIComponent;

	public class ClassInstanceVersusHasOwnProperty
	{

		// the number of loops to run in every test:
		protected var loops:uint = 1000000;
		protected var isFlex:Boolean;
		protected var flexComponent:UIComponent = new UIComponent();
		protected static var flexAvailable:Boolean = true;
		
		public function ClassInstanceVersusHasOwnProperty()
		{
		}

		public function testHasOwnProperty():void {
			for (var i:uint=0; i<loops; i++) {
				isFlex = flexComponent.hasOwnProperty("systemManager");
			}
		}
		
		public function testIsClassType():void {
			for (var i:uint=0; i<loops; i++) {
				var UIComponentClass:Class = getDefinitionByName('mx.core::UIComponent') as Class;
				isFlex = UIComponentClass != null && flexComponent is UIComponentClass
			}
		}

		public function asStaticOnce():void {
			for (var i:uint=0; i<loops; i++) {
				isFlex = flexAvailable;
			}
		}
	}
}