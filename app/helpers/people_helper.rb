module PeopleHelper
	def calculate_age(date)
    now = Time.now.utc.to_date
    now.year - date.year - ((now.month > date.month || (now.month == date.month && now.day >= date.day)) ? 0 : 1)
  end
end
