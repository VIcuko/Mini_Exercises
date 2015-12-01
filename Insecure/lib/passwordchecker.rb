class PasswordChecker

	def initialize email, password
		@email = email
		@password = password
	end

	def valid_email?
		if (valid_at? && valid_dot?) 
		true
		else false
		end	
	end

	def valid_at?
		@email.include? "@"
	end

	def valid_dot?
		@email.include? "."
	end

	def valid_password
		if (valid_length? && valid_chars? && valid_uplow? && valid_email_address?)
			true
		else false
		end
	end

	def valid_lenght?
		password.size >= 7
	end	

	def valid_chars?
		password.include? (/[\W]/)
	end

end