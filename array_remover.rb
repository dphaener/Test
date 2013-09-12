class CharRemove
  attr_accessor :char_array
  
  def initialize(character_array)
    @char_array = character_array
  end
  
  def remove_j
    new_array = []
    @char_array.each do |c|
      if c != "j"
        new_array.push(c)
      end
    end
    new_array
  end
end
