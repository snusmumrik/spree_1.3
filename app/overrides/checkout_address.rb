Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "remove_bcountry",
                     :set_attributes => "p[data-erb-id='<%=\"\#{address_id}country\" %>']",
                     :attributes => { :style => 'display:none' }
                     )

Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "cut_and_paste_firstname",
                     :cut => "p[data-erb-id='<%=\"\#{address_id}firstname\" %>']",
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}lastname\" %>']"
                     # :sequency => {:after => "override_bcity"}
                     )

Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "cut_and_paste_state",
                     :cut => "p[data-erb-id='<%=\"\#{address_id}state\" %>']",
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}zipcode\" %>']"
                     )

Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "cut_and_paste_city",
                     :cut => "p[data-erb-id='<%=\"\#{address_id}city\" %>']",
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}state\" %>']"
                     )

Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "cut_and_paste_address1",
                     :cut => "p[data-erb-id='<%=\"\#{address_id}address1\" %>']",
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}city\" %>']"
                     )

Deface::Override.new(:virtual_path => "spree/address/_form",
                     :name => "cut_and_paste_address2",
                     :cut => "p[data-erb-id='<%=\"\#{address_id}address2\" %>']",
                     :insert_after => "p[data-erb-id='<%=\"\#{address_id}address1\" %>']"
                     )

