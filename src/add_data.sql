INSERT INTO public.question (id, question, hint) VALUES (1, 'What does ''fail fast'' mean in terms of exception handling? Why is it a good practice?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 1, true, 'It means that when a problem occures, it fails immediately.
                  	Check system`s state at several points, so failures can be detected early.');

INSERT INTO public.question (id, question, hint) VALUES (2, 'How to find the middle element of singly linked list in O(n)?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 2, true, 'Halve the length of the linked list and get the n th (middle) throught traversing.');

INSERT INTO public.question (id, question, hint) VALUES (3, 'Given an array of integers going from 1 to 100 (both inclusive) there is a duplicated entry. How to find it?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 3, true, 'I would make a set out of the list and then compare the set`s and the list`s length.');

INSERT INTO public.question (id, question, hint) VALUES (4, 'What is a linked list? How to find if a linked list has a loop?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 4, true, 'A linked list is a collection type, where elements are stored in different pieces of the memory. Every node has the location of the next node, so this way they are linked together. The last element`s next value is null.');

INSERT INTO public.question (id, question, hint) VALUES (5, 'What is the Big O time complexity of the common operations in an ArrayList, LinkedList, HashMap? And of a bubble sort, quicksort, finding items in a Binary Search tree?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 5, true, '(https://www.bigocheatsheet.com), (https://www.freecodecamp.org/news/big-o-notation-explained-with-examples/)
');

INSERT INTO public.question (id, question, hint) VALUES (6, 'How does HashMap work?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 6, true, 'HashMaps are similar to the dictonaries, they are store key - value pairs.');

INSERT INTO public.question (id, question, hint) VALUES (7, 'Why is it important for keys in a map to have an immutable type? (Consider String for example.)', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 7, true, 'Because the main goal with HashMaps is to get value without failure, so if a key works it`s better to use the same key to get it`s value. And you should store only unique key`s.');

INSERT INTO public.question (id, question, hint) VALUES (8, 'What is a garbage collector, in a nutshell?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 8, true, 'Delete "dead code".');

INSERT INTO public.question (id, question, hint) VALUES (9, 'What is casting? What is the difference between up vs downcasting?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 9, true, 'Casting when we cast individual type to common type (Upcasting) or cast common type to individual type (Downcasting).');

INSERT INTO public.question (id, question, hint) VALUES (10, 'Which order should we catch the exceptions? Why?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 10, true, 'From most specific to most general. Because this way the most specific error wouldn`t omitted by the general one, giving clearer view about the error.');

INSERT INTO public.question (id, question, hint) VALUES (11, 'What is a class?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 11, true, 'The Class is a "blueprint" from individual objects (instances) are created.');

INSERT INTO public.question (id, question, hint) VALUES (12, 'What is an object?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 12, true, 'Objects are similar to real-world objects, they store state in fields and its behavior through methods. It`s an individual instance of a class.');

INSERT INTO public.question (id, question, hint) VALUES (13, 'What is a constructor?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 13, true, 'The constructor is a function which is called at the creation of the instance. It doesn`t have a return type, it usually set up fields.');

INSERT INTO public.question (id, question, hint) VALUES (14, 'Do we require parameter for constructors?', '');
INSERT INTO public.answer (id, "question_id", right_answer, answer) VALUES (DEFAULT, 14, true, 'It`s only optional.');