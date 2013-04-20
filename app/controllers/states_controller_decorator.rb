Spree::StatesController.class_eval do
  def index
    # we return ALL known information, since billing country isn't restricted
    # by shipping country
    # respond_with @state_info = Spree::State.states_group_by_country_id.to_json, :layout => nil
    respond_with @state_info = Spree::State.where("country_id = 100").order("id").states_group_by_country_id.to_json, :layout => nil
  end
end
