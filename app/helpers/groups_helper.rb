module GroupsHelper
  def show_group_icon(group)
    return unless group.icon.attached?

    "<div class='p-0 m-0'> #{image_tag(group.icon, class: 'group-icon  p-0 m-0')}</div>".html_safe
  end
end
