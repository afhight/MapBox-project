json.array!(@userinputs) do |userinput|
  json.extract! userinput, :id, :location1, :location2, :location3
  json.url userinput_url(userinput, format: :json)
end
