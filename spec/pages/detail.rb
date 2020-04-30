module Newtours
	class Details < SitePrism::Page


	  	element :firstName , "input[name='passFirst0']"
	    element :lastName , "input[name='passLast0']"
	    



	    element :cardType, "select[name='creditCard']"
	    element :cardNumber, "input[name='creditnumber']"
	    element :expMon, "select[name='cc_exp_dt_mn']"
	    element :expYr, "select[name='cc_exp_dt_yr']"
	    element :cardFirstName, "input[name='cc_frst_name']"
	    element :cardLastName, "input[name='cc_last_name']"



	    element :ticketless, :xpath, "(//input[@name='ticketLess'])[1]"
	    element :address, "input[name='billAddress1']"
	    element :address2, "input[name='billAddress2']"
	    element :city, "input[name='billCity']"
	    element :state, "input[name='billState']"
	    element :zip, "input[name='billZip']"
	    element :country, "select[name='billCountry']"
	    element :same, :xpath, "(//input[@name='ticketLess'])[2]"

	    

	    element :buyFlights, "input[name='buyFlights']"

	    def passengerNames firstname, lastname
	    	firstName.set firstname
	    	lastName.set lastname
		end

		def cardDetails card_type ,card_number ,exp_mon ,exp_yr ,card_first_name ,card_last_name
			cardType.select card_type
      		cardNumber.set card_number
      		expMon.select exp_mon
      		expYr.select exp_yr
      		cardFirstName.set card_first_name
      		cardLastName.set card_last_name
		end
	end

end
