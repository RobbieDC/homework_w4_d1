class WordFormatter

  def initialize(input_string)
    @input_string = input_string
  end

  def make_upcase()
    return @input_string.upcase
  end

  def make_camelcase()
    camelized_string = @input_string.split(" ").collect(&:capitalize).join
    return camelized_string
  end

end