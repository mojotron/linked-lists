# Linked list

In computer science, a linked list is a linear collection of data elements, whose order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a collection of nodes which together represent a sequence. In its most basic form, each node contains: data, and a reference (in other words, a link) to the next node in the sequence. This structure allows for efficient insertion or removal of elements from any position in the sequence during iteration. Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Linked_list).

This project is build with two classes. First class is Node and represents element in Linked list. Node class contains two variables - value that stores data and next_node which links current node with next one. Second class, LinkedList, represents full list.
Linked list class has following methods:
1. #append adds a new node to the end of the list
2. #prepend adds a new node to the start of the list
3. #size returns the total number of nodes in the list
4. #head returns the first node in the list
5. #tail returns the last node in the list
6. #at(index) returns the node at the given index
7. #pop removes the last element from the list
8. #contains? returns true if the passed in value is in the list and otherwise returns false.
9. #find(data) returns the index of the node containing data, or nil if not found.
10. #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
11. #insert_at(index) that inserts the node at the given index
12. #remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)
13. #reverse that reverse order of nodes from tail to head instead head to tail

This project is part of [The Odin Project curriculum](https://www.theodinproject.com/). Awesome on-line web development learning place!