# -*- coding: utf-8 -*-
Deface::Override.new(:virtual_path => "spree/order_mailer/cancel_email",
                     :name => "replace_dear_customer",
                     :replace => "code[erb-loud]:contains('order_mailer.cancel_email.dear_customer')",
                     :text => "<%= @order.bill_address.lastname %> <%= @order.bill_address.firstname %> 様"
                     )

Deface::Override.new(:virtual_path => "spree/order_mailer/cancel_email",
                     :name => "replace_subtotal",
                     :replace => "code[erb-loud]:contains('order_mailer.cancel_email.subtotal')",
                     :text => "<%= t('order_mailer.cancel_email.subtotal') %> <%= @order.display_item_total %>
"
                     )

Deface::Override.new(:virtual_path => "spree/order_mailer/cancel_email",
                     :name => "replace_total",
                     :replace => "code[erb-loud]:contains('order_mailer.cancel_email.total')",
                     :text => "
<%= t('order_mailer.cancel_email.total') %> <%= @order.display_total %>"
                     )

Deface::Override.new(:virtual_path => "spree/order_mailer/cancel_email",
                     :name => "insert_thanks",
                     :replace => "code[erb-loud]:contains('order_mailer.cancel_email.total')",
                     :text => "<%= t('order_mailer.cancel_email.total', :total => @order.display_total) %>

<%= t('order_mailer.cancel_email.thanks') %>

facebook: https://www.facebook.com/
twitter: https://twitter.com/
"
                     )
