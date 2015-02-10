$QUICKSORT_ON = true

class Array

  protected

  def partition_triple
    if $QUICKSORT_ON
      arr_input = Array.new(3) { |i| [] }

      each do |x|
        arr_input[yield(x)] << x
      end

      arr_input
    end
  end


  public

  def qsort
    if $QUICKSORT_ON
      return self.dup if size <= 1
      c, l, r = partition_triple { |x| first <=> x }
      l.qsort + c + r.qsort
    end
  end

  def qsort!
    if $QUICKSORT_ON
      self.replace(self.qsort)
    end
  end

end
