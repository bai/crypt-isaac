require 'bundler/setup'
require 'test/unit'
require 'shoulda/context'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'crypt-isaac'

class Test::Unit::TestCase
end
