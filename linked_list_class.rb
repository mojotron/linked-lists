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
		return nil if index > self.size - 1
		i = 0
		temp = @head

		while true
			return temp if i == index
			temp = temp.next_node
			i += 1
		end
		nil
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

	def to_s #represent your LinkedList objects as strings
		values = []
		temp = @head
		until temp == nil
			values << "( #{temp.value} )"
			temp = temp.next_node
		end
		values << "nil"
		puts values.join(' -> ')
	end

	def insert_at(index, value)
		new_node = Node.new(value)
		temp = @head
		i = 1

		if index == 0
			self.prepend(value)
		elsif index == self.size 
			self.append(value)
		else	
			while true
				if index == i
					new_node.next_node = temp.next_node
					temp.next_node = new_node
					break
				end
				i += 1
				temp = temp.next_node
			end
		end
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

	def delete_at(index)
		return @head = @head.next_node if index == 0
		
		current = @head.next_node
		prev = @head
		i = 1
		until current == nil
			return prev.next_node = current.next_node if i == index 

			current = current.next_node
			prev = prev.next_node
			i += 1
		end
		nil
	end

	def reverse
		current = @head
		prev = nil
		until current == nil
			temp = current.next_node
			current.next_node = prev
			prev = current
			current = temp
		end
		@head = prev
	end

end









