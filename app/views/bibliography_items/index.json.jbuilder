json.array!(@bibliography_items) do |bibliography_item|
  json.extract! bibliography_item, :id, :titel, :author, :source, :accessed
  json.url bibliography_item_url(bibliography_item, format: :json)
end
