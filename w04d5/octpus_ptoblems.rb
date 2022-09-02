# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
#  'fiiiissshhhhhh']
#  => "fiiiissshhhhhh"


    def sluggish_octopus(arr)
        self.arr.sort{|a,b| a.length - b.length}[-1]
    end

    # domain octopus

    def merge_sort (array, &prc)
        return array if array.length <= 1
    
        mid_idx = array.length / 2
        merge(
          merge_sort(array.take(mid_idx), &prc),
          merge_sort(array.drop(mid_idx), &prc),
          &prc
        )
      end
    
      # NB: In Ruby, shift is an O(1) operation. This is not true of all languages.
      def merge(left, right, &prc)
        merged_array = []
        prc = Proc.new { |num1, num2| num1 <=> num2 } unless block_given?
        until left.empty? || right.empty?
          case prc.call(left.first, right.first)
          when -1
            merged_array << left.shift
          when 0
            merged_array << left.shift
          when 1
            merged_array << right.shift
          end
        end
    
        merged_array + left + right
      end
    def domain_octopus(arr)
         merge_sort(arr){|a,b| a.length - b.length}[-1]
    end

    def clever_octopus(arr)
        longest = arr[0].length
        longest_fish = arr[0]
        (0...arr.length).each do |i|
            if arr[i].length > longest
                longest = arr[i].length
                longest_fish = arr[i]
            end
        end

        longest_fish
    end

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
# "left",  "left-up" ]
    def slow_dance (target, tiles_array)
        tiles_array.each_with_index do |ele, i|
            if ele == target
                return i
            end
        end
        
    end

    def fast_dance(target,tiles_array)
    end




