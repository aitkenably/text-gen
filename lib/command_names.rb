require 'command_names/version'
require 'string'

module CommandNames

  class ScowlWordList

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

  def self.rand_command_name(cnt = 1)
    words = CommandNames::ScowlWordList.new

    values = words.with_length(8).sample(cnt)
                  .map(&:upcase)
                  .sort

    values.length == 1 ? values[0] : values
  end

  def self.rand_prototype_id(cnt = 1)
    values = []

    (1..cnt).each do
      values.push "#{rand(65..90).chr}#{rand(65..90).chr}-#{rand(200..1999) * 5}"
    end

    values.length == 1 ? values[0] : values
  end

end
