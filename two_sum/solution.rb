# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    num_pool = {}
    nums.each_with_index do |num, i|
        expected_complement = target - num
        if num_pool.key?(expected_complement)
            return [i, num_pool[expected_complement]]
        else
            num_pool[num] = i
        end
    end
end
