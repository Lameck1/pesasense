module BudgetsHelper
  def show_budget_icon(budget)
    "<div class='p-0 m-0'> #{image_tag(budget.group.icon, class: 'group-icon  p-0 m-0')}</div>".html_safe
  end

  def budget_report(budget, group_total)
    if group_total
      if budget.amount >= group_total
        "<div class='p-3 m-2 rounded bg-success'> #{content_tag :p, 'EXPENDITURE WITHIN LIMIT', class: 'h5 text-white'}</div>".html_safe +
        "<div class='p-2'> #{content_tag :p, "DIFF: #{budget.amount - group_total}", class: 'h6 text-success'}</div>".html_safe
      else
        "<div class='p-3 m-2 rounded bg-danger'> #{content_tag :p, 'SPENDING EXCEEDS BUDGET', class: 'h5 text-white'}</div>".html_safe +
        "<div class='p-2'> #{content_tag :p, "DIFF: #{budget.amount - group_total}", class: 'h6 text-danger'}</div>".html_safe
      end
    else
      "<div class='p-3 m-2 rounded bg-info'> #{content_tag :p, 'NO EXPENDITURE YET', class: 'h5 text-black'}</div>".html_safe    
    end
  end
end
