def delete_duplicates(head)
    cursor = head

  while cursor and cursor.next
    if cursor.next.val == cursor.val
      cursor.next = cursor.next.next
    else
      cursor = cursor.next
    end
  end

  head
end