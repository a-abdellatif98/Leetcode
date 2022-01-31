# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    solution = [] # head = nil
    ho = l1
    ht = l2
    
    while !ho.nil? && !ht.nil? do  
        if ho.val < ht.val
            solution << ho.val
            ho = ho.next
        else
            solution << ht.val
            ht = ht.next
        end
    end
    
    if ho.nil?
        while !ht.nil? do 
            solution << ht.val
            ht = ht.next
        end
    elsif ht.nil? 
        while !ho.nil? do 
            solution << ho.val
            ho = ho.next
        end
    end 
    
    solution
end

list1 = [1,2,4], list2 = [1,3,4]

re = merge_two_lists(list1, list2)

puts re