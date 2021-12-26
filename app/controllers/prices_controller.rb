class  PricesController < ApplicationController
  def index
    @prices = PriceRecord.last_30_days.select("*").order(:captured_at).group_by(&:category_id)
  end
end