import 'teacher.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  DatabaseHelper._init();

  Future<List<Teacher>> getTeachers() async {
    return [
      createTeacher(
        id: 1,
        name: 'Камынин Виталий Леонидович',
        rating: 4.7,
        reviews: [
          '\n Лекции: \n'
          ,
          'Хорошо даёт и объясняет материал, отвечает на все вопросы, даже на '
              'самые очевидные. Но вот есть одна проблема, не всегда понятно, '
              'что он говорит и пишет. Бывает кидает разрывные шутки.'
          ,
          'Очень быстро пишет материал, если умный - все поймешь, остальным '
              'соболезную. но на все вопросы отвечает охотно и с большим желанием.'
          ,
          '\nСеминары: \n'
          ,
          'Семинары супер кайф, все нравится, все объясняет что куда и зачем.'
          ,
          'Прекрасно проводит семинары, после них выходишь полным знаний, в случае '
              'чего объяснит всё и даже больше, при необходимости даже несколько раз.'
              'Очень спокойный, поэтому вопросы воспринимаются очень хорошо, а ответы '
              'на задаваемые вопросы полностью разъясняют непонятные моменты.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 2,
        name: 'Сучков Михаил Вадимович',
        rating: 4.1,
        reviews: [
          '\nЛекции: \n'
          ,
          'Преподаватель говорит тихо, поэтому советую садиться как можно'
              ' ближе, иначе ничего не будет слышно. Если есть какие-то вопросы - старается объяснить.'
          ,
          'Лекции проходят в ускоренном темпе, из-за чего порой сложновато воспринимать информацию.'
          ,
          'Говорит и пишет в среднем темпе, но иногда начинает разгоняться так, '
              'что не успеваешь; говорит тихо, поэтому нужно прислушиваться и садиться поближе; '
              'объясняет довольно общими фразами, так что для понимания придется потрудиться самому.'
          ,
          'Лекции не самые лучшие, немного тяжело их разобрать, понять и готовиться по ним к экзаменам.'
          ,
          '\nСеминары: \n'
          ,
          'Хорошо решаем примеры.'
          ,
          'В начале рассказывает краткую инфу из лекции и дальше решаем задачки, обычно '
              'выходят к доске только те, кто хотят, когда не знаешь, что писать, то диктует, '
              'иногда на вопрос почему может ответить, что это в школе проходили, хотя в '
              'обычных школах об этом говорят мало.'
          ,
          'Семинары проводит отлично, решаем задачи, всё объяснит, поможет разобраться '
              'во всех задачах, если ты что-то не понял.'
          ,
          'Повторяет основные моменты с лекции, которые нужны для решения задач и разбирает '
              'пару примеров сам, потом вызывает к доске по желанию или тех, кого запомнил.'
          ,
          'В отличие от лекций, на семинарах его спокойно слышно и он понятно объясняет.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 3,
        name: 'Волков Владимир Евгеньевич',
        rating: 4.5,
        reviews: [
          '\nЛекции: \n'
          ,
          'Использует презентации, что очень помогает, если не успел на первые ряды.'
          ,
          '\nСеминары: \n'
          ,
          'На семинарах он очень весёлый, материал объясняет быстро, поэтому не всегда '
              'всё понятно, часто приходится дополнительно спрашивать. Несмотря на '
              'свою доброту, контрольные у него очень непростые, поэтому придётся к ним заранее готовиться '
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 4,
        name: 'Горницкий Андрей Александрович',
        rating: 4.8,
        reviews: [
          '\nЛекции: \n'
          ,
          'Все очень понятно объясняет и приводит аналогии.'
          ,
          'Очень хорошо ведёт лекции, интересно слушать. 90% материала усваивается на месте. '
              'Не торопится, но и не тянет время. Видно, что заинтересован в своем предмете.'
          ,
          'Все подробно и понятно.'
          ,
          '\nСеминары: \n'
          ,
          'Тоже самое, что и с лекциями, дз не проверяет, но если что, можно разобрать.'
          ,
          'Семинары интересные, есть возможность проявить активность. Задаёт нормальное количество дз, '
              'разбирает все вопросы очень детально.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 5,
        name: 'Теляковский Дмитрий Сергеевич',
        rating: 4.3,
        reviews: [
          '\nЛекции: \n'
          ,
          'В целом лекции читает нормально, структурированно, но иногда посреди новой темы может '
              'вспомнить, что он 3 лекции назад плохо доказал теорему, и начать доказательство заново. '
              'Смешной дед, радуется цветным мелкам и говорит, что мы все тупые и ничего не сдадим. '
              'А ещё он САМЫЙ УМНЫЙ, поэтому на экзамене будут никому не известные дедекиндовы сечения '
              'и им придуманная лемма от отделимости.'
          ,
          'Не очень понятно, много отвлекается.'
          ,
          'Как лектор вроде нормальный, все время спрашивает понятно ли и доказывает если попросить. '
              'Почерк хороший все внятно написано, если непонятно то можно спросить (любит разъяснять если '
              'человеку правда не понятно). Если лекцию не понял , то лучше перечитать  лекцию  по несколько  '
              'раз (помагет  100%).'
          ,
          'Не очень понятно, плохо структурировано.'
          ,
          '\nСеминары: \n'
          ,
          'В принципе удовлетворительно, объясняет не очень.'
          ,
          'Плохо объясняет, требует выполнения всех задач в КР.'
          ,
          '\nДополнительно: \n'
          ,
          'Уникальный преподаватель. Такое чувство что чувствует уровень студента и специально задаёт '
              'вопрос на уровень выше чем он знает, если студент хочет хорошую оценку, а так готов помочь и идёт '
              'на встречу к студентам в любых вопросах.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 6,
        name: 'Богданов Алексей Александрович',
        rating: 4.9,
        reviews: [
          '\nЛекции: \n'
          ,
          'Самый лучший препод! Прекрасно объясняет материал, очень смешно шутит, '
              'особенно когда сам чего-то не знает. Почти после каждой лекции '
              'ему посвящаются аплодисменты. Вообще он просто зайка. Как только звенит '
              'звонок, он обрывается на полуслове и такой: "Перерыв". Это очень забавно выглядит.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 7,
        name: 'Тюфлин Сергей Александрович',
        rating: 4.8,
        reviews: [
          '\nСеминары: \n'
          ,
          'Очень крутой семинарист, в начале объясняет все что нужно для семинара, '
              'а дальше даёт подобные задачки и все объясняет. Контрольные проводит '
              'нормально, даёт попытки переписать во время контрольных других групп.'
          ,
          'Чётко объясняет, нормальные кр на уровне сложности дз, адекватные условия '
              'получения зачёта (решить все задачи не обязательно с первого раза) и переписывания кр.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 8,
        name: 'Дудкина Татьяна Дмитриевна',
        rating: 4.3,
        reviews: ['\nСеминары: \n'
          , 'Семинары проводит нормально, но за посещаемостью строго следит, '
              'если с посещаемостью все плохо попросит дз за всё время и допуск, '
              'а так за дз особо не следит. На контрольной лучше не списывать, '
              'потому что если заметит(а она скорее всего заметит) , то запомнит '
              'тебя на весь семестр и будет допрашивать все время.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 9,
        name: 'Садекова Екатерина Халиловна',
        rating: 4.8,
        reviews: ['\nСеминары: \n'
          , 'Очень круто! Темп может и высокий, но всё супер доходчиво и '
              'поступательно. Я бы сказал что её главное преимущество - '
              'это опыт. Складывается впечатление, что она всю математику '
              'первого курса обуздала уже 5000 раз и помнит как решить каждый '
              'номер из демидовича наизусть. Насчёт оценок к/р - она в меру строгая, '
              'в меру добрая. Вообщем лучший препод по матану по моему мнению.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 10,
        name: 'Тимошенко Сергей Леонидович',
        rating: 4.7,
        reviews: ['\nСеминары: \n'
          , 'Отличный семинарист, прекрасно преподаёт свой предмет. После его '
              'семинаров выносишь какие-то знания в голове. На контрольной справедлив: '
              'списывать не даёт и следит за списыванием (списать НЕРЕАЛЬНО). Контрольные '
              'не сложные, обычно достаточно знать номера из домашки и пару из классной работы, '
              'чтобы написать на высокий балл.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 11,
        name: 'Самарченко Дмитрий Александрович',
        rating: 4.3,
        reviews: [
          '\nЛекции: \n'
          ,
          'Ведет лекции достаточно интересно, видно, что хочет заинтересовать '
              'студентов. Сами лекции в целом содержательные. Во время лекции '
              'иногда может пошутить или выдать цитату. После лекции может ответить '
              'на вопросы. Пару придирок: презентации, которые он не редактирует, а '
              'просто приписывает мышкой, что иногда очень мешает разобраться, че '
              'происходит на слайде; манера иногда бросать что-либо не законченное или '
              'просто не исправлять какие-либо косяки в его записях.'
          ,
          '\nСеминары: \n'
          ,
          'Первокурсники, первый семестр вы будете просто выживать. Семинар всегда '
              'проходит так: первым делом отмечает - если тебя не было на семинаре, всегда '
              'требует допуск. Далее обычно вызывает кого-нибудь решить "интересную" задачу из дз, '
              'подвоха в которой никто не заметил. И тут кстати упомяну про дз: сразу приучайте '
              'себя не списывать, т.к. около 60% решений из решебника - это бред, другие 20% - '
              'Самарченко раскритикует, и только около 20% реально прокатят, и то, из-за того, '
              'что задачи лёгкие. Также внимательно читайте условия, т.к. в них часто есть '
              'косяки, которые Самарченко подмечает и спрашивает, чтобы понять, понимаете '
              'ли вы хоть что-то. Но могу сказать так, что за задачи из дз практически никогда '
              'он не ставит минусы, поэтому при выборе человека на задачу лучше выйти добровольцем. '
              'Далее происходит русская рулетка: Дмитрий Александрович очень любит рандом, у него '
              'даже что-то типо поля игрального есть, на котором написаны числа. Он кидает монетку '
              'и смотрит, на кого она попала. Но кстати в первом семестре Самарченко шёл просто по '
              'списку сверху вниз или снизу вверх. Итак, выход к доске: есть два варианта - первый это теория, '
              'и если он спрашивает именно её, то можете радоваться. Главное - понимайте то, что вы пишете, '
              'и пишите только то, что он конкретно просит, т.к. написав лишнее, вы сгенерируете ещё больше вопросов. '
              'Второй вариант - задача дня. Иногда реально простые, которые решаются или в пару строчек, или '
              'в целом нетрудные, похожие на дз. А иногда бывают задачи, которые Дмитрий Александрович походу '
              'сам придумывает и вот тогда начинается расстрел - обычно 2-7 человек успешно получают минус, '
              'давая время что-нибудь придумать другим. Во втором семестре Самарченко стал даже иногда '
              'подсказывать ход решения задачи или какие-то приёмы для её решения, чего особо не было '
              'в первом семестре. Но в целом можно понять его: у него особый подход к обучению, и '
              'он действительно пытается заставить студентов "если не осознавать, то хотя бы что-нибудь '
              'понимать и запоминать". Достаточно часто смеется над студентами (в хорошем смысле) и даёт '
              'шанс исправить тот бред, который ты написал. Иногда и прикольно шутит. Ему нравится работать со студентами '
              'и учить их. В целом, главная сложность на семинарах - понять, что ему нужно, т.к. иногда без '
              'пояснений реально не понятно что надо найти и как вообще это искать. Контрольные он составляет сам, '
              'и они сложнее, чем у других преподов. При этом оценивает достаточно жестко, но справедливо, хотя иногда '
              'и бывает, что он снижает балл за что-то непонятное. К контрольным надо серьезно готовиться, особенно '
              'учитывая, что Дмитрий Александрович постоянно опаздывает на семинары на 5-15 минут, и, как вы понимаете, '
              'никакой компенсации на кр не будет.  Сдавать зачёт конечно это отдельная тема. Для его получения надо '
              'сдать все кр и отдельную тетрадь со всеми дз. Дмитрий Александрович в начале зачета проверяет каждую задачу, '
              'и если видит косяк, просит исправить, и причём иногда он не скажет, что именно не так, и тебе придется сидеть '
              'и минут 30 думать. Но спустя 2 дня он просто стал пролистывать все задачи и особо ни к чему не придираться. '
              'Готовьтесь 3-4 зачётных дня сдавать чисто физику, особенно если у вас не закрыты контрольные, которые, кстати, '
              'закрыть можно только на зачетной неделе. По итогу во время зачетной "недели" вы придете к Самарченко раз 4-5. '
              'Но могу сказать, что по итогу почти всех допускает к экзамену.  Вот так, на мой взгляд препод 8/10'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 12,
        name: 'Попова Аделия Сергеевна',
        rating: 3.7,
        reviews: [
          '\nСеминары: \n'
          ,
          'Семинары проводит отвратно, не даёт материала, который соответствует лекциям, '
              'но даёт такой бред, который никому никогда не мог присниться со словами "ну я подумала, '
              'вам это будет интересно". Ну а толком ничего и не рассказывает, ещё и отпускает довольно '
              'нетактичные шуточки про студентов.'
          ,
          'В прошлом семе ее очень хейтили, но ей по шапке дали и теперь семинары проходят хорошо. '
              'Всегда объясняет материал. Единственное, нужно часто писать в ЛС, чтобы скинула домашку, '
              'демки кр и тд. Дз не проверяет. Немного со странностями, но плохого сказать про нее нельзя.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 13,
        name: 'Байкова Ольга Андреевна',
        rating: 4.6,
        reviews: ['\nСеминары: \n'
          , 'Очень хороший препод. Всегда подготовлена к семинарам. В начале '
              'пары обговариваем теорию, а дальше решаем задачи. Она молодая, '
              'поэтому относится ко всему нормально. Семинары проходят максимально '
              'приятно. Из минусов опаздывает на 5-10 минут в начале пары.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 14,
        name: 'Мичулис Каспарс',
        rating: 4.6,
        reviews: [
          '\nСеминары: \n'
          ,
          'Хороший препод латыш. Хорошо проводит семинары, дз не проверяет. '
              'Даёт в начале пары теорию. Всегда объясняет, если попросить. '
              'КР бывают сложные, но на переписывании новых вариантов нет. '
              'В конце семестра делает упрощенную сдачу долгов.'
          ,
          'Максимально приятный преподаватель, каждый семинар разбирает новую '
              'тему, давая всю теорию для этого. Объясняет нормально, семы похожи '
              'скорее на научпоп с математикой, чем на что-то серьезное(для иикса '
              'как раз). Кр составляет очень странно, может накидать задания из '
              'заклов олимпиад, может что-то простое, но проблем с допусками не будет. '
              'Чем ближе к экзамену, тем он лояльнее аттестовывает(с некоторого момента '
              'начинает допускать за написанную теорию, а не сдачу кр).'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 15,
        name: 'Черенков Роман Александрович',
        rating: 4.5,
        reviews: ['\nСеминары: \n'
          , 'На семинарах рассказываем презентации. Требует несколько таблиц. '
              'Не сильно душит, но необходимо сделать минимум.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 16,
        name: 'Паршутин Игорь Александрович',
        rating: 4.5,
        reviews: ['\nСеминары: \n'
          , 'Хороший семенарист. На парах обсуждаем разные ситуации. '
              'Просто сидишь, занимаешься своим делом и параллельно '
              'обсуждаешь темы, которые он поднимает.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 17,
        name: 'Довгий Александр Александрович',
        rating: 3.9,
        reviews: [
          '\nСеминары: \n'
          ,
          'В целом,неплохой преподаватель и человек, может объяснить тему(если попросить), '
              'однако с его скоростью подачи информации на семинарах, приходится все проходить '
              'самим. Не душит на семинарах, все полтора часа работает у доски.'
          ,
          'Бывает такое, что к экзамену допуститься становиться очень тяжело, потому что контрольную '
              'может провести чуть-ли не накануне самого экзамена. Ну или может дать на зачётной неделе 2 '
              'контрольные, которые будут такой сложности, что из 4 групп сдадут её только 4 человека.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
      createTeacher(
        id: 18,
        name: 'Дубравина Виктория Андреевна',
        rating: 4.8,
        reviews: [
          '\nСеминары: \n'
          ,
          'Лучик света в царстве кафедры вышмата. Разбирает всю теорию на семинаре, '
              'решает у доски примеры, после вызывает. Спрашивает на кр все то, что даёт. '
              'Из минусов только очень высокая скорость подачи, но это компенсируется тем, '
              'что она отвечает даже на самые глупые вопросы по теме. Экзамен средний, '
              'спрашивает весь курс, но даёт исправиться в случае ошибки.'
        ],
        materials: {
          'Лекции': ['тест.pdf'],
          'Практические задания': ['тест.docx'],
        },
      ),
    ];
  }
}
