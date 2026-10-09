% Personalized Learning Path Recommendation System

% Learning Paths

path(banker, [
    banking_basics,
    accounting,
    banking_operations,
    financial_markets,
    risk_management
]).

path(ssc_officer, [
    aptitude,
    reasoning,
    english,
    general_awareness,
    current_affairs,
    mock_tests
]).

path(entrepreneur, [
    business_basics,
    management,
    marketing,
    finance,
    business_analytics,
    entrepreneurship
]).

path(data_scientist, [
    programming,
    python,
    database,
    data_science,
    machine_learning
]).


% Get User Details

start :-
    write('Enter your name: '),
    read(Name),

    write('Choose your interest:'), nl,
    write('1. Banking'), nl,
    write('2. SSC'), nl,
    write('3. Business'), nl,
    write('4. Technology'), nl,
    read(I),

    write('Choose your career goal:'), nl,
    write('1. Banker'), nl,
    write('2. SSC Officer'), nl,
    write('3. Entrepreneur'), nl,
    write('4. Data Scientist'), nl,
    read(G),

    show_result(Name, I, G).


% Interest Details

interest(1, banking).
interest(2, ssc).
interest(3, business).
interest(4, technology).


% Career Goal Details

goal(1, banker).
goal(2, ssc_officer).
goal(3, entrepreneur).
goal(4, data_scientist).


% Recommendation

recommend(Goal, PathList) :-
    path(Goal, PathList).


% Display Result

show_result(Name, I, G) :-
    interest(I, Interest),
    goal(G, Goal),
    recommend(Goal, LearningPath),
    nl,
    write('--- LEARNING PATH RECOMMENDATION ---'), nl,
    write('Student Name: '), write(Name), nl,
    write('Interest: '), write(Interest), nl,
    write('Career Goal: '), write(Goal), nl,
    write('Recommended Learning Path:'), nl,
    display_path(LearningPath),
    write('Thank you!'), nl.

show_result(_, _, _) :-
    write('Invalid choice. Please run start again.'), nl.


% Display Learning Path

display_path([]).

display_path([First|Rest]) :-
    write('- '), write(First), nl,
    display_path(Rest).
