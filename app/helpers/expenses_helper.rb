module ExpensesHelper
  def show_expense_icon(exp)
    if exp.group
      "<div class='p-0 m-0'> #{image_tag(exp.group.icon, class: 'group-icon  p-0 m-0')}</div>".html_safe
    else
      "<div class='p-0 m-0'> #{content_tag :p, '!?', class: 'group-icon  p-0 m-0'}</div>".html_safe
    end
  end

  def create_group_link
    link_to 'Create Group', new_group_path if @current_user.groups.empty?
  end
end
