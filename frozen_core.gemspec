Gem::Specification.new do |s|
  s.name = "frozen_core"
  s.version = "1.1.0"
  s.author = "Charlie Somerville"
  s.email = "charlie@charliesomerville.com"
  s.summary = "Exposes RubyVM::FrozenCore"
  s.description = "Exposes the internal RubyVM::FrozenCore class"
  s.license = "MIT"
  s.homepage = "https://github.com/charliesome/frozen_core"
  s.files = `git ls-files`.lines.map(&:chomp)
end
