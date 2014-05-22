module ApplicationHelper
  def render_square(row, col, moves)
    symbol = get_symbol(row, col, moves)
    case symbol
    when "X", "O"
      cell_html(symbol)
    else
      link_to moves_path(params[:id], placement: "#{row}-#{col}"), method: :post do
        cell_html(symbol)
      end
    end
  end

  def cell_html(symbol)
    html = <<-HTML_SNIPPET
      <div class="cell">
        #{symbol}
      </div>
    HTML_SNIPPET
    html.html_safe
  end


  def get_symbol(row, col, moves)
    move = moves.detect { |m| m.placement == "#{row}-#{col}" }
    if move
      move.move_no.odd? ? "X" : "O"
    else
      "?"
    end
  end

  def ai
    # if move_no.even?
    # placement = any symbol with ?
    # user_id = 1



  end 

end
