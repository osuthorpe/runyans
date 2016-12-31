# TODO: Add input(wrapper_options) for next version of SimpleForm

class NiceImageInput < SimpleForm::Inputs::Base
  def input
    template.content_tag(:div, class: "fileinput fileinput-new", data: { provides: "fileinput" }) do
      template.concat(template.content_tag(:div, class: "fileinput-new thumbnail", style: "width: 400px; height: 100%;") do
        template.image_tag((object.image.url(:thumb) || "http://placehold.it/350x150"), class: "input-prepend", size:"400x400")
      end)
      template.concat(template.content_tag(:div, nil, class: "fileinput-preview fileinput-exists thumbnail", style: "width: 400px; height: 100%;"))
      template.concat(template.content_tag(:div) do
        template.concat(template.content_tag(:span, class:"btn btn-default btn-file") do
          template.concat(template.content_tag(:span, "Select image", class: "fileinput-new"))
          template.concat(template.content_tag(:span, "Change", class: "fileinput-exists"))
          template.concat(@builder.file_field attribute_name, input_html_options)
        end)
      end)

      template.concat(template.content_tag(:a, "Remove", class: "btn fileinput-exists", data: { dismiss: "fileinput"}))
    end
  end
end
