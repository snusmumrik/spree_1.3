Deface::Override.new(:virtual_path => "spree/admin/shared/_address_form",
                     :name => "replace_billing_and_shipping",
                     :replace => "[data-hook=\"address_fields\"]",
                     :text => "
  <div class=\"field\">
    <%= f.label :lastname, t(:last_name) + ':' %>
    <%= f.text_field :lastname, :class => 'fullwidth' %>
  </div>

  <div class=\"field <%= name == t(:shipping_address) ? 'shipping-row' : 'billing-row' %>\">
    <%= f.label :firstname, t(:first_name) + ':' %>
    <%= f.text_field :firstname, :class => 'fullwidth' %>
  </div>

  <% if Spree::Config[:company] %>
    <div class=\"field <%= name == t(:company) ? 'shipping-row' : 'billing-row' %>\">
      <%= f.label :company, t(:company) + ':' %>
      <%= f.text_field :company, :class => 'fullwidth' %>
    </div>
  <% end %>

  <div class=\"field\">
    <%= f.label :zipcode, t(:zip) + ':' %>
    <%= f.text_field :zipcode, :class => 'fullwidth' %>
  </div>

  <div class=\"field <%= name == t(:shipping_address) ? 'shipping-row' : 'billing-row' %>\">
    <%= f.label :state_id, t(:state) + ':' %>
    <span id=\"<%= name == t(:shipping_address) ? 's' : 'b' %>state\">
      <%= f.text_field :state_name, :style => \"display: \#{f.object.country.states.empty? ? 'block' : 'none' };\", :disabled => !f.object.country.states.empty?, :class => 'fullwidth' %>
      <%= f.collection_select :state_id, f.object.country.states.sort, :id, :name, {:include_blank => true}, {:class => 'select2 fullwidth', :style => \"display: \#{f.object.country.states.empty? ? 'none' : 'block' };\", :disabled => f.object.country.states.empty?} %>
    </span>
  </div>

  <div class=\"field <%= name == t(:shipping_address) ? 'shipping-row' : 'billing-row' %>\">
    <%= f.label :city, t(:city) + ':' %>
    <%= f.text_field :city, :class => 'fullwidth' %>
  </div>

  <div class=\"field <%= name == t(:shipping_address) ? 'shipping-row' : 'billing-row' %>\">
    <%= f.label :address1, t(:street_address) + ':' %>
    <%= f.text_field :address1, :class => \"fullwidth\" %>
  </div>

  <div class=\"field\">
    <%= f.label :address2, t(:street_address_2) + ':' %>
    <%= f.text_field :address2, :class => \"fullwidth\" %>
  </div>

  <div class=\"field <%= name == t(:shipping_address) ? 'shipping-row' : 'billing-row' %>\">
    <%= f.label :phone, t(:phone) + ':' %>
    <%= f.phone_field :phone, :class => 'fullwidth' %>
  </div>"
                     )