class PhoneNumberLinkFormaterService

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def call
    tel_to()
  end

  private

  def tel_to()
    groups = @phone_number.to_s.scan(/(?:^\+)?\d+/)
    if groups.size > 1 && groups[0][0] == '+'
      # remove leading 0 in area code if this is an international number
      groups[1] = groups[1][1..-1] if groups[1][0] == '0'
      groups.delete_at(1) if groups[1].size == 0 # remove if it was only a 0
    end
    # groups = text.to_s.scan(/(?:^\+)?\d+/)
    "tel:#{groups.join '-'}"
  end

end


