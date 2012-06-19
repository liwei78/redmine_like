class LikeHook  < Redmine::Hook::ViewListener

    render_on :view_projects_show_left,              :partial => 'like/project/content'
    render_on :view_projects_show_sidebar_bottom,    :partial => 'like/project/sidebar'
    render_on :view_wiki_show_left,                  :partial => 'like/wiki/content'
    render_on :view_wiki_show_sidebar_top,           :partial => 'like/wiki/sidebar'
    render_on :view_news_index_left,                 :partial => 'like/news'
    render_on :view_news_show_left,                  :partial => 'like/news'
    render_on :view_versions_show_bottom,            :partial => 'like/version'
    render_on :view_projects_roadmap_version_bottom, :partial => 'like/version'
    render_on :view_welcome_index_left,              :partial => 'like/welcome'
    render_on :view_issues_show_bottom,              :partial => 'like/issue/content'
    render_on :view_issues_sidebar_planning_bottom,  :partial => 'like/issue/sidebar'
    render_on :view_with_like_btns,                  :partial => 'like/common/facebook'

end
