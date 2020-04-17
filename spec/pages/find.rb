module Newtours
	class FindFlight < SitePrism::Page


		element :passCount, 'select[name=passCount]'
		element :fromPort,	'select[name="fromPort"]'
		element :fromMonth,	'select[name="fromMonth"]'
		element :fromDay,	'select[name="fromDay"]'
		element :toPort,	'select[name="toPort"]'
		element :toMonth,	'select[name="toMonth"]'
		element :toDay,		'select[name="toDay'
		element :findFlight,	'input[name="findFlights"]'

		def findFlights passcount, fromport, frommonth, fromday, toport, tomonth, today
			passCount.select passcount
			fromPort.select fromport
			fromMonth.select frommonth
			fromDay.select fromday
			toPort.select toport
			toMonth.select tomonth
			toDay.select today
			
		end
	end
end