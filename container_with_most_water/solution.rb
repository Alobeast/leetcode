# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    # output every possibilities
    left = 0
    right = height.length - 1
    containers = []
    max_area = 0
    while left != right
        lower_height = [height[left], height[right]].min
        area = lower_height * (right - left)
        max_area = [max_area, area].max
        height[left] > height[right] ? right -= 1 : left += 1
    end
    max_area
end
