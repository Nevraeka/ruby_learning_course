# source: http://www.ruby-forum.com/topic/99787

1.upto(100){|i|puts"FizzBuzz#{i}"[i%3<1?0:i%5<1?4:8,i%15<1?8:4]}
