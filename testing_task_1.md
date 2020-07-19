### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  

  # The naming convention is wrong: check_for_ace
  def checkforAce(card)
    # This line requires a double equal
    if card.value = 1 
      return true
    else
      return false
    end
  end

  # The keyword to start a method is def not dif
  # Missing comma between paramaters
  dif highest_card(card1 card2)
  # Code should be indented
  if card1.value > card2.value
  # This method only has access to the variables card1 and card2, it will not know what card is
  # It should return the value and maybe not the hole object, so card1.value and on line 30 card2.value
    return card
  else
    return card2
  end
end
end

# This method is outside of the CardGame class. We need to place it before line 27 to make it work.
# self is not required
def self.cards_total(cards)
  # Total needs to be defined
  total
  # The for loop requires a do at the end of line 40
  for card in cards 
    total += card.value
    # To get the end-result back, the return statement needs to be outside of the for loop. Also we need a whitespace at the end of our string otherwise the total will be printed in one word with of.
    # Total is an integer and would need to be converted into a string or use string interpolation
    return "You have a total of" + total
  end
end
```
