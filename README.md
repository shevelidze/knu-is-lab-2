# knu-is-lab-2

## Хід роботи

### Крок 1: Виберіть предметну область

Предметна область: тварини

### Крок 2: Складіть набір фактів

> Напишіть не менше 25 фактів, використовуючи is_a та part_of.

Факти пердставлені у файлі [main.pl](/main.pl). Всього 33 факти.

#### 1. Класифікація тварин та машин (is_a):

Ці факти вказують на те, до якого класу належить кожна тварина:

```
is_a(animal, thing) — тварина є річчю.
is_a(vehicle, thing) — транспортний засіб є річчю.
is_a(truck, vehicle) — вантажівка є транспортним засобом.
is_a(car, vehicle) — автомобіль є транспортним засобом.
is_a(semi, truck) — тягач є вантажівкою.
is_a(pickup, truck) — пікап є вантажівкою.
is_a(sedan, car) — седан є автомобілем.
is_a(coupe, car) — купе є автомобілем.
is_a(mammal, animal) — ссавець є твариною.
is_a(bird, animal) — птах є твариною.
is_a(reptile, animal) — рептилія є твариною.
is_a(fish, animal) — риба є твариною.
is_a(amphibian, animal) — амфібія є твариною.
is_a(lion, mammal) — лев є ссавцем.
is_a(elephant, mammal) — слон є ссавцем.
is_a(dolphin, mammal) — дельфін є ссавцем.
is_a(eagle, bird) — орел є птахом.
is_a(sparrow, bird) — горобець є птахом.
is_a(snake, reptile) — змія є рептилією.
is_a(turtle, reptile) — черепаха є рептилією.
is_a(shark, fish) — акула є рибою.
is_a(salmon, fish) — лосось є рибою.
is_a(frog, amphibian) — жаба є амфібією.
is_a(salamander, amphibian) — саламандра є амфібією.
```

#### 2. Місця проживання тварин (part_of):

Ці факти описують середовища, в яких мешкають різні тварини:

```
part_of(lion, savanna) — лев живе в савані.
part_of(elephant, savanna) — слон живе в савані.
part_of(dolphin, ocean) — дельфін живе в океані.
part_of(eagle, mountains) — орел живе в горах.
part_of(sparrow, forest) — горобець живе в лісі.
part_of(snake, desert) — змія живе в пустелі.
part_of(turtle, tropical_forest) — черепаха живе в тропічному лісі.
part_of(shark, ocean) — акула живе в океані.
part_of(salmon, river) — лосось живе в річці.
part_of(frog, lake) — жаба живе в озері.
part_of(salamander, forest) — саламандра живе в лісі.
```

#### 3. Частини тварин та машин (part_of):

Ці факти описують, які частини тіла є у кожної з тварин:

```
part_of(engine, vehicle) — двигун є частиною транспортного засобу.
part_of(wheels, vehicle) — колеса є частиною транспортного засобу.
part_of(body, vehicle) — кузов є частиною транспортного засобу.
part_of(cab, vehicle) — кабіна є частиною транспортного засобу.
part_of(bed, truck) — вантажна платформа є частиною вантажівки.
part_of(cargo, truck) — вантаж є частиною вантажівки.
part_of(mane, lion) — грива є частиною лева.
part_of(trunk, elephant) — хобот є частиною слона.
part_of(fin, dolphin) — плавник є частиною дельфіна.
part_of(wings, eagle) — крила є частиною орла.
part_of(beak, sparrow) — дзьоб є частиною горобця.
part_of(scales, snake) — луска є частиною змії.
part_of(shell, turtle) — панцир є частиною черепахи.
part_of(teeth, shark) — зуби є частиною акули.
part_of(tail, salmon) — хвіст є частиною лосося.
part_of(legs, frog) — лапи є частиною жаби.
part_of(tail, salamander) — хвіст є частиною саламандри.
```

### Крок 3: Напишіть правила виведення

> Правила можуть бути загальними для транзитивності та спадкування.

Правила пердставлені у файлі [main.pl](/main.pl).

#### 1. Правило транзитивності для класифікації (is_a):

Якщо X належить до Y, а Y належить до Z, то X також належить до Z.

```
is_a(X, Z) :- is_a(X, Y), is_a(Y, Z).
```

Приклад: Лев — ссавець, ссавці — тварини → Лев — тварина.

#### 2. Правило транзитивності для частин (part_of):

Якщо Y є Z і X є частиною Z, то X є частиною Y

```
part_of(X, Y) :- is_a(Y, Z), part_of(X, Z).
```

Приклад: Двигун —  частина транспортного засобу → Двигун — частина седану

### Крок 4: Перевірте структуру онтології

> Намалюйте дерево або уявіть його, щоб переконатися, що вимоги виконані

Дерево:
```
thing
├── animal
│   ├── mammal
│   │   ├── lion
│   │   ├── elephant
│   │   └── dolphin
│   ├── bird
│   │   ├── eagle
│   │   └── sparrow
│   ├── reptile
│   │   ├── snake
│   │   └── turtle
│   ├── fish
│   │   ├── shark
│   │   └── salmon
│   └── amphibian
│       ├── frog
│       └── salamander
└── vehicle
    ├── truck
    │   ├── semi
    │   └── pickup
    └── car
        ├── sedan
        └── coupe

```

### Крок 5: Тестуйте вашу базу знань

> Використовуйте Prolog-інтерпретатор для перевірки (https://onecompiler.com/prolog/).

![example 1](/demonstration/example-1.png)
![example 1](/demonstration/example-2.png)
![example 1](/demonstration/example-3.png)
