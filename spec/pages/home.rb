module Newtours
	class Home <SitePrism::Page
		set_url ''

		element :username, 'input[name="userName"'
		element :password,  'input[name="password"]'
    	element :login,     'input[name=login]'

    	def log_in uname, passwd
    		username.set uname
    		password.set passwd
    		login.click
    	end
    end
end

