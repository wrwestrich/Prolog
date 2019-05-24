% Musicians database
% Will Westrich and Seth Hunter

musician('Frederic Chopin').
musician('Frans Liszt').
musician('John Williams').
musician('Jimi Hendrix').
musician('Francisco Tarrega').

genre('Classical').
genre('Romantic').
genre('Progressive Rock').
genre('Rock').

instrument('Guitar').
instrument('Piano').

plays('Frederic Chopin', 'Piano').
plays('Frans Liszt', 'Piano').
plays('John Williams', 'Guitar').
plays('Jimi Hendrix', 'Guitar').
plays('Francisco Tarrega', 'Guitar').

genre_is('Frederic Chopin', 'Romantic').
genre_is('Frans Liszt', 'Romantic').
genre_is('John Williams', 'Classical').
genre_is('John Williams', 'Progressive Rock').
genre_is('Jimi Hendrix', 'Rock').
genre_is('Francisco Tarrega', 'Classical').

guitarist(Person) :- musician(Person), plays(Person, 'Guitar').

classical_guitarist(Person) :- musician(Person), plays(Person, 'Guitar'), genre_is(Person, 'Classical').

:- initialization((write('Musicians that play guitar:'), nl)).
:- initialization(forall(guitarist(Musician), (write(Musician), nl))).

:- initialization((nl, write('Classical musicians that play guitar:'), nl)).
:- initialization(forall(classical_guitarist(Musician), (write(Musician), nl))).