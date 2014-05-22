module ApplicationHelper
  def render_square(row, col, moves)
    css_class = get_css_class(row, col, moves)
    case css_class
    when "cross", "nought"
      cell_html(css_class)
    else
      link_to moves_path(params[:id], placement: "#{row}-#{col}"), method: :post do
        cell_html(css_class)
      end
    end
  end

  def cell_html(css_class)
    html = <<-HTML_SNIPPET
      <div class="cell" class='#{css_class}'>
        class: '#{css_class}'
      </div>
    HTML_SNIPPET
    html.html_safe
  end


  def get_css_class(row, col, moves)
    move = moves.detect { |m| m.placement == "#{row}-#{col}" }
    if move
      move.move_no.odd? ? "cross" : "nought"
    else
      "free"
    end
  end

end
