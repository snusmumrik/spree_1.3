# -*- coding: utf-8 -*-
Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "remove_home_link",
                     :replace_contents => "li#home-link",
                     :text => ""
                     )

Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "inser_products_link",
                     :insert_after => "li#home-link",
                     :text => "
<li id=\"link-to-products\" data-hook><%= link_to '商品一覧', products_path %></li>
<li><%= link_to 'facebook', 'https://www.facebook.com/' %></li>
<li><%= link_to 'twitter', 'https://twitter.com/' %></li>
<li><%= link_to 'お問い合わせ', 'mailto:info@spree.com?subject=【お問い合わせ】' %>
"
                     )
