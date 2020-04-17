module Newtours
	class ReserveFlight < SitePrism::Page

		element :departFlight, 'input[value="Pangea Airlines$632$282$16:37"]'
		element :returnFlight, 'input[value="Pangea Airlines$362$274$9:17"]'
		element :findflight, "input[name='reserveFlights']"
		
		def select_flight
			departFlight.click
			returnFlight.click
		end
	end
end
