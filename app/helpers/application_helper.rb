module ApplicationHelper
	def language(i)
		if @recruit
			@recruit.languages.include?(i)
		else
			false
		end
	end
end
