module ApplicationHelper
  def link_to_in_li(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end

  def nested_li(objects, &block)
    objects = objects.order(:lft) if objects.is_a? Class

    return '' if objects.size == 0

    output = '<ul><li>'
    path = [nil]

    objects.each_with_index do |o, i|
      if o.parent_id != path.last
        # We are on a new level, did we descend or ascend?
        if path.include?(o.parent_id)
          # Remove the wrong trailing path elements
          while path.last != o.parent_id
            path.pop
            output << '</li></ul>'
          end
          output << '</li><li>'
        else
          path << o.parent_id
          output << '<ul><li>'
        end
      elsif i != 0
        output << '</li><li>'
      end
      output << capture(o, path.size - 1, &block)
    end

    output << '</li></ul>' * path.length
    output.html_safe
  end

  def nested_nav_li(objects, &block)
    objects = objects.order(:lft) if objects.is_a? Class

    return '' if objects.size == 0

    output = '<li>'
    path = [nil]

    objects.each_with_index do |object, i|

      # if object.parent_id != path.last
      #   output << capture(object, path.size - 1, &block)
      # end
      output << capture(object, path.size - 1, &block)
      output << '</li><li>'

    end

    output << '</li>' * path.length
    output.html_safe
  end

  def markdown(text)
   options = {
     filter_html:     true,
     hard_wrap:       true,
     link_attributes: { rel: 'nofollow', target: "_blank" },
     space_after_headers: true,
     fenced_code_blocks: true
   }

   extensions = {
     autolink:           true,
     superscript:        true,
     disable_indented_code_blocks: true
   }

   renderer = Redcarpet::Render::HTML.new(options)
   markdown = Redcarpet::Markdown.new(renderer, extensions)

   markdown.render(text).html_safe
 end
end
