json.array!(@words) do |word|
  json.extract! word, :id, :content
  json.url word_url(word, format: :json)
end
