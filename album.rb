require 'pry'
class Album
  def initialize(id, title, artists)
    @id = id
    #expects a string
    @title = title
    #expects a string
    @artists = artists
    #expects an array
    @tracks = []
  end

  def id
    "#{@id}"
  end

  def title
    "Name: #{@title}"
  end

  def artists
    "Artist(s): #{@artists}"
  end

  def tracks
    @tracks
  end

  def duration_min
    album_duration = 0
    @tracks.each do |track|
      album_duration += track[:duration_ms].to_f
    end
    album_duration /= (1000 * 60)
    album_duration.round(2)
  end


  def summary
    summary = "#{title}\n"
    summary += "#{artists}\n"
    summary += "#{duration_min}\nTracks:\n"
    # binding.pry
    @tracks.each do |track|
      summary += "- #{track[:title]}\n"
    end
    "#{summary}\n"

  end

end
