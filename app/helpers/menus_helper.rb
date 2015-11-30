module MenusHelper
  def menu_wrapper(active=false, submenu=false, options={}, &block)
      options[:tag] ||= :li
      styles = ""
      styles.concat("active ") if active
      styles.concat("has-sub") if submenu
      concat content_tag(options[:tag], capture(&block), class: styles)
  end
end
