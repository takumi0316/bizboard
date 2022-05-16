module ApplicationHelper

    ##
    # SVGアイコン表示
    # @version 2018/06/10
    #
    def render_application_icon(name, options={})
        color = options[:color] ? "u-svg-#{options[:color]}" : ''
        size = options[:size] ? "u-svg-#{options[:size]}" : ''
        
        "<svg class='#{color} #{size} #{options[:class]}'><use xlink:href='#application-#{name}'/></svg>".html_safe

    end

end
