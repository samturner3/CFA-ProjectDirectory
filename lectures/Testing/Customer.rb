class Customer
  def initialize (first, last)
    @first = first.strip
    @last = last.strip
  end

  def full_name
    # If no last name, return only first
      if @last == ""
        @first
      else
      # @first + ' ' + @last
      "#{@first} #{@last}"
      end
  end

end
