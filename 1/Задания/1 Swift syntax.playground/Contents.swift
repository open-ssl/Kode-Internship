/*:
 # Синтаксис языка и основные понятия (переменные, константы, типы данных)
 - - -
 Данный файл поможет вам погрузиться в основы языка Swift. Вы можете работать непосредственно здесь — писать код, экспериментировать. Это ваше рабочее пространство.
 
 Поехали!
 - - -
 
 
 
 
 
 
 ## Синтаксис Swift
 
 Swift обладает простым «воздушным» синтаксисом.
 
 
 
 
 ### Комментарии
 
 Комментарии можно писать после двойного слэша – \/\/
 */
// Это комментарий

/*:
 Комментарии игнорируются компилятором и иcключаются из собранного приложения. Используйте комментарии, чтобы оставлять заметки и пояснения для других разработчиков или для себя.
 
 Многострочные комментарии можно оставлять между \/\* \*\/
 */
/*
 Это
 многострочный
 комментарий
 */
/*:
 ### Hello, world!
 Пример самой простой программы на Swift и традиционное первое приложение для изучения нового языка - Hello world.
 */
print("Hello, world!")
/*:
 Вот и вся программа.
 
 Здесь мы вызываем функцию print и передаем в нее единственный аргумент – строку, которая содержит текст "Hello, world!”. Эта функция выводит текст в консоль отладчика или debugger’а.
 
 `\n` – это управляющий символ. Он используется для переноса строки. Функция `print` автоматически добавляет его к переданному тексту, чтобы при следующем вызове он не склеивался с новым.
 
 Раскомментируйте строку, чтобы посмотреть, как этот символ работает:
 */
print("\nHello\nworld!\n")
/*:
 - Callout(Описание функции):
 Описание функции `print` можно посмотреть, если нажать на слово `print` левой кнопкой мыши с зажатой клавишей ALT.
 */
/*:
 Многие языки программирования требуют заканчивать каждую строку кода символом `;`. В Swift это необязательно, поэтому, как правило, не используется.
 
 Допускается использовать `;` для записи нескольких выражений в одной строке:
 */
print("Xcode"); print("Playgrounds")
/*:
 Однако делать это не рекомендуется, так как читаемость кода падает.
 */
/*:
 ### Переменные и константы
 Как и в других языках, для хранения значений в Swift используются переменные и константы.
 
 Записать значение в константу можно лишь один раз. Менять свое значение она не может. В то время как переменная в ходе выполнения программы может принимать разные значения.
 
 Объявить переменную или константу просто – для этого используются слова `let` для констант и `var` для переменных.
 */
let myConstant = 39

var myVariable = 42
myVariable = 50
/*:
 - Callout(Эксперимент):
 Попробуйте изменить значение `myConstant` после объявления. Что произойдет?
 */
/*:
 Не обязательно указывать значение константы при объявлении, она может получать значение в ходе выполнения приложения. Важно здесь то, что принять значение она может лишь единожды.
 */
/*:
 ## Типы данных
 
 Каждая переменная и константа при объявлении получают тип.
 
 Указанное при объявлении значение позволяет компилятору самостоятельно определить тип данных.
 
 В примере var `myVariable = 42` переменная `myVariable` автоматически определится как `Integer`, потому что 42 – это целое число, а `Integer` – тип данных для хранения целых чисел.
 
 Если мы изменим запись на `myVariable = 42.0`, компилятор определит переменную как `Double` – тип данных для хранения вещественных чисел.
 */
let implicitInteger = 70
let implicitDouble = 70.0
/*:
 Конечно, для удобства чтения или чтобы избежать ошибки, тип можно указать в явном виде. В Swift тип указывается сразу после имени переменной через двоеточие.
 */
let explicitInteger: Int = 4
let explicitDouble: Double = 4
let explicitString: String = "Hello"
/*:
 Как правило, мы не указываем тип явно, за исключением случаев, где это облегчит понимание и читаемость кода.
 
 Swift сильно типизированный язык. Это значит, что мы лишены автоматического приведения типов. Сложить переменную `Integer` с переменной `Double` не получится.
 */
let integerValue = 4
let doubleValue = 3.8
//integerValue + doubleValue
/*:
 Если мы попробуем сложить `integerValue` и `doubleValue`, то компилятор выдаст нам ошибку:
 
 `binary operator '+' cannot be applied to operands of type 'Int' and 'Double'`
 
 Приложение собрать не получится (чтобы увидеть ошибку, раскомментируйте строку с суммой переменных). Такой подход к типизации лишает нас некоторой гибкости, однако предупреждает множество мелких ошибок, которые просто сделать, но бывает довольно сложно найти.
 
 Для приведения типов мы можем использовать простую конструкцию:
 */
Double(integerValue) + doubleValue
/*:
 Однако, чтобы избежать ошибок, очень важно учитывать типы данных, которые вы приводите и их особенности.
 
 К примеру, мы можем потерять дробную часть числа при его приведении к типу `Integer`
 */
integerValue + Int(doubleValue)
/*:
 Подобным же образом мы можем примести `Integer` к `String`.
 */
let product = "apples"
let applesCount = 4

print("I have " + String(applesCount) + " " + product)

/*:
 В Swift есть очень простой способ добавить значение в строку – `\()`. Таким образом мы можем изменить запись на такую:
 */
print("I have \(applesCount) \(product)")

/*:
 Так же в Swift есть логический тип данных – `Bool`, который может принимать только два значения – `true` (истина) и `false` (ложь).
 */
 let haveSomeOranges = false

/*:
 Этот тип данных, в основном, используется вместе с условными операторами для описания логики приложения.
 
 Он может быть результатом выполнения операторов сравнения `<`, `<=`, `>`, `>=`, `==`, `!=`
 */
let weHaveMoreThanTwoApples = applesCount > 2
 
print(weHaveMoreThanTwoApples)


/*:
 ### Литералы в Swift
 
 Литерал – это представление некоторого значения в исходном коде.
 */
56               // Литерал целого числа
5.82             // Литерал вещественного числа
"Hello, World!"  // Литерал строки
/*:
 В отличие от многих других языков, в которых числа и строки представлены примитивами, в Swift они реализованы как структуры. Поэтому литералы по своей сути являются «синтаксическим сахаром» – созданы для удобства чтения и написания кода и преобразуются компилятором в следующую запись:
 */
Int(56) // Буквально – создать структуру типа Int и записать в нее число 56
Double(5.82)
String("Hello, World!")
/*:
 Кроме того, в этих структурах реализован функционал, который может потребоваться при работе с ними. К примеру, можно получить длину строки (количество символов):
 */
"Hello, World!".count
/*:
 Подробнее о структурах и работе с ними мы поговорим позже.
 */

/*:
 ## Кортежи (Tuples)
 Кортежи группируют несколько значений в одно составное значение. Значения внутри кортежа могут быть любого типа
 */
let http404Error = (404, "Not Found")
/*:
 Чтобы передать код статуса, кортеж (404, "Not Found") группирует вместе два отдельных значения Int и String: число и понятное человеку описание. Это может быть описано как "кортеж типа (Int, String)".
 
 Вы можете разложить содержимое кортежа на отдельные константы и переменные, к которым можно получить доступ привычным способом:
 */
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")
/*:
 В качестве альтернативы можно получать доступ к отдельным частям кортежа, используя числовые индексы, начинающиеся с нуля:
 */
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")
/*:
 Вы можете давать имена отдельным элементам кортежа во время объявления:
 */
let http200Status = (statusCode: 200, description: "OK")
/*:
 Когда вы присвоили имя элементу кортежа, вы можете обратиться к нему по имени:
 */
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

/*:
Операторы сравнения:
*/
let firstItem = 3
let secondItem = 3

if firstItem == secondItem {
    print("\(firstItem) and \(secondItem) equal")
} else {
    print("\(firstItem) and \(secondItem) not equal")
}
