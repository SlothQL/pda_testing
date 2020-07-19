require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class TestCardGame < Minitest::Test

    def setup()
        @card1 = Card.new("Diamonds", 1)
        @card2 = Card.new("Heart", 2)
        @card3 = Card.new("Spades", 3)
        @card4 = Card.new("Clubs", 4)
        @cards = [@card1, @card2, @card3, @card4]
        @card_game = CardGame.new()
    end

    def test_check_for_ace_true()
        result = @card_game.check_for_ace(@card1)
        assert_equal(true, result)
    end

    def test_check_for_ace_false()
        result = @card_game.check_for_ace(@card4)
        assert_equal(false, result)
    end

    def test_highest_card()
        result = @card_game.highest_card(@card2, @card3)
        assert_equal(@card3, result)
    end

    def test_cards_total()
        result = @card_game.cards_total(@cards)
        assert_equal("You have a total of 10", result)
    end

end