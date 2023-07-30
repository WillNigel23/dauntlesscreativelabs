module ApplicationHelper
  def works
    @works ||= Spina::Resource.find_by(name: "works").pages.live
  end

  def main_nav_items
    @main_nav_items ||= Spina::Navigation.find_by(name: "main").navigation_items.roots.sorted
  end

  def sub_nav_items
    @sub_nav_items ||= Spina::Navigation.find_by(name: "sub").navigation_items.roots.sorted
  end
end
