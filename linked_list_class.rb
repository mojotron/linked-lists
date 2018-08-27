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
			#there is only 1 node in list so head is tail
			@tail = new_node 
		else
			#tail aready exists so need to be reasign but
			#first change link of already existing head/tail node by
			# setting tails link to new node
			@tail.next_node = new_node 
			#then change tail to new node and therfore new value
			@tail = new_node
		end
	end
end

x = LinkedList.new
x.append('A')
x.append('B')
x.append('C')
p x.head
