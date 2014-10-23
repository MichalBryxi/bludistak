json.array!(@worms) do |worm|
  json.extract! worm, :id, :name, :description, :project_id=int
  json.url worm_url(worm, format: :json)
end
