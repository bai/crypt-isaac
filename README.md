# ISAAC [![Build Status](https://secure.travis-ci.org/bai/crypt-isaac.png)](http://travis-ci.org/bai/crypt-isaac)

ISAAC is a cryptographically secure PRNG for generating high quality random
numbers. Detailed information about the algorithm can be found at:
http://burtleburtle.net/bob/rand/isaac.html

This is a pure Ruby implementation of the algorithm. It is reasonably fast for
a pure Ruby implementation. On an 800Mhz PIII computer running Ruby 1.8.2, and
while the machine is also serving as general desktop, the library seems to
consistently generate between 15000 and 16000 random numbers per second.

Ruby uses the Mersenne Twister as its PRNG, and while this the Twister is
a fast PRNG that produces highly random numbers, it is not strong for
cryptographic purposes, nor is it suitable when one needs multiple independent
streams of random numbers. Crypt::ISAAC is suitable for either purpose.

## Requirements

  * Ruby 1.8
  * Ruby 1.9


## Install

If you have never installed Crypt::ISAAC, you may run the test suite to
confirm that it works with:

    ~$ bundle install
    ~$ bundle exec rake


## Usage

    require 'crypt-isaac'
    rng = Crypt::ISAAC.new
    r1 = rng.rand() # returns a floating point between 0 and 1
    r2 = rng.rand(1000) # returns an integer between 0 and 999

rand() should work identically to the Kernel.rand().

Enjoy it. Let me know if you find anything that can be improved or that needs
to be fixed.


## License

The Crypt::ISAAC library is licensed with an MIT style licence. As for the
ISAAC algorithm itself, see: http://burtleburtle.net/bob/rand/isaac.html
