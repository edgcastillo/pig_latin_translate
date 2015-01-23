require_relative "test_helper"

class PigLatinTranslateTest < Test::Unit::TestCase
	def test_pig_latin_translate
		assert_equal "appleay", "apple".translate
		assert_equal "ananabay", "banana".translate
		assert_equal "errychay", "cherry".translate
		assert_equal "eatay iepay", "eat pie".translate
		assert_equal "eethray", "three".translate
		assert_equal "oolschay", "school".translate
		assert_equal "ietquay", "quiet".translate
		assert_equal "aresquay", "square".translate
		assert_equal "ethay ickquay ownbray oxfay", "the quick brown fox".translate
	end
end