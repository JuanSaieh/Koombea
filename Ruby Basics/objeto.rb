class Video
	attr_accessor :minutes, :title

	def initialize(title)
		self.title = title

	end

	def play
	end

	def pause
	end

	def stop
	end
end


video = Video.new("objetos")
puts video.title