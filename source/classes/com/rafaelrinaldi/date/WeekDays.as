package com.rafaelrinaldi.date
{
	/**
	 *
	 * Useful for when you need to manipulate week days.
	 * For more information about week days: http://en.wikipedia.org/wiki/Week-day_names
	 * 
	 * @example
	 * <pre>
	 * import com.rafaelrinaldi.date.*;
	 * 
	 * trace(WeekDays.byId(0).name); // "sunday"
	 * trace(WeekDays.byName("friday").id); // 5
	 * trace(WeekDays.getCurrent()); // A WeekDay instance with current week day.
	 * trace(WeekDays.get()); // A list with all week days.
	 * </pre>
	 *
	 * @author Rafael Rinaldi (rafaelrinaldi.com)
	 * @since May 25, 2011
	 *
	 */
	public class WeekDays
	{
		// Week days in english (en_US).
		public static const SUNDAY : String = "sunday";
		public static const MONDAY : String = "monday";
		public static const TUESDAY : String = "tuesday";
		public static const WEDNESDAY : String = "wednesday";
		public static const THURSDAY : String = "thursday";
		public static const FRIDAY : String = "friday";
		public static const SATURDAY : String = "saturday";
		
		// A list with all week days.
		public static const DAYS : Array = [
			new WeekDay(0, SUNDAY),
			new WeekDay(1, MONDAY),
			new WeekDay(2, TUESDAY),
			new WeekDay(3, WEDNESDAY),
			new WeekDay(4, THURSDAY),
			new WeekDay(5, FRIDAY),
			new WeekDay(6, SATURDAY)
		];
		
		/**
		 * 
		 * @param p_id Week day id.
		 * @return A WeekDay object based on passed id.
		 * 
		 */
		public static function byId( p_id : int ) : WeekDay
		{
			var day : WeekDay;
			
			DAYS.some(function( p_day : WeekDay, ...rest ) : Boolean {
				day = p_day;
				
				return Boolean(p_day.id == p_id);
			});
			
			return day;
		}
		
		/**
		 * 
		 * @param p_name Week day name.
		 * @return A WeekDay object based on passed name.
		 * 
		 */
		public static function byName( p_name : String ) : WeekDay
		{
			var day : WeekDay;
			
			DAYS.some(function( p_day : WeekDay, ...rest ) : Boolean {
				day = p_day;
				
				return Boolean(p_day.name == p_name.toLowerCase());
			});
			
			return day;
		}
		
		/**
		 * @return A list with all week days.
		 */
		public static function get() : Array
		{
			return DAYS;
		}
		
		/**
		 * @return The current week day.
		 */
		public static function getCurrent() : WeekDay
		{
			return byId(new Date().getUTCDay());
		}
	}
}