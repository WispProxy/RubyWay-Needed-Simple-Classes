$PROFILLER_ON = true

class Profiller
  def self.profiler _block_description
    if $PROFILLER_ON
      start_time = Time.new
      yield
      duration = Time.new - start_time
      puts "#{_block_description}: #{duration} sec."
    else
      yield
    end
  end

end
