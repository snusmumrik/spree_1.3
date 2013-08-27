Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "set_attributes_product_right_part",
                     :set_attributes => "div.columns.ten.omega",
                     :attributes => {:class => "columns six omega"}
                     )

Deface::Override.new(:virtual_path => "spree/products/show", :name =>
                     "set_attributes_product_left_part",
                     :set_attributes => "div.columns.six.alpha",
                     :attributes => {:class => "columns ten alpha"} )


Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "insert_bottom_product_show",
                     :insert_bottom => "div[data-hook='product_show']",
                     :erb => %q{
<div id="product-images-tumblr" class="columns sixteen">
  <% @product.images.reverse_each do |i| %>
    <li class="product-image">
      <%= link_to image_tag(i.attachment.url(:product), :title => i.alt, :width => "800px"), i.attachment.url(:large), :rel => "lightbox[#{@product.name}]", :title => i.alt %>
      <p>
        <%= i.alt %><br />
        <span class="float-right"><%= i.attachment_updated_at.strftime("%Y-%m-%d %H:%M:%S") %></span>
       </p>
    </li>
  <% end %>
</div>
}
                     )
