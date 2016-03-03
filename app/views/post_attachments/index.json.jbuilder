json.array!(@post_attachments) do |post_attachment|
  json.extract! post_attachment, :id, :post_id, :attachment
  json.url post_attachment_url(post_attachment, format: :json)
end
