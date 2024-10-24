:- discontiguous is_a/2.
:- discontiguous part_of/2.

:- table is_a/2.
:- table part_of/2.

% Top level facts
is_a(animal, thing).
is_a(vehicle, thing).

% Facts about vehicles
is_a(truck, vehicle).
is_a(car, vehicle).

is_a(semi, truck).
is_a(pickup, truck).

is_a(sedan, car).
is_a(coupe, car).

% Parts of vehicles
part_of(engine, vehicle).
part_of(wheels, vehicle).
part_of(body, vehicle).
part_of(cab, vehicle).
part_of(bed, truck).
part_of(cargo, truck).

% Facts about animal classification
is_a(mammal, animal).
is_a(bird, animal).
is_a(reptile, animal).
is_a(fish, animal).
is_a(amphibian, animal).

is_a(lion, mammal).
is_a(elephant, mammal).
is_a(dolphin, mammal).
is_a(eagle, bird).
is_a(sparrow, bird).
is_a(snake, reptile).
is_a(turtle, reptile).
is_a(shark, fish).
is_a(salmon, fish).
is_a(frog, amphibian).
is_a(salamander, amphibian).

% Parts of animals
part_of(lion, savanna).
part_of(elephant, savanna).
part_of(dolphin, ocean).
part_of(eagle, mountains).
part_of(sparrow, forest).
part_of(snake, desert).
part_of(turtle, tropical_forest).
part_of(shark, ocean).
part_of(salmon, river).
part_of(frog, lake).
part_of(salamander, forest).
part_of(mane, lion).
part_of(trunk, elephant).
part_of(fin, dolphin).
part_of(wings, eagle).
part_of(beak, sparrow).
part_of(scales, snake).
part_of(shell, turtle).
part_of(teeth, shark).
part_of(tail, salmon).
part_of(legs, frog).
part_of(tail, salamander).

% Rules

% If X is a member of Y, and Y is a member of Z, then X is also a member of Z
is_a_(X, Y) :- is_a(X, Y).
is_a_(X, Z) :- is_a(X, Y), is_a_(Y, Z).

% If Y is Z and X is a part of Z, then X is a part of Y
part_of(X, Y) :- is_a(Y, Z), part_of(X, Z).