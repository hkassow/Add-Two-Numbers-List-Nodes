class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def add_two_numbers(l1, l2)
# type your code here
    head = nil
    tail_pointer = nil
    remainder = 0
    while !l1.nil? | !l2.nil?
        x1, x2 = 0, 0
        x1 = l1.val unless l1.nil?
        x2 = l2.val  unless l2.nil?
        x = x1 + x2 + remainder
        node = ListNode.new(x%10)
        if head.nil?
            head = node
            tail_pointer = node
        else
            tail_pointer.next = node
            tail_pointer = node
        end       
        remainder = (10 <= x)?1: 0;
        l1 = l1.next unless l1.nil?
        l2 = l2.next unless l2.nil?
    end
    head
end
  

if __FILE__ == $PROGRAM_NAME
puts "Expecting: 0"
l1 = ListNode.new(0)
l2 = ListNode.new(0)
puts "=>", add_two_numbers(l1,l2).val

n1 = ListNode.new(3)
n2 = ListNode.new(4, n1)
l1 = ListNode.new(2, n2)

n3 = ListNode.new(4)
n4 = ListNode.new(6, n3)
l2 = ListNode.new(5, n4)
x = add_two_numbers(l1, l2)
binding.pry
# Don't forget to add your own!
end
  
# Please add your pseudocode to this file
# And a written explanation of your solution