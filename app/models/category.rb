class Category < ActiveRecord::Base
	has_many :videos

	def thumbnail
		if self.videos.any?
			"http://img.youtube.com/vi/#{self.videos.last.youtube_id}/0.jpg"
		else
			"blank.png"
		end
	end

end
