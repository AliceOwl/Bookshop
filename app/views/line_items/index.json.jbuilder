json.set! :data do
  json.array! @line_items do |line_item|
    json.partial! 'line_items/line_item', line_item: line_item
    json.url  "
              #{link_to 'Show', line_item }
              #{link_to 'Edit', edit_line_item_path(line_item)}
              #{link_to 'Destroy', line_item, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end