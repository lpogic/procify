require_relative "./lib/procify/version"

Gem::Specification.new do |s|
  s.name        = "procify"
  s.version     = Procify::VERSION
  s.summary     = "Method to proc conversion path"
  s.description = <<-EOT

  EOT
  s.authors     = ["Łukasz Pomietło"]
  s.email       = "oficjalnyadreslukasza@gmail.com"
  s.files       = Dir.glob('lib/**/*')
  s.homepage    = "https://github.com/lpogic/procify"
  s.license       = "Zlib"
  s.required_ruby_version     = ">= 3.0.6"
  s.metadata = {
    "documentation_uri" => "https://github.com/lpogic/procify/blob/main/doc/wiki/README.md"
  }
end