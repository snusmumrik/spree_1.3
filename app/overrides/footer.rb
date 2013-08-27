# -*- coding: utf-8 -*-
Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "insert_footer",
                     :insert_top => "footer#footer",
                     :text => "<p class=\"center\"><%= link_to '運営方針', '/about_us' %>　<%= link_to 'プライバシーポリシー', '/privacy' %>　<%= link_to '特定商取引法に基づく表記', '/terms' %></p>"
                     )

Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "replace__footer_left",
                     :replace => "div#footer-left",
                     :text => "
<div id=\"footer-right\" class=\"columns omega sixteen\" data-hook>
  <p class=\"center\">&#169;<%= Date.today.year %> <%= link_to 'Spree', root_path %> <%= link_to 'facebook', 'https://www.facebook.com/' %> <%= link_to 'twitter', 'https://twitter.com/' %></p>
</div>"
                     )
