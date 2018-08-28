require_relative "node_class.rb"

class LinkedList
	attr_accessor :head, :tail 

	def intialize
		@head = nil
		@tail = nil
	end

	def append(value)
		new_node = Node.new(value)
		if head.nil?
			@head = new_node
			@tail = new_node # there is only 1 node in list so head is tail
		else
			# Tail aready exists so need to be reasign but first change link of already 
			# existing head/tail node by setting tails link to new node.
			@tail.next_node = new_node 
			# then change tail to new node and therfore new value
			@tail = new_node
		end
	end

	def prepend(value)
		new_node = Node.new(value)
		if head.nil?
			@head = new_node
			@tail = new_node
		else
			# we got head and tail, they are same, only 1 node atm. We leave tail as it
			# is. First change new_node link variable to "old" head -> now just tail.
			new_node.next_node = @head
			# then reasign head to new node
			@head = new_node
		end
	end

	def size
		count = 0
		temp = @head # start at head

		while temp != nil
			count += 1
			temp = temp.next_node # reasign temp with next node using @next_node variable
		end
		count
	end

	def head
		@head	
	end

	def tail
		@tail
	end

	def at(index) #returns the node at the given index (zero indexed)
		return nil if index > self.size
		count = 0
		temp = @head

		while true
			return temp if count == index
			temp = temp.next_node
			count += 1
		end
	end

	def pop
	end

	def contains?(value)
	end

	def find(value)
	end

	def to_s
	end

end

x = LinkedList.new
x.append('A')
x.append('B')
x.append('C')
x.prepend('D')
x.size
#p x.head
#p x.tail
p x.at(0)
p x.at(1)
p x.at(2)
p x.at(3)
p x.at(35)
