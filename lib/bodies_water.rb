

class Ocean
    def to_s
        "from Ocean"
    end
  
    def m1
        puts 'I am Ocean m1()'
    end
  
    def m2
        puts 'I am Ocean m2()'
    end
  
    def m3
        puts 'I am Ocean m3()'
    end
  
    def m4
        puts 'I am Ocean m4()'
    end
  end
  
  class Lake < Ocean
    def to_s
        "from Lake"
    end
  
    def m3
        puts 'I am Lake m3()'
    end
  end
  
  class Bay < Lake
    def to_s
        "from Bay"
    end
  
    def m1
        puts 'I am Bay m1()'
    end
  
    def m2
        super
        puts 'I am Bay m2()'
    end
  end
  
  class Pond < Bay
    def to_s
        "from Pond"
    end
  
    def m4
        puts 'I am Pond m4()'
    end
  end
  
  # Driver program
  o = Ocean.new
  l = Lake.new
  b = Bay.new
  p = Pond.new
  
  puts o
  o.m1
  o.m2
  o.m3
  puts l
  l.m1
  l.m2
  l.m3
  puts b
  b.m1
  b.m2
  b.m3
  puts p
  p.m1
  p.m2
  p.m3
  p.m4
  