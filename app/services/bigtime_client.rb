class BigtimeClient
  def space_data
    HTTParty.get('https://nft.bigtime.gg/api/market/options?page=1&pageSize=50&primary=false&tags[0]=space')
  end

  def pass_data
    HTTParty.get('https://nft.bigtime.gg/api/market/options?page=1&pageSize=50&primary=false&tags[0]=pass')
  end
end