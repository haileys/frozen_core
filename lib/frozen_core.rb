RubyVM::FrozenCore = (-1024..1024)
 .map { |offset| RubyVM.object_id + offset }
 .map { |ptr| ObjectSpace._id2ref(ptr) rescue nil }
 .grep(Class)
 .find { |k| k.method_defined?(:"core#define_method") }
