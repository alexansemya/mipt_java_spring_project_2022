MERGE INTO SUBJECT (
                    NAME,
                    ID
    )
    VALUES (
               'Математический Анализ',
               1
           ),
           (
               'ОКТЧ',
               2
           ),
           (
               'Алгебра и геометрия',
               3
           );
MERGE INTO QUESTION (
                     RIGHT_ANSWER_INDEX,
                     QUESTION_TO_ANSWER,
                     SUBJECT_ID,
                     ID
    )
    VALUES (
               1,
               'Выберите недиффиренцируемую в нуле функцию',
               1,
               1
           ),
           (
               3,
               'Посчитайте производную f(x) = x ^ 2 + x + 1',
               1,
               2
           ),
           (
               1,
               'Существует ли последовательность, множеством частичных пределов которой является в точности множество Q',
               1,
               3
           ),
           (
               4,
               'Сколько теорем придумал Коши?',
               1,
               4
           ),
           (
               1,
               'Следует ли из непрерывности дифференцируемость?',
               1,
               5
           ),
           (
               3,
               'Координаты многочлена P(x) = (x+1)^3 в базисе <x,  x^2,  1,  x^3> равны',
               3,
               6
           ),
           (
               1,
               'Каким свойством обладает матрица перехода?',
               3,
               7
           ),
           (
               2,
               'Чему эквивалентны линейные преобразования строк?',
               3,
               8
           ),
           (
               4,
               'Чему равен эксцентриситет параболы?',
               3,
               9
           ),
           (
               1,
               'Чему равен эксцентриситет окружности?',
               3,
               10
           ),
           (
               4,
               'Чему равен ord_3600(3)?',
               2,
               11
           ),
           (
               3,
               'Решите уравнение ord_108(x) = 1',
               2,
               12
           ),
           (
               4,
               'Верны ли следующие утверждения? 1.Порядок матрицы Адамара всегда кратен 4.   2. Для любого числа кратного 4 существует матрица Адамара?',
               2,
               13
           ),
           (
               4,
               'Сколько элементов в Z*_105?',
               2,
               14
           ),
           (
               4,
               'В каком году Райгородский не рассказывал анекдот про Ферматиста?',
               2,
               15
           );

MERGE INTO POSSIBLE_ANSWERS (
                             ID,
                             POSSIBLE_ANSWER4,
                             POSSIBLE_ANSWER3,
                             POSSIBLE_ANSWER2,
                             POSSIBLE_ANSWER1,
                             QUESTION_ID
    )
    VALUES (
               1,
               'D(x) * x',
               'x^2',
               'x',
               '|x|',
               1
           ),
           (
               2,
               'sin(x)',
               '2x + 1',
               0,
               '2x',
               2
           ),
           (
               3,
               'Этот вопрос является нерешенной проблемой',
               'Определить невозможно',
               'Да',
               'Нет',
               3
           ),
           (
               4,
               'Весь математический анализ держится на нём',
               3,
               2,
               1,
               4
           ),
           (
               5,
               'Этот вопрос является нерешенной проблемой',
               'Определить невозможно',
               'Да',
               'Нет',
               5
           ),
           (
               6,
               '(1,3,3,1)',
               '(3, 3, 1, 1)',
               '(1,1,3,3)',
               '(3, 1, 3, 1)',
               6
           ),
           (
               7,
               'Вырожденность',
               'Кососимметричность',
               'Симметричность',
               'Невырожденность',
               7
           ),
           (
               8,
               'Вычитанию элементарной матрицы',
               'Сложению с элементарной матрицей',
               'Домножению справа на элементарную матрицу',
               'Домножению слева на элементарную матрицу',
               8
           ),
           (
               9,
               1,
               '<1',
               '>1',
               0,
               9
           ),
           (
               10,
               1,
               '<1',
               '>1',
               0,
               10
           ),
           (
               11,
               'Не определен',
               0,
               -                         1,
               1,
               11
           ),
           (
               12,
               108,
               1,
               -                         1,
               109,
               12
           ),
           (
               13,
               'Этот вопрос является нерешенной проблемой',
               'Оба утверждение неверны',
               'Верно второе утверждение',
               'Верно первое утверждение',
               13
           ),
           (
               14,
               35,
               48,
               1,
               105,
               14
           ),
           (
               15,
               2020,
               2022,
               2019,
               2021,
               15
           );
MERGE INTO USER (
                 ID,
                 GROUP_NUMBER,
                 PASSWORD,
                 EMAIL,
                 NAME,
                 PASSED_EXAMS_AMOUNT,
                 PASSED_EXAMS_MARKS_SUM,
                 AVERAGE_MARK
    )
    VALUES (
               1,
               120,
               '$2a$10$hOuu/SYYHBGHKWNEn41rJuT8YA786/iO.agAKqvMdWD/zXD2vSyrS',
               'test@gmail.com',
               'Зайцев Егор',
               0,
               0,
               0.0
           ),
           (
               2,
               999,
               '$2a$10$um51r1Bw.IxKp18Xy2t/Oer.miOjmUrerjf56ZsGlISXSZSVJdLZq',
               'admin@phystech.edu',
               'admin',
               999,
               999,
               999.0
           );
MERGE INTO ROLE (
                 ID,
                 NAME
    )
    VALUES (
               1,
               'ROLE_USER'
           ),
           (
               2,
               'ROLE_ADMIN'
           );

MERGE INTO USER_ROLES KEY(USERS_ID, ROLES_ID)
    VALUES (
               1,
               1
           ),
           (
               2,
               2
           );