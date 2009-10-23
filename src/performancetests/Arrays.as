package performancetests
{
	public class Arrays
	{
		protected var loops:uint = 1000000;
		
		public function Arrays()
		{
		}

		public function arrayInstanceWithBrackets():void {
			for (var i:uint=0; i<loops; i++) {
				var array:Array = []
			}
		}
		
		public function arrayInstanceWithNewArray():void {
			for (var i:uint=0; i<loops; i++) {
				var array:Array = new Array()
			}
		}

		public function resetArrayWithLength():void {
			for (var i:uint=0; i<loops; i++) {
				var array:Array = []
				array.push(1);
				array.length = 0;
			}
		}

		public function resetArrayWithBrackets():void {
			for (var i:uint=0; i<loops; i++) {
				var array:Array = []
				array.push(1);
				array = []
			}
		}

		public function resetArrayWithNew():void {
			for (var i:uint=0; i<loops; i++) {
				var array:Array = []
				array.push(1);
				array = new Array();
			}
		}
	}
}