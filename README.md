# Holiday-Helper

Holiday Helper allows you to find which holidays are on a certain date, or else to return a list of all holidays included for a given year.

To use it, simply include the file and call: holidayOn(thisDate: Date) with the desired date as a Date and it will return an array of strings for all the holidays on that given date. Most dates with return "Not a holiday", or a single holiday.

If you would like a list of the holidays for that given year, call: holidayIn(year: Int) with the desired year as an Int and it will return an array of strings with all of the holidays it has for that given year. You can also call it with: holidayIn(year: Int, Dateformatter.Style) in order to change the style of the dates.

The style options are currently: 

.short (the default)
.full
.long
.medium
.none

This code has been a part of my Days Between app for years, but it makes sense to open it up if other people would want to play with it.  
