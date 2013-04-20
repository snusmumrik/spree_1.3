Deface::Override.new(:virtual_path => "spree/admin/shared/_address",
                     :name => "replace_address",
                     :replace => "[data-hook=\"address\"]",
                     :text => "<%=\"\#{address.lastname} \#{address.firstname} \"%><%= address.company unless address.company.blank? %>
  <%=\"(\#{address.phone}\" %><%= address.alternative_phone unless address.alternative_phone.blank? %>)<br />
  <%= \"\#{address.zipcode}\" %><br />
  <%= \"\#{address.state_text}\#{address.city}\"\"\#{address.address1}\" %><br />
  <%= \"\#{address.address2}\" unless address.address2.blank? %>"
                     )
