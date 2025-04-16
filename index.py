class Solution(object):
    def twoSumv0(self , nums , target):
        """
        : type nums: List[int]
        : type target: int
        : rtype: List[int]
        """
        num_map = {}
        i = 0 
        while i < len(nums): 
            num = nums[i]
            complement = target - num 
            if complement in num_map: 
                return [num_map[complement], i]
            num_map[num]  = i 
            i += 1
            
    def twoSumv1(self, nums , target): 
        num_map = {}
        for i in range(len(nums)): 
            num = nums[i]
            compliment = target - num
            if compliment in num_map: 
                return [num_map[compliment],i]
            num_map[num] = i
            
            
    def twoSumv2(self , nums , target): 
        num_map = {}
        i = 0
        while i < len(nums): 
            num = nums[i]
            complement = target - num
            if complement in num_map:
                return [num_map[complement] , i]
            num_map[num] = i 
            i += 1
            
        