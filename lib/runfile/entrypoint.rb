module Runfile
  # Serves as the initial entrypoint when running +run+.
  class Entrypoint
    include Inspectable
    include Renderable
    include Colsole

    attr_reader :argv

    def initialize(argv = ARGV)
      @argv = argv
    end

    def inspectable
      { argv: argv }
    end

    def run
      meta.handler(argv).run argv
    end

    def run!
      run
    rescue Runfile::ExitWithUsage => e
      say e.message
      1
    rescue Runfile::UserError => e
      allow_debug
      say! "mib` #{e.class} `"
      say! e.message
      1
    rescue Interrupt
      say! 'm`Goodbye`', replace: true
      1
    rescue => e
      allow_debug
      origin = e.backtrace_locations.first
      location = "#{origin.path}:#{origin.lineno}"
      say! "rib` #{e.class} ` in nu`#{location}`"
      say! e.message
      say! "\nPrefix with nu`DEBUG=1` for full backtrace" unless ENV['DEBUG']
      1
    end

  private

    def allow_debug
      return unless ENV['DEBUG']

      say! e.backtrace.reverse.join("\n")
      say! '---'
    end

    def meta
      @meta ||= Meta.new
    end
  end
end
