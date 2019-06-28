
class Vimeo
	def play
		p "Inserta vimeo"
	end
end

class Youtube
	def play
		p "inserta youtube"
	end
end

videos = [Youtube.new, Vimeo.new]

videos.each do |video|
	video.play
end