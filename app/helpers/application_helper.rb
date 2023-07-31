module ApplicationHelper
  def works
    @works ||= Spina::Resource.find_by(name: "works").pages.live
  end
  
  def services
    @services ||= Spina::Resource.find_by(name: "services").pages.live
  end

  def main_nav_items
    @main_nav_items ||= Spina::Navigation.find_by(name: "main").navigation_items.roots.sorted
  end

  def sub_nav_items
    @sub_nav_items ||= Spina::Navigation.find_by(name: "sub").navigation_items.roots.sorted
  end

  def find_nav_by_name(name)
    @nav_item ||= Spina::NavigationItem.roots.sorted.find { |nav_item| nav_item.menu_title == name }
  end
end
