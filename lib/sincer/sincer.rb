# frozen_string_literal: true

require "singleton"
require "time"

class Sincer
  include Singleton
  class << self
    def rephrase(time)
      time = Time.parse(time) if time.is_a?(String)
      now = Time.now
      diff = (now - time).to_i

      "#{time_unit(diff)}#{past_or_future(diff)}"
    end

    private

    def past_or_future(diff)
      if diff > 59
        " ago"
      elsif diff < -59
        " later"
      end
    end

    def time_unit(diff)
      case diff.abs
      when 0..59
        "just now"
      when 60..3599
        "#{diff.abs / 60} minutes"
      when 3600..86_399
        "#{diff.abs / 3600} hours"
      when 86_400..2_592_000
        "#{diff.abs / 86_400} days"
      when 2_592_001..31_536_000
        "#{diff.abs / 2_592_000} months"
      else
        "#{diff.abs / 31_536_000} years"
      end
    end
  end
end
