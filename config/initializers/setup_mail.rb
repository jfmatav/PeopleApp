ActionMailer::Base.smtp_settings = {
	:address				=> "smtp.gmail.com",
	:port					=> 587,
	:domain					=> "gmail.com",
	:user_name				=> "noreply.gaptest@gmail.com",
	:password				=> "n0reply.",
	:authentication 		=> 'login',
	:enable_starttles_auto	=> true,
	:ssl					=> :true
}