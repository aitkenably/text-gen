class String
  def exclude?(object)
    !include?(object)
  end
end