class FetchPriceWorker
  include Sidekiq::Worker

  def perform
    client.space_data.parsed_response['items'].each do |item|
      begin
        PriceRecord.create!(
          captured_at: Time.now,
          category_id: item['optionName'],
          price: item['lowestPrice']
        )
      rescue => e
        Rails.logger.info("error: #{e}, item: #{item}")
      end
    end
    puts 'hello'
  end

  private
  def client
    @client ||= BigtimeClient.new
  end

end
