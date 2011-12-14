[license]: https://github.com/rafaelrinaldi/week-days/raw/master/license.txt

# week-days
Useful library to work with week days in ActionScript.

---
### Usage

	trace(WeekDays.byId(0).name); // "sunday"
	trace(WeekDays.byName("friday").id); // 5
	trace(WeekDays.getCurrent()); // A WeekDay instance with current week day.
	trace(WeekDays.get()); // A list with all week days.

---
### License
[WTFPL][license]