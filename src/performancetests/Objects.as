package performancetests
{
	public class Objects
	{
		protected var loops:uint = 3000000;
		protected var obj:MyObject = new MyObject();
		public function Objects()
		{
		}
		
		public function objectCastingWithAs():void {
			for (var i:uint=0; i<loops; i++) {
				MyObject(obj)
			}
		}
		
		public function objectCastingWithParas():void {
			for (var i:uint=0; i<loops; i++) {
				(obj as MyObject);
			}
		}
	}
}