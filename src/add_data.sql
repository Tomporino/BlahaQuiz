-- INSERT INTO public.question (id, question, hint) VALUES (1, 'What does ''fail fast'' mean in terms of exception handling? Why is it a good practice?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 1, true, 'It means that when a problem occures, it fails immediately.
--                   	Check system`s state at several points, so failures can be detected early.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (2, 'How to find the middle element of singly linked list in O(n)?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 2, true, 'Halve the length of the linked list and get the n th (middle) throught traversing.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (3, 'Given an array of integers going from 1 to 100 (both inclusive) there is a duplicated entry. How to find it?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 3, true, 'I would make a set out of the list and then compare the set`s and the list`s length.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (4, 'What is a linked list? How to find if a linked list has a loop?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 4, true, 'A linked list is a collection type, where elements are stored in different pieces of the memory. Every node has the location of the next node, so this way they are linked together. The last element`s next value is null.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (5, 'What is the Big O time complexity of the common operations in an ArrayList, LinkedList, HashMap? And of a bubble sort, quicksort, finding items in a Binary Search tree?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 5, true, '(https://www.bigocheatsheet.com), (https://www.freecodecamp.org/news/big-o-notation-explained-with-examples/)
-- ');
--
-- INSERT INTO public.question (id, question, hint) VALUES (6, 'How does HashMap work?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 6, true, 'HashMaps are similar to the dictonaries, they are store key - value pairs.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (7, 'Why is it important for keys in a map to have an immutable type? (Consider String for example.)', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 7, true, 'Because the main goal with HashMaps is to get value without failure, so if a key works it`s better to use the same key to get it`s value. And you should store only unique key`s.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (8, 'What is a garbage collector, in a nutshell?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 8, true, 'Delete "dead code".');
--
-- INSERT INTO public.question (id, question, hint) VALUES (9, 'What is casting? What is the difference between up vs downcasting?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 9, true, 'Casting when we cast individual type to common type (Upcasting) or cast common type to individual type (Downcasting).');
--
-- INSERT INTO public.question (id, question, hint) VALUES (10, 'Which order should we catch the exceptions? Why?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 10, true, 'From most specific to most general. Because this way the most specific error wouldn`t omitted by the general one, giving clearer view about the error.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (11, 'What is a class?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 11, true, 'The Class is a "blueprint" from individual objects (instances) are created.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (12, 'What is an object?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 12, true, 'Objects are similar to real-world objects, they store state in fields and its behavior through methods. It`s an individual instance of a class.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (13, 'What is a constructor?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 13, true, 'The constructor is a function which is called at the creation of the instance. It doesn`t have a return type, it usually set up fields.');
--
-- INSERT INTO public.question (id, question, hint) VALUES (14, 'Do we require parameter for constructors?', '');
-- INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 14, true, 'It`s only optional.');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO public.question (id, question, hint) VALUES (15, 'What is an interface?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 15, true, 'They are a group of related methods without body.
	It contains what methods has the class to implement.');

INSERT INTO public.question (id, question, hint) VALUES (16, 'What are access modifiers?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 16, true, 'They are specifies the scope/accessibility of a field, methods or class.
	(Private, Default (within the package), Protected, Public)');

INSERT INTO public.question (id, question, hint) VALUES (17, 'Can a static method use non-static members?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 17, true, 'No, because non-static members need to be initialized before usage, and as static methods are initialized during compile time and non-static methods are initialized during runtime, static methods can''t access non-static methods or fields.');

INSERT INTO public.question (id, question, hint) VALUES (18, 'What is the difference between hiding a static method and overriding an instance method?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 18, true, '- Hiding a static method happens at compile time and Overriding occurs at runtime.
	- Overriding is how Java achieve runtime-polymorphism');

INSERT INTO public.question (id, question, hint) VALUES (19, 'Could we access a static variable (or method) from a non-static method? Why?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 19, true, 'Yes we can, because as non-static methods not fixed in the ram, statics do, so you can access static methods and fields since they are initialized at compile time.');

INSERT INTO public.question (id, question, hint) VALUES (20, 'Could we access a non-static variable (or method) from a static method? Why?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 20, true, 'No, because non-static members need to be initialized before usage, and as static methods are initialized during compile time and non-static methods are initialized during runtime, static methods can''t access non-static methods or fields.');

INSERT INTO public.question (id, question, hint) VALUES (21, 'How many instances you have of a static variable of a given class?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 21, true, 'None, it''s just a reference pointing to the original one created at compile while instances created at runtime.');

INSERT INTO public.question (id, question, hint) VALUES (22, 'Why is it not a good practice to write a lot of static methods?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 22, true, 'Because that''s not to oop.');

INSERT INTO public.question (id, question, hint) VALUES (23, 'What are the features of static attributes and static methods of a class? What are the benefits, when to use them?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 23, true, 'It''s used for constants that are the same for every instances of a class. (memory management)
	They can be accessed from anywhere without creating an instance of the class.');

INSERT INTO public.question (id, question, hint) VALUES (24, 'What is the ‘this’ reference?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 24, true, 'It''s a reference of the object in an instance (Class).');

INSERT INTO public.question (id, question, hint) VALUES (25, 'What are base class, subclass and superclass?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 25, true, '- Base Class: It`s a class from other classes are derived.
	- Subclass: Subclass is a child class which inherits from an other class.
	- Superclass: It`s the parent class subclasses inherits from.');

INSERT INTO public.question (id, question, hint) VALUES (26, 'Difference between overloading and overriding?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 26, true, 'Overloading is when 2 methods have the same name but different parameters (number or type).
	Overriding is when 2 methods have the same name and parameters, but one of the methods in the child class and the other is in the parent class.');

INSERT INTO public.question (id, question, hint) VALUES (27, 'What are the Object Oriented Principles? Explain the concepts with realistic examples!', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 27, true, 'Encapsulation, Abstraction, Inheritance, Polymorphism');

INSERT INTO public.question (id, question, hint) VALUES (28, 'What is method overloading?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 28, true, 'Overloading is when 2 methods have the same name but different parameters (number or type).');

INSERT INTO public.question (id, question, hint) VALUES (29, 'What is method overriding?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 29, true, 'Overriding is when 2 methods have the same name and parameters, but one of the methods in the child class and the other is in the parent class.');

INSERT INTO public.question (id, question, hint) VALUES (30, 'Explain how object oriented languages attempt to simplify memory management for Programmers.', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 30, true, 'With encapsulation we can reuse codes so we won''t have code duplications so as with inheritance.');

INSERT INTO public.question (id, question, hint) VALUES (31, 'Explain the “Single Responsibility” principle!', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 31, true, 'Every module, class and method should have responsibility over a single part of the program`s functionality.');

INSERT INTO public.question (id, question, hint) VALUES (32, 'What is an object oriented program? Explain, show.', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 32, true, 'An OOP program is written using the 4 pillars of the OOP.
	Like if we want to simulate a zoo. We have the Zoo witch had numerous methods and variables, we have employees parent class wich will be inherited by subclasses, so as for animals.');

INSERT INTO public.question (id, question, hint) VALUES (33, 'How do you make a class immutable? What do you need to watch out for?', '');
INSERT INTO public.answer (id, question_id, right_answer, answer)VALUES (DEFAULT, 33, true, 'In Java we create immutable content with the "final" keyword.
	- Childs cannot be created from a final class.
	- Data members must be declared final.
	- Construct with parameters.
	- Getters for all the variables in it and no Setters.');

INSERT INTO public.question (id, question, hint) VALUES (34, 'How many instances can be created for an abstract class?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 34, true, 'None. You can only extend abstract classes implement their methods and then you can create instance from the child class.');

INSERT INTO public.question (id, question, hint) VALUES (35, 'What is autoboxing and unboxing?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 35, true, 'Autoboxing is the automatic conversion that JVC makes between a primitive type and its corresponding object wrapper class. Unboxing is the opposite, we convert the object wrapper class (value) back to its primitive type.');

INSERT INTO public.question (id, question, hint) VALUES (36, 'If you have a variable, that shall store a positive whole number between 0 and 200, what primitive type would you use to store it?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 36, true, 'In a short (it stores data between -215 and 215).');

INSERT INTO public.question (id, question, hint) VALUES (37, 'What is the "golden rule" of variable scoping in Java? What is the lifetime of variables?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 37, true, '"Variables declared inside a function only exist inside that function."');

INSERT INTO public.question (id, question, hint) VALUES (38, 'What is the purpose of the ‘equals()’ method?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 38, true, 'We can compare methods (objects) by their content type, so we can compare for example the value of the attributes of two instance.');
