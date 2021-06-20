//
//  HolidayHelper.swift
//
//  Created by Don Espe on 5/12/21.
//  Copyright © 2021 Ducky Planet LLC. All rights reserved.
//

import Foundation

struct HolidayHelper
{

    private func checkForHolidayOnSpecific(date: Date) -> [String]
    {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)

        var tempHolidays = [String]()

        switch (month, day)
        {
        case (2, 14 ):
            tempHolidays.append(NSLocalizedString("Valentine's Day", comment: ""))

        case (5, 5):
            tempHolidays.append(  NSLocalizedString("Cinco De Mayo", comment: ""))

        case (5, 4):
            tempHolidays.append(  NSLocalizedString("Star Wars Day", comment: ""))

        case (5, 12):
            tempHolidays.append(  NSLocalizedString("International Nurses Day", comment: ""))

        case (5, 25):
            tempHolidays.append( NSLocalizedString("Towel Day", comment: ""))

        case (3, 23):
            tempHolidays.append( NSLocalizedString("National Puppy Day", comment: ""))

        case (7, 4):
            tempHolidays.append( NSLocalizedString("Fourth of July", comment: ""))

        case (9, 19):
            tempHolidays.append( NSLocalizedString("International Talk Like a Pirate Day", comment: ""))

        case (3, 8):
            tempHolidays.append( NSLocalizedString("International Women's Day", comment: ""))

        case (11, 19):
            tempHolidays.append( NSLocalizedString("International Men's Day", comment: ""))

        case (12, 31):
            tempHolidays.append( NSLocalizedString("New Year's Eve", comment: ""))

        case (1, 1):
            tempHolidays.append( NSLocalizedString("New Year's Day", comment: ""))

        case (12, 25):
            tempHolidays.append( NSLocalizedString("Christmas Day", comment: ""))

        case (12, 24):
            tempHolidays.append( NSLocalizedString("Christmas Eve", comment: ""))

        case(1, 28):
            tempHolidays.append( NSLocalizedString("National Lego Day", comment: ""))

        case(1, 13):
            tempHolidays.append( NSLocalizedString("National Rubber Duck Day", comment: ""))

        case (2, 2):
            tempHolidays.append( NSLocalizedString("Groundhog Day", comment: ""))

        case (4, 22):
            tempHolidays.append( NSLocalizedString("Earth Day", comment: ""))

        case(2, 29):
            tempHolidays.append( NSLocalizedString("Leap Day", comment: ""))

        case (3, 14):
            tempHolidays.append( NSLocalizedString("Pi Day", comment: ""))

        case(10, 10):
            tempHolidays.append( NSLocalizedString("World Mental Health Day", comment: ""))

        case (5, 14):
            tempHolidays.append( NSLocalizedString("Flag Day", comment: ""))

        case (1, 15):
            tempHolidays.append( NSLocalizedString("Martin Luther King Birthday", comment: ""))

        case (3, 17):
            tempHolidays.append( NSLocalizedString("St. Patrick's Day", comment: ""))

        case (2, 12):
            tempHolidays.append( NSLocalizedString("Lincoln's Birthday", comment: ""))

        case (2, 22):
            tempHolidays.append( NSLocalizedString("Washington's Birthday", comment: ""))

        case (10, 31):
            tempHolidays.append( NSLocalizedString("Halloween", comment: ""))

        case (12, 26):
            tempHolidays.append( NSLocalizedString("Boxing Day", comment: ""))

        case (10, 23):
            tempHolidays.append( NSLocalizedString("Mole Day", comment: ""))

        case (3, 30):
            tempHolidays.append( NSLocalizedString("National Pencil Day", comment: ""))

        case (8, 8):
            tempHolidays.append( NSLocalizedString("International Cat Day", comment: ""))

        case (10, 17):
            tempHolidays.append( NSLocalizedString("National Opossum Day", comment: ""))

        case (6, 9):
            tempHolidays.append( NSLocalizedString("Bill and Ted Day", comment: ""))

        default:
            break
        }

        return tempHolidays
    }

    private func holidaysOnSunday(month: Int, day: Int, instancesOfDay: Int) -> [String]
    {
        var tempHolidays = [String]()
        if instancesOfDay == 2 && month == 5
        {
            tempHolidays.append( NSLocalizedString("Mother's Day", comment: ""))
        }
        if instancesOfDay == 3 && month == 6
        {
            tempHolidays.append( NSLocalizedString("Father's Day", comment: ""))
        }
        return tempHolidays
    }

    private func holidaysOnMonday(month: Int, day: Int, dayNumber: Int) -> [String]
    {
        var tempHolidays = [String]()

        if dayNumber == 1 && month == 9
        {
            tempHolidays.append( NSLocalizedString("Labor Day", comment: ""))
        }
        if day > 24 && month == 5
        {
            tempHolidays.append( NSLocalizedString("Memorial Day", comment: ""))
        }
        if month == 10 && dayNumber == 2
        {
            tempHolidays.append( NSLocalizedString("Indigenous Peoples' Day", comment: ""))
            tempHolidays.append( NSLocalizedString("Columbus Day Observed", comment: ""))
        }

        if month == 1 && dayNumber == 3
        {
            tempHolidays.append( NSLocalizedString("MLK Day (observed)", comment: ""))
        }
        if month == 2 && dayNumber == 3
        {
            tempHolidays.append( NSLocalizedString("President's Day", comment: ""))
        }
        if (month == 11 && day >= 26) || (( month == 12) && day <= 2)
        {
            tempHolidays.append( NSLocalizedString("Cyber Monday", comment: ""))
        }

        return tempHolidays
    }

    private func holidaysOnSaturday(month: Int, day: Int, instancesOfDay: Int, year: Int) -> [String]
    {
        var tempHolidays = [String]()

        if (month, day) == baconDayDate(year: year)
        {
            tempHolidays.append( NSLocalizedString("International Bacon Day", comment: ""))
        }

        if month == 5 && instancesOfDay == 3
        {
            tempHolidays.append( NSLocalizedString("Armed Forces Day", comment: ""))
        }
        if day > 13 && day < 22 && month == 6
        {
            tempHolidays.append( NSLocalizedString("World Juggling Day", comment: ""))
        }
        return tempHolidays
    }

    private func isLeapYear(year: Int) -> Bool
    {
        return (year.isMultiple(of: 4) && !year.isMultiple(of: 100)) || year.isMultiple(of: 400)
    }

    public func holidayIn(year: Int, dateStyle: DateFormatter.Style = .short) -> [String]
    {
        let calendar = Calendar.current
        var holidays: [String] = []

        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = 1
        dateComponents.day = 1
        dateComponents.hour = 00
        dateComponents.minute = 00

        let startDate = calendar.date(from: dateComponents)

        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle

        for day in 0...364 + (isLeapYear(year: year) ? 1: 0)
        {
            var dateComponent = DateComponents()
            dateComponent.day = day

            let futureDate = Calendar.current.date(byAdding: dateComponent, to: startDate!)!

            var padLength = 0

            switch dateStyle
            {
            case .full:
                padLength = 27
            case .long:
                padLength = 18
            case .medium:
                padLength = 12
            case .none:
                padLength = 0
            case .short:
                padLength = 8
            @unknown default:
                fatalError("Unused date style in switch")
            }

            if !holidayOn(thisDate: futureDate).contains("Not a holiday")
            {
                for holiday in holidayOn(thisDate: futureDate)
                {
                    let dateString = formatter.string(from: futureDate).padding(toLength: padLength, withPad: " ", startingAt: 0)
                    holidays.append((dateStyle != .none ? (dateString + " - "): "") + holiday)
                }
            }
        }

        return holidays
    }

    public func holidayOn(thisDate: Date) -> [String]
    {
        let calendar = Calendar.current

        let year = calendar.component(.year, from: thisDate)
        let month = calendar.component(.month, from: thisDate)
        let day = calendar.component(.day, from: thisDate)
        let weekday = calendar.component(.weekday, from: thisDate)

        let instancesOfDay = ((day - 1) / 7) + 1  // Calculate how many times this day of the week came up this month.

        var holidayArray = [String]()

        holidayArray.append(contentsOf: checkForHolidayOnSpecific(date: thisDate))

        if day == 13 && weekday == 6
        {
            holidayArray.append( NSLocalizedString("Friday the 13th... Spooky!", comment: "")) // "Friday the 13th... Spooky!"
        }

        let (easterMonth, easterDay) = calculateEaster(year: year)

        if (month, day) == (easterMonth, easterDay)
        {
            holidayArray.append( NSLocalizedString("Easter Sunday", comment: "")) // "Easter Sunday"
        }

        var goodFridayDay = easterDay - 2
        var goodFridayMonth = easterMonth

        if goodFridayDay < 1
        {
            goodFridayDay += 31
            goodFridayMonth -= 1
        }

        if (month, day) == (goodFridayMonth, goodFridayDay)
        {
            holidayArray.append( NSLocalizedString("Good Friday", comment: "")) // "Good Friday"
        }

        var palmDay = easterDay - 7
        var palmMonth = easterMonth

        if palmDay < 1
        {
            palmDay += 31
            palmMonth -= 1
        }

        if day == palmDay && month == palmMonth
        {
            holidayArray.append( NSLocalizedString("Palm Sunday", comment: "")) // "Palm Sunday"
        }

        if weekday == 5 && month == 11 && instancesOfDay == 4
        {
            holidayArray.append( NSLocalizedString("Thanksgiving", comment: "")) // "Thanksgiving"
        }

        if weekday == 6 && month == 11 && (day >= 23 && day <= 29)
        {
            holidayArray.append( NSLocalizedString("Black Friday", comment: "")) // "Black Friday"
        }

        if weekday == 1
        {
            holidayArray.append(contentsOf: holidaysOnSunday(month: month, day: day, instancesOfDay: instancesOfDay))
        }

        if weekday == 2
        {
            holidayArray.append(contentsOf: holidaysOnMonday(month: month, day: day, dayNumber: instancesOfDay))
        }

        if weekday == 7
        {
            holidayArray.append(contentsOf: holidaysOnSaturday(month: month, day: day, instancesOfDay: instancesOfDay, year: year))
        }

        if holidayArray.isEmpty
        {
            holidayArray.append( NSLocalizedString("Not a holiday", comment: "")) // = "Not a holiday"
        }

        return holidayArray
    }

    private func baconDayDate(year: Int ) -> (month: Int, day: Int) // day, month, year
    {
        // finds labor day and then backs up by 2 days to find the Saturday before it.

        let calendar = Calendar.current
        var components: DateComponents = calendar.dateComponents([.hour, .minute, .second], from: Date())

        components.year = year
        components.month = 9
        components.day = 1

        var date = calendar.date(from: components)

        while calendar.component(.weekday, from: date!) != 2
        {
            if components.day != nil
            {
                var day = components.day!
                day += 1
                components.day = day
            }
            date = calendar.date(from: components)
        }

        var day = components.day!
        var month = components.month!

        day -= 2
        if day < 1
        {
            day += 31
            month -= 1
        }

        components.day = day
        components.month = month
        date = calendar.date(from: components)

        // print("date: ", date)

        return (calendar.component(.month, from: date!), (calendar.component(.day, from: date!)))
    }

    private func calculateEaster(year: Int ) -> (month: Int, day: Int)
    {
        let firstDigit = Int(year / 100)
        let remain19 = year % 19
        var temp = (firstDigit - 15) / 2 + 202 - 11 * remain19
        var month = 3

        switch firstDigit
        {
        case 21, 24, 25, 27, 28, 29, 30, 31, 32, 34, 35, 38:
            temp -= 1
        case 33, 36, 37, 39, 40:
            temp -= 2

        default:
            break
        }

        temp = temp % 30

        var tA = temp + 21
        if temp == 29
        {
            tA -= 1
        }
        if (temp == 28) || (remain19 > 10)
        {
            tA -= 1
        }

        let tB = (tA - 19) % 7

        var tC = (40 - firstDigit) % 4
        if tC == 3
        {
            tC += 1
        }
        if tC > 1
        {
            tC += 1
        }

        temp = year % 100
        let tD = Int((temp + temp / 4) % 7)
        let tE = (( 20 - tB - tC - tD) % 7) + 1
        var day = tA + tE

        if day > 31
        {
            day -= 31
            month = 4
        }
        else
        {
            month = 3
        }

        return (month: month, day: day)
    }
}
