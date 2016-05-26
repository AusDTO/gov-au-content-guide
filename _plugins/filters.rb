require 'titleize'

module Jekyll
  module Filters

    def entry_file(input)
      input.gsub(/_entries\//, '').gsub(/\.md/, '').gsub(/^\d{4}-\d{2}-\d{2}-/, '')
    end

    def entry_heading(input)
      entry_file(input).gsub(/-/, " ").titleize
    end

    def first_letter(input)
      if entry_file(input)[0] != nil
        entry_file(input)[0].upcase
      end
    end

    def is_collection_item_current(input, doc)
      if input["slug"] == doc["slug"]
        "current"
      end
    end

    def link_to(input)
      url = ""
      for collection in @context.registers[:site].collections
        #if collection[0] == input
        #  return "<a href='#{collection[1].url}'>#{collection[1].data["title"]}</a>"
        #end
        for doc in collection[1].docs
          if doc.data["slug"] == input
            if doc.collection.label == 'entries' # special case for a-z entries
              url = "<a href='/az-indexes/#{first_letter(input).downcase}.html##{input}'>#{doc.data["title"]}</a>"
            else
              url = "<a href='#{doc.url}'>#{doc.data["title"]}</a>"
            end
            return url
          end
        end
      end
      puts "Invalid link slug #{input}"
      return url
    end
  end
end
  Liquid::Template.register_filter(Jekyll::Filters)
