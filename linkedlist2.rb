class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous=nil)
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list(next_node, list)
  end
end
#within this statement we first store the next_node which will become our list for the recursion.
#then it sets the list.next_node to be previous node
#the next line the recursionhappens

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end
#building a method that uses recursion to traverse the linked list


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)




print_values(node3)
puts "--Linkedlist2--"
reverse_list(node3)
print_values(node1)
#building a method that uses recursion to traverse the linked list
