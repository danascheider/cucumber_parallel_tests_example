require 'byebug'
require 'rspec/expectations'

require_relative '../../lib/adder'
require_relative '../../lib/multiplier'

class CustomFormatter
  attr_reader :io

  def initialize(config)
    @io = config.out_stream

    config.on_event :test_run_started do |event|
      feature = event.test_cases.first.source.first
      io.puts feature.short_name.upcase
    end
  end
end