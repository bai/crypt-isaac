require File.dirname(__FILE__) + '/test_helper'

class CryptIsaacTest < Test::Unit::TestCase
  context "The Crypt:ISAAC object" do
    setup do
      assert_nothing_raised("Failed to create a Crypt::ISAAC object.") do
        @generator = Crypt::ISAAC.new
      end
    end

    should "be the proper type" do
      assert_kind_of(Crypt::ISAAC, @generator, "The created object is not a Crypt::ISAAC or subclass thereof.")
    end

    should "generate an integer random number" do
      assert_nothing_raised("Failed while generating an integer random number.") do
        mynum = @generator.rand(1000000)
        assert_kind_of(Integer, mynum, "The generator failed to return an integer number in response to @generator.rand(1000000).")
        assert((mynum >= 0), "The generator returned a number that is less than 0 (#{mynum}).")
        assert((mynum < 1000000), "The generator returned a number that is greater than or equal to 1000000 (#{mynum}).")
      end
    end

    should "generate a floating point random number" do
      assert_nothing_raised("Failed while generating a floating point random number.") do
        mynum = @generator.rand()
        assert_kind_of(Float, mynum, "The generator failed to return a floating point number in response to @generator.rand().")
        assert((mynum >= 0), "The generator returned a number that is less than 0 (#{mynum}).")
        assert((mynum < 1), "The generator returned a number that is greater than or equal to 1 (#{mynum}).")
      end
    end

    should "be able to generate 100,000 random numbers" do
      count = 0
      assert_nothing_raised("Failed on iteration #{count} while trying to generate 100000 random numbers.") do
        100000.times do
          count += 1
          @generator.rand(4294967295)
        end
      end
    end
  end

  context "Two Crypt:ISAAC objects" do
    setup do
      @generator1 = Crypt::ISAAC.new
      @generator2 = Crypt::ISAAC.new
    end

    should "be able to generate numbers simultaneously" do
      assert_nothing_raised("Failed to pull numbers from two independent streams.") do
        assert((@generator1 != @generator2), "The generators are the same. This should not happen.")
        1000.times do
          @generator1.rand(4294967295)
          @generator2.rand(4294967295)
        end
      end
    end
  end
end
