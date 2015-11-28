ActionMailer::Base.smtp_settings = {
	:address				=> "aspmx.l.google.com",
	:port					=> 25,
	:domain					=> "gmail.com",
	:user_name				=> "noreply.gaptest@gmail.com",
	:password				=> "n0reply.",
	:authentication 		=> :plain,
	:enable_starttles_auto	=> true
}