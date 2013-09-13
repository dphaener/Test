class StringOut
  attr_accessor :str_array
  
  def initialize(str_array)
    @str_array = str_array
  end
  
  def new_array
    i = 0
    j = 0
    output = ''
    
    @str_array.each do
      j = 0
      while j < i
        output << ', ' if output != ''
        output << @str_array[j]
        j += 1
      end
      i += 1
    end
    output
  end
end
