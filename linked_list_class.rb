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
		i = 0
		temp = @head

		while true
			return temp if i == index
			temp = temp.next_node
			i += 1
		end
	end

	def contains?(value) # returns true if the passed in value is in the list and 
		# otherwise returns false.
		temp = @head
		until temp == nil
			return true if temp.value == value
			temp = temp.next_node
		end
		false
	end

	def find(value) #zero indexed
		i = 0
		temp = @head
		until temp == nil
			return i if temp.value == value
			temp = temp.next_node
			i += 1
		end
		nil
	end

	def to_s
		values = []
		temp = @head
		until temp == nil
			temp_value = "( " + temp.value + " )"
			values << temp_value
			temp = temp.next_node
		end
		values << "nil"
		puts values.join(' -> ')
	end

	def pop
		if self.size > 1
			x = self.size - 2
			temp = self.at(x)
			temp.next_node = nil
		else
			@head = nil
		end
	end

	def insert_at(index, value)
		new_node = Node.new(value)
		if index == 0
			self.prepend(value)
		elsif index == self.size 
			self.append(value)
		else
			temp = @head
			i = 1
			while true
				if index == i
					new_node.next_node = temp.next_node
					temp.next_node = new_node
					#temp = new_node
					break
				end
				i += 1
				temp = temp.next_node
			end
		end
	end

	def delete_at(index)
		if index == 0
			@head = @head.next_node
		elsif index == self.size - 1
			self.pop
		else
			temp = @head
			i = 0
			while true
				if index == i + 1
					temp.next_node = temp.next_node.next_node	
					break
				end
				i += 1
				temp = temp.next_node
			end
		end			
	end

	def reverse
	end

end

x = LinkedList.new
x.append('A')
x.append('B')
x.append('C')
x.append('D')
#x.prepend('D')
#x.insert_at(0, 'Z')
#x.insert_at(4, 'X')
x.delete_at(0)
x.to_s



