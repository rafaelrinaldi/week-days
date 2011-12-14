package com.rafaelrinaldi.date
{
	/**
	 *
	 * WeekDay.as
	 *
	 * @author Rafael Rinaldi (rafaelrinaldi.com)
	 * @since May 25, 2011
	 *
	 */
	public class WeekDay
	{
		public var id : int;
		public var name : String;

		public function WeekDay( p_id : int, p_name : String )
		{
			id = p_id;
			name = p_name;
		}

		public function toString() : String
		{
			var stack : String = "[object WeekDay]";
			
			stack += " id: " + id + ",";
			stack += " name: " + name;
			
			return stack;
		}
	}
}
