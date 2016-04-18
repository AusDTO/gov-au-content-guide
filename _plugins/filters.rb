require 'titleize'

module Jekyll
  module Filters

    def entry_file(input)
      input.gsub(/_entries\//, '').gsub(/\.md/, '')
    end
    def entry_heading(input)
      entry_file(input).gsub(/-/," ").titleize
    end
    def first_letter(input)
      input[0].upcase
    end
  end
end

Liquid::Template.register_filter(Jekyll::Filters)
