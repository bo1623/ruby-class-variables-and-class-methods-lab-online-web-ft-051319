class Song

  @@count=0
  @@genres=[]
  @@artists=[]

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def name
    @name
  end

  def genre
    @genre
  end

  def artist
    @artist
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    ans={}
    (@@genres.uniq).each{|i| ans[i]=[]}
    ans.each do |gen,count|
      ans[gen]=@@genres.count(gen)
    end
    ans
  end

  def self.artist_count
    ans={}
    (@@artists.uniq).each{|i| ans[i]=[]}
    ans.each do |art,count|
      ans[art]=@@artists.count(art)
    end
    ans
  end

end
