L3.1 basic
Селектор — это часть CSS-правила, которая сообщает браузеру, к какому элементу (или элементам) веб страницы будет применён стиль
Правило (Rule) — полное описание стиля (селектор + описание).
Селектор (Selector) — элемент, к которому применяются назначаемые стили. Может быть тег, класс или идентификатор объекта HTML-документа
Описание/блок объявлений (Declaration) — совокупность свойств и их значений.
Свойство (Property) — задает формат для селектора: шрифты, цвета, выравнивание, размеры и др. Может определять одну или несколько характеристик селектора.
Значение (Value) — числовые или строковые элементы, которые определяют свойство селектора.
Алфавитный порядок свойств
Создавайте HTML первым
Сокращенные CSS
Используйте внешние CSS
Избегайте встроенных стилей
Именование CSS файлов
Объединение CSS элементов
Читабельность CSS
L.3.2: Selectors
Изменить цвет сразу на всей странице можно с помощью универсального селектора.
Очень часто универсальный селектор применяется для сброса стилей браузера, которые установлены по умолчанию. 
Селекторы элементов представляют тип элементов, к которым будет применяться правило. 
Селекторы классов устанавливают стили для одного или нескольких элементов с одинаковым именем класса. Эти элементы могут находиться в разных местах страницы. Все элементы выбранного класса будут отформатированы в соответствии с заданным правилом.
У элементов может быть несколько значений атрибута class.

Селектор идентификатора используется для определения правил стиля одного уникального элемента. Он выбирает элементы, основываясь на значении их id атрибута.	
Для выбора определенных элементов существует большое количество селекторов, которые позволяют передвигаться по дереву элементов относительно текущего. Для этой цели существуют комбинаторы, которые показывают отношения между элементами в дереве. Комбинаторы: пробел, знак >, + и ~. 

HTML элемент, расположенный внутри другого элемента, является его потомком. Селекторы потомков применяют стили к элементам, расположенным внутри элемента-контейнера. Комбинатор “пробел” выбирает элементы, которые находятся внутри указанного элемента

Дочерний элемент — это прямой потомок элемента, который его содержит. У одного элемента может быть несколько дочерних элементов. Дочерний селектор позволяет использовать стили только когда дочерние элементы следуют сразу за родительским, т.е первого уровня вложенности. Дочерний селектор состоит из двух или более селекторов, разделенных символом ">". 

Сестринские отношения возникают между элементами, имеющими общего родителя. Селекторы соседних элементов позволяют выбрать элементы из группы элементов одного уровня. Сестринские селекторы можно разделить на два вида: селекторы соседних сестринских элементов и общий селектор сестринских элементов.
Селектор соседних сестринских элементов выбирает элементы, находящиеся непосредственно после указанного элемента на том же уровне вложенности. Для обозначения используют знак “+”.
Общий селектор сестринских элементов нужен для выбора всех элементов, которые находятся на этом же уровне вложенности, что и указанный, и расположены после указанного элемента, с тем же родителем. Элементы разделяются символом тильды “∼”.

Селекторы атрибутов позволяют выбрать нужные элементы и установить для них стиль по наличию определённого атрибута или его 
значения.[атрибут="значение"] выбираются элементы данного типа, содержащие указанный атрибут с конкретным значением. 
селектор[атрибут] выбираются элементы типа, содержащие  атрибут, например, p[class] — параграфы, для которых задан атрибут class.
[атрибут~="значение"] выбираются элементы, частично содержащие данное значение, если для элемента задано несколько классов через пробел.

Псевдокласс — это ключевое слово, которое начинается с двоеточия. Псевдокласс самостоятельно не существует, он должен быть прикреплён к селектору. Псевдокласс устанавливает определённое состояние селектора, к которому прикреплен :
:link – задает стиль ссылкам, по которым пользователь еще не перешел.
:active – задает стиль ссылке в момент клика по ней.
:focus – задает стиль элементу при фокусировке на нем. Например, при установке курсора в строку поиска.
:not() – позволяет выбрать и стилизовать те элементы, которые не содержат селектор, указанный в скобках.
:first-child - задаёт стиль первого элемента в группе сестринских элементов (имеющих одного родителя).
:last-child - задаёт стиль последнего элемента в группе сестринких элементов.

Псевдоэлемент — это дополнение к селектору, с помощью которого можно стилизовать элемент, не определённый в структуре HTML документа. 
::after — используется вместе со свойством content и позволяет вывести необходимые данные после содержимого элемента
::first-line — используется для изменения стиля первой строки текста элемента.
::before — аналогичен ::after, только выводит данные перед содержимым элемента.
::first-letter — используется для изменения стиля первого символа в тексте элемента.
::selection — позволяет установить цвет и фон для текста, который выделен пользователем.

Наследование в CSS — это способность элементов получать свойства CSS от своего родителя (элемента, который их содержит). Это значит, что правило CSS, использованное к родительскому элементу на странице применяется и к его дочерним элементам, но есть исключения. Например, если для элемента установлен color и font, то и его дочерние элементы будут иметь такой же цвет и шрифт (если они не имеют собственных определений этих стилей). Но не все свойства CSS наследуются. Для некоторых это не имеет смысла. Например, поля и ширина не наследуются, поскольку маловероятно, что дочернему элементу потребуются такие же поля, что и его родительскому элементу.

Принудительное наследование. С помощью ключевого слова inherit можно принудить элемент наследовать свойство родительского элемента. Это правило работает и для свойств, которые не наследуются по умолчанию.
Правило !important Специфичность Порядок следования
У разных типов селекторов есть разная степень влияния на элементы страницы, это явление называется — специфичность. В каждом отдельном случае браузер вычисляет специфичность селектора, и если у элемента существуют конфликтующие объявления свойств, то выбирается правило, которое имеет наибольшую специфичность. Значение специфичности составляет три разряда: 0, 0, 0 

У универсального селектора * нет значения специфичности.
Псевдокласс :not самостоятельно не влияет на значение специфичности, но в тоже время его аргумент (значение в скобках) увеличивает соответствующий его типу разряд.
Правило !important, которое следует за CSS свойством, дает максимальное значение его специфичности. Переопределить свойство с директивой !important можно только созданием нового правила, которое содержит то же свойство и декларацию !important, и находится ниже в CSS коде. Второе правило будет иметь равное или большое значение специфичности, чем первое (которое необходимо отменить).
Не используйте !important без крайней необходимости.

придерживайтесь принципа низкой специфичности.

L.3.3: CSS Properties Overview
Универсальным или сокращенным свойством называются CSS свойства, которые позволяют устанавливать значения нескольких других свойств CSS одновременно.
С помощью свойства background-size масштабируется изображение, при этом сохраняется его внутреннее соотношение сторон. Это свойство устанавливается с помощью двух значений. При помощи первого значения указывается ширина соответствующего изображения, второе значение указывает его высоту. Когда указано только одно значение, второе считается автоматически. Значение этого свойства можно указывать в любых допустимых единицах измерения или процентах. Отрицательные значения использовать не допускается.

Auto Изменяет размер, сохраняя пропорции.
Cover Масштабирует картинку, сохраняя пропорции. Обрезает картинку так, чтобы ее ширина или высота равнялась ширине или высоте блока.
Contain Масштабирует картинку с сохранением пропорций таким образом, чтобы она целиком поместилась внутрь блока. Картинка не обрезается.

Свойство background-repeat определяет, как фоновая картинка будет повторяться.Оно устанавливается после того, как изображению задан размер и позиционирование. Может принимать значения: repeat-x, repeat-y, repeat, space, round, no-repeat.

background: url(check.png) center repeat-y;

Шрифт - это визуальное представление символов. Так же можно сказать, что шрифт - это отображение информации, которая сопоставляет коды символов с их отображениями (глифами). Шрифты, использующие общий стиль, объединяются в семейства шрифтов, которые классифицируются определенными стандартными наборами свойств. Внутри семейства шрифтов может изменяться форма, которая отображается для данного символа, в зависимости от толщины обводки, наклона и др.

Выделяют локальные шрифты, которые установлены на устройстве, в котором работает браузер. И веб-шрифты - это настраиваемые шрифты, для которых используется формат TTF, WOFF, EOT и SVG. Существуют специальные сервисы, которые позволяют использовать шрифты, размещенные на их серверах. Различные шрифты для заголовков, абзацев и других элементов используются, для того чтобы можно было задавать определенный стиль текста, передавать эмоции и настроение. Не забывайте, что несмотря на многообразие шрифтов основной текст на веб-странице должен быть читабельным.

family-name — имя семейства шрифтов, например Helvetica или Verdana.
generic-family — представляет общий выбор шрифта и ведет себя как псевдоним для одного или нескольких локально установленных шрифтов, принадлежащих к указанной категории универсальных шрифтов. generic-family может использоваться как надежный запасной вариант для случаев, когда более специфический выбор шрифта автора недоступен.
В спецификации определены следующие generic-family ключевые слова: serif, sans-serif, cursive, fantasy, monospace, system-ui, emoji, math fangsong.

L3.4: Box-model


Свойство font-weight указывает вес глифов в шрифте, степень их черноты или толщину обводки. Это свойство может принимать числовые значения большие или равные 1 и меньшие или равные 1000. Обычно используются значения от 100 до 900 с шагом 100.

Свойство font-style позволяет выбирать курсивные или наклонные начертания.
normal Обычный шрифт, который не выделен курсивом или не является косым.
italic Шрифт, который представлен курсивным или наклонным начертанием.
oblique Задает угол для наклонного шрифта.

Свойство font-size указывает желаемую высоту глифов из шрифта. Отрицательные значения для данного свойства не допускаются. Значения могут быть заданы:
абсолютно: xx-small, x-small, small, medium, large, x-large, xx-large, xxx-large;
относительно: larger, smaller.
Также разрешается использовать любые допустимые единицы в CSS: em, rem, px, %. За 100% берётся размер шрифта родительского элемента. 
font: italic 2em "Courier New";
