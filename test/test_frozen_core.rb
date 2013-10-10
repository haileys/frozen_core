require "minitest/autorun"
require "frozen_core"

class TestFrozenCore < MiniTest::Unit::TestCase
  def test_exposes_frozen_core
    assert defined?(RubyVM::FrozenCore)
  end

  def test_frozen_core_has_internal_methods
    assert RubyVM::FrozenCore.method_defined?(:"core#define_method")
  end
end
