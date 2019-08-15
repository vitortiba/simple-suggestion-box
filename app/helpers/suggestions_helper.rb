module SuggestionsHelper
	PERMITTED_DAYS = [13, 14, 15]

	def can_show_all_suggestions?(date)
		 PERMITTED_DAYS.include?(date.day.to_i)
	end

	def format_date_ptbr(date)
		date.strftime("%d/%m/%y")
	end
end
