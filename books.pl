% Database of books
% Will Westrich and Seth Hunter

book('Across the River and into the Trees').
book('Eragon').
book('War of the Worlds').
book('The Lord of the Rings').
book('The Silmarillion').
book('Pride and Prejudice').
book('2001: A Space Odyssey').

author('H. G. Wells').
author('Ernest Hemmingway').
author('Christopher Paolini').
author('J. R. R. Tolkien').
author('Jane Austen').
author('Arthur C. Clarke').

wrote('Ernest Hemmingway', 'Across the River and into the Trees').
wrote('H. G. Wells', 'War of the Worlds').
wrote('Christopher Paolini', 'Eragon').
wrote('J. R. R. Tolkien', 'The Lord of the Rings').
wrote('J. R. R. Tolkien', 'The Silmarillion').
wrote('Jane Austen', 'Pride and Prejudice').
wrote('Arthur C. Clarke', '2001: A Space Odyssey').

% Find all books writeen by a specific author
:- initialization((write('Books by Hemmingway:'), nl)).
:- initialization(forall(wrote('Ernest Hemmingway', Books), (write(Books), nl))).

:- initialization((nl, write('Books by Tolkien:'), nl)).
:- initialization(forall(wrote('J. R. R. Tolkien', Books), (write(Books), nl))).
