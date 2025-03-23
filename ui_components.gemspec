# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "ui_components"
  spec.version       = "0.1.0"
  spec.authors       = ["Ricardo Rodriguez"]
  spec.email         = ["ricardo@solucionesio.es"]

  spec.summary       = "Generador de componentes UI para Rails inspirado en shadcn/ui"
  spec.description   = "Generador personalizado para crear componentes ViewComponent en Rails, incluyendo soporte para atributos, slots, tests y previews visuales al estilo shadcn/ui."
  spec.homepage      = "https://github.com/tu_usuario/ui_components"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.0.0"

  spec.files = Dir.glob("lib/**/*") +
               Dir["README.md", "LICENSE.txt", "ui_components.gemspec"]

  spec.require_paths = ["lib"]

  # Dependencias
  spec.add_runtime_dependency "rails", ">= 7.0"
  spec.add_runtime_dependency "view_component", ">= 3.0"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end