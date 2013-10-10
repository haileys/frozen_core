RubyVM::FrozenCore = (-1024..1024)
 .map { |offset| RubyVM.object_id + offset }
 .map { |ptr| ObjectSpace._id2ref(ptr) rescue nil }
 .grep(Class)
 .find { |k| k.method_defined?(:"core#define_method") }

class RubyVM::FrozenCore
  set_postexe = instance_method(:"core#set_postexe")

  define_method(:"core#set_postexe") { |*| self }

  class << self
    attr_reader :instance
  end

  @instance = (END {})

  define_method(:"core#set_postexe", set_postexe)
end
