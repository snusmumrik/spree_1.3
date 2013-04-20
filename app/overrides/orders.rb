Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "replace_shipping_address",
                     :replace => "code[erb-loud]:contains('order.ship_address')",
                     :text => "
  <%= order.shipping_address.zipcode %><br />
  <%= order.shipping_address.state.name %><%= order.shipping_address.city %><%= order.shipping_address.address1 %><%= order.shipping_address.address2 %><br />
  <%= order.shipping_address.lastname %> <%= order.shipping_address.firstname %>"
                     )

Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "replace_billing_address",
                     :replace => "code[erb-loud]:contains('order.bill_address')",
                     :text => "
  <%= order.billing_address.zipcode %><br />
  <%= order.billing_address.state.name %><%= order.billing_address.city %><%= order.billing_address.address1 %><%= order.billing_address.address2 %><br />
  <%= order.billing_address.lastname %> <%= order.billing_address.firstname %>"
                     )

Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "replace_full_name",
                     :replace => "span.full-name",
                     :text => "
<span class=\"full-name\">
  <%= order.credit_cards.first.last_name %>
  <%= order.credit_cards.first.first_name %>
</span>"
                     )
