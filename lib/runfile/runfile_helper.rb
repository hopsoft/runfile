require 'docopt'
require 'pp'

module Runfile

  # The RunfileHelper class assists in:
  # 1. Finding named.runfiles
  # 2. Creating new runfiles (`run make`)
  # 3. Showing a list of found system runfiles in a colorful help
  class RunfileHelper
    
    # Handle the case when `run` is called without a Runfile 
    # present. We will let the user know they can type `run make`
    # to create a new sample Runfile.
    # If the first argument matches the name of a *.runfile name,
    # we will return it to the caller. Otherwise, we return false
    # to indicate "no further handling is needed".
    def handle(argv)
      # make a new runfile
      if argv[0] == "make"
        make_runfile argv[1]
        return false
      end

      # get a list of *.runfile path-wide
      runfiles = find_runfiles || []

      # if first arg is a valid *.runfile, run it
      if argv[0] 
        runfile = runfiles.select { |f| f[/#{argv[0]}.runfile/] }.first
        runfile and return runfile
      end

      # if we are here, offer some help and advice
      show_make_help runfiles
      return false
    end

    private

    # Create a new runfile in the current directory. We can either
    # create a standard 'Runfile' or a 'named.runfile'.
    def make_runfile(name=nil)
      name = 'Runfile' if name.nil?
      template = File.expand_path("../templates/Runfile", __FILE__)
      name += ".runfile" unless name == 'Runfile'
      dest = "#{Dir.pwd}/#{name}"
      begin
        File.write(dest, File.read(template))
        puts "#{name} created."
      rescue => e
        abort "Failed creating #{name}\n#{e.message}"
      end
    end

    # Find all *.runfile files in in our search difrectories
    def find_runfiles
      result = []
      dirs = runfile_folders
      dirs.each do |d|
        found = Dir[File.join(d, '**/*.runfile')]
        result << found unless found.empty?
      end
      return result.empty? ? false : result.flatten.uniq
    end

    # Show some helpful tips, and a list of available runfiles
    def show_make_help(runfiles)
      say "!txtpur!Runfile engine v#{Runfile::VERSION}"
      runfiles.size < 3 and say "\nTip: Type '!txtblu!run make!txtrst!' or '!txtblu!run make name!txtrst!' to create a runfile.\nFor global access, place !txtblu!named.runfiles!txtrst! in ~/runfile/ or in /etc/runfile/ or anywhere in the PATH."
      if runfiles.empty? 
        say "\n!txtred!Runfile not found."
      else
        say ""
        say_runfile_list runfiles
      end
    end

    # Return array of folders we should search for runfiles
    def runfile_folders
      dirs = path_dirs
      dirs.insert 0, Dir.pwd, "#{Dir.home}/runfile", "/etc/runfile"
      dirs
    end

    # Output the list of available runfiles
    def say_runfile_list(runfiles)
      runfile_paths = runfiles.map { |f| File.dirname f }
      max = runfile_paths.max_by(&:length).size
      width, height = detect_terminal_size
      runfiles.each do |f|
        f[/([^\/]+).runfile$/]
        command  = "run #{$1}"
        spacer_size = width - max - command.size - 6
        spacer_size = [1, spacer_size].max
        spacer = '.' * spacer_size
        say "  !txtgrn!#{command}!txtrst! #{spacer} #{File.dirname f}"
      end
    end

  end
end
