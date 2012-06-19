require 'redmine'
require 'dispatcher'

require_dependency 'like_hook'

RAILS_DEFAULT_LOGGER.info 'Starting Like Plugin for Redmine'

Dispatcher.to_prepare :like_plugin do
    unless ActionView::Base.included_modules.include?(LikeHelper)
        ActionView::Base.send(:include, LikeHelper)
    end
end

Redmine::Plugin.register :like_plugin do
    name 'Facebook Like button'
    author 'Andriy Lesyuk'
    author_url 'http://www.andriylesyuk.com/'
    description 'Adds Facebook Like button to projects.'
    url 'http://projects.andriylesyuk.com/projects/redmine-like'
    version '0.0.4'

    settings :default => {
        :location    => 'sidebar',
        :show_faces  => 0,
        :width       => 150,
        :action      => 'like',
        :colorscheme => 'light'
    }, :partial => 'settings/like'
end
