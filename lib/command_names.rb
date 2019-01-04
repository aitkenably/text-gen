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
end