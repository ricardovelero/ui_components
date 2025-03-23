# UI Components Generator 🧩

Generador personalizado de componentes UI para aplicaciones Ruby on Rails, inspirado en el estilo de diseño de [shadcn/ui](https://ui.shadcn.dev/), con soporte para:

- Componente con atributos
- Slots (`renders_one`)
- Template `.html.erb`
- Archivo de prueba (`RSpec`)
- Preview visual (`ViewComponent::Preview`)

## 🚀 Instalación

Agrega esta gema a tu `Gemfile` en cualquier proyecto Rails:

gem "ui_components", git: "https://github.com/tu_usuario/ui_components", branch: "main"

Y luego ejecuta:

bundle install

# Puedes usar un tag: si prefieres versiones fijas.

## Requisitos

• Ruby on Rails 7+ (idealmente Rails 8)
• ViewComponent
• RSpec (opcional pero recomendado para los tests)

## Uso

Generar un componente simple:

bin/rails generate ui:component Button variant size

Esto crea:
• app/components/ui/button_component.rb
• app/components/ui/button_component.html.erb
• spec/components/ui/button_component_spec.rb
• test/components/previews/ui/button_component_preview.rb

# Soporte para slots

Puedes definir slots usando el prefijo slot::

bin/rails generate ui:component Alert title slot:description slot:footer

## Previews visuales

Para habilitar los previews:

En config/environments/development.rb:

config.view_component.show_previews = true
config.view_component.preview_paths << Rails.root.join("test/components/previews")

Accede a:

http://localhost:3000/rails/view_components

## Estructura generada

app/
└── components/
└── ui/
└── example_component.rb
└── example_component.html.erb

spec/
└── components/
└── ui/
└── example_component_spec.rb

test/
└── components/
└── previews/
└── ui/
└── example_component_preview.rb

## Ejemplo de uso en una vista

<%= render Ui::AlertComponent.new(title: "Atención") do |c| %>
<% c.with_description { "Este es un mensaje importante." } %>
<% c.with_footer { "Footer opcional" } %>
Contenido principal
<% end %>

## Contribuir

Pull requests y mejoras son bienvenidas.

Si tienes ideas para extender el generador (estilos adicionales, renders_many, scaffolding de UI completo…), ¡escríbelas o colabora!

## Autor

Creado por Ricardo Rodriguez
Inspirado en shadcn/ui y Tailwind UI.

## Licencia

MIT
