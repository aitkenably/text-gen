require 'text-gen/version'
require 'string'

module TextGen

  # TODO(feature): Add function to appreviate by dropping vowels

  # TODO(refactor): Change to named parameters?
  def self.rand_command_name(cnt = 1, prefix = nil)
    words = []

    # TODO(refactor): Move to separate method
    word_file = File.join(File.dirname(__FILE__), '../resources/words.txt')
    File.foreach(word_file) do |line|
      line.exclude?("'") && words.push(line.chomp)
    end

    words = words.select! { |w| w.length == 8 }

    # TODO(refactor): Move to common library (case insensitive start_with?)
    prefix.nil? || words.select! { |w| w.upcase.start_with? prefix.upcase }
    results = words.sample(cnt).map(&:upcase).sort

    # TODO(refactor): Move to common library (i.e array.simplify)
    results.length == 1 ? results[0] : results
  end

  def self.rand_prototype_id(cnt = 1)
    values = []

    (1..cnt).each do
      values.push "#{rand(65..90).chr}#{rand(65..90).chr}-#{rand(200..1999) * 5}"
    end

    values.length == 1 ? values[0] : values
  end

end