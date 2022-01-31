def middle_node(head)
    org_head = head
    count = 0
    while !head.nil?
        count+=1
        head = head.next
    end
    
    i = 0
    head = org_head
    while i < count/2
        i+=1
        head = head.next
    end
    
    return head
end
