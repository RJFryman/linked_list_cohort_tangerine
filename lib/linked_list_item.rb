class LinkedListItem
  include Comparable
  attr_accessor :payload
  # def new_item=(value)
  #   @payload = value
  # end

  # def payload
  #   @payload
  # end

  attr_reader :next_list_item
  # def next_list_item
  #   @next_list_item
  # end

  def initialize(payload)
    @payload = payload
  end

  def next_list_item= item
    raise ArgumentError, "Can't set self as next list item" if self === item
    # raise ExceptionType, "Error Message" condition

    @next_list_item = item
  end

  def last?
    @next_list_item.nil?
  end

  def <=>(different)
    payload = self.payload
    different = different.payload

    if payload.class == different.class
      payload <=> different
    else
      precedence = [Fixnum, String, Symbol]
      index = precedence.index(payload.class)
      dif_index = precedence.index(different.class)
      index <=> dif_index
    end
  end

  def ===(different)
    self.equal? different
  end

end
