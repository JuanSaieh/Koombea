class Object
	def i_have_superpowers
		puts "este metodo esta en todos los objetos"
	end
end


class Video
	attr_accessor :title, :duration, :descripcion

	def embeded_video_code
		"<video></video>"
	end

	
	def setup(title)
		@title = title
	end
end



class YoutubeVideo < Video
	attr_accessor :youtube_id,

	def embeded_video_code
		"<iframe />"
	end

	def setup(title)
		super #llama al padre
		puts "algo extra"
	end
end


class FacebookVideo < Video
	attr_accessor :facebook_id
end


puts yt = YoutubeVideo.new()
yt.setup("herencia")

puts yt.title
puts yt.object_id    #imprime espacio porque sobre escribimos la clase object  
puts yt.i_have_superpowers
[].i_have_superpowers
