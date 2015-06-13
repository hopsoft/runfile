module Runfile
	# Debug print and exit
	def d(obj)
		p obj 
		exit
	end

	# Return an array of path directories
	def path_dirs
		ENV['PATH'].split(File::PATH_SEPARATOR)
	end
end