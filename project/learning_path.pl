% Personalized Learning Path Recommendation System

% Students
student(varsha).
student(swetha).
student(ranjini).
student(sarenya).

% Interests
interest(varsha, banking).
interest(swetha, ssc).
interest(ranjini, business).
interest(sarenya, technology).

% Career Goals
goal(varsha, banker).
goal(swetha, ssc_officer).
goal(ranjini, entrepreneur).
goal(sarenya, data_scientist).

% Learning Paths
path(banker,
    [banking_basics, accounting, banking_operations,
     financial_markets, risk_management]).

path(ssc_officer,
    [aptitude, reasoning, english, general_awareness,
     current_affairs, mock_tests]).

path(entrepreneur,
    [business_basics, management, marketing,
     finance, business_analytics, entrepreneurship]).

path(data_scientist,
    [programming, python, database,
     data_science, machine_learning]).

% Recommendation Rule
recommend(Student, Path) :-
    goal(Student, Goal),
    path(Goal, Path).

% Display Student Information
show(Student) :-
    interest(Student, Interest),
    goal(Student, Goal),
    recommend(Student, Path),
    write('Student: '), write(Student), nl,
    write('Interest: '), write(Interest), nl,
    write('Goal: '), write(Goal), nl,
    write('Learning Path: '), write(Path), nl.
    