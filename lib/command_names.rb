require 'command_names/version'
require 'string'

module CommandNames

  # TODO(refactor): Rename class
  class WordList

    def initialize
      @words = []
      word_file = File.join(File.dirname(__FILE__), '../resources/words.txt')
      File.foreach(word_file) do |line|
        line.exclude?("'") && @words.push(line.chomp)
      end
    end

    def with_length(len)
      @words.select { |w| w.length == len }
    end

  end

  def self.generate_prototype_id
    "#{rand(65..90).chr}#{rand(65..90).chr}-#{rand(200..1999) * 5}"
  end

end
