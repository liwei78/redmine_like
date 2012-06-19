module LikeHelper

    def canonical_url_for(options = {})
        url_for(options.merge(:only_path => false, :protocol => Setting.protocol, :host => Setting.host_name))
    end

    def facebook_like_attributes(url, config)
        {
            :href        => CGI.escape(url),
            :layout      => config[:location] == 'sidebar' ? 'button_count' : 'standard',
            :show_faces  => config[:show_faces] ? 'true' : 'false',
            :width       => config[:width].to_i > 0 ? config[:width].to_i : config[:location] == 'sidebar' ? 150 : 450,
            :action      => config[:action],
            :colorscheme => config[:colorscheme],
            :height      => config[:location] == 'sidebar' ? 21 : config[:show_faces] ? 80 : 35
        }
    end

end
