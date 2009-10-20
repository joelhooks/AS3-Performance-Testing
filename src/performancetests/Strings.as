package performancetests
{
	public class Strings
	{
		public function Strings()
		{
		}
		
		public function stringsWithPlusConcat():void
		{
var str:String = ""
for (var i:Number = 0 ; i<10000000 ; ++i) {
    str += "someLongLongLongLongLongLongLongLongLongString";
}
		}

		public function stringsWithConcatMethod():void
		{
var str:String = ""
for (var i:Number = 0 ; i<10000000 ; ++i) {
    str = str.concat("someLongLongLongLongLongLongLongLongLongString");
}
		}
	}
}