require "rails/generators"

module Ui
  module Generators
    class ComponentGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("templates", __dir__)
      argument :attributes, type: :array, default: [], banner: "attribute attribute slot:name"

      def create_component_file
        template "component.rb.tt", "app/components/ui/#{file_name}_component.rb"
        template "component.html.erb.tt", "app/components/ui/#{file_name}_component.html.erb"
      end

      def create_spec_file
        template "spec/component_spec.rb.tt", "spec/components/ui/#{file_name}_component_spec.rb"
      end

      def create_preview_file
        template "previews/component_preview.rb.tt", "test/components/previews/ui/#{file_name}_component_preview.rb"
      end

      private

      def regular_attributes
        attributes.reject { |attr| attr.start_with?("slot:") }
      end

      def slot_attributes
        attributes.select { |attr| attr.start_with?("slot:") }.map { |s| s.sub("slot:", "") }
      end
    end
  end
end