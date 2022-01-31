def remove_nth_from_end(head, n)
   node = head
    prev = nil
    arr_node = []
    while !node.nil? do
        arr_node << node
        node = node.next
    end
    if arr_node.length - n == 0
        head = head.next
    else 
        node = arr_node[-n-1]
        node.next = node.next.next
    end
    
    return head
end
