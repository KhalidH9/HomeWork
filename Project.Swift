//Homework solution:

import Foundation

struct Question {
    let question: String
    let choices: [String]
    let correctAnswer: Int
}

var questions = [Question]()
var score = 0

questions.append(Question(question: "What is the keyword used to define a constant in Swift?", choices: ["let", "var", "const"], correctAnswer: 0))
questions.append(Question(question: "Which collection type in Swift is unordered?", choices: ["Array", "Set", "Dictionary"], correctAnswer: 1))
questions.append(Question(question: "What is the Swift type for representing a nullable value?", choices: ["Optional", "Nullable", "Maybe"], correctAnswer: 0))

questions.shuffle()

for (index, question) in questions.enumerated() {
    print("Question \(index + 1):")
    print(question.question)
    for (choiceIndex, choice) in question.choices.enumerated() {
        print("\(choiceIndex + 1). \(choice)")
    }
    
    if let userAnswer = readLine(), let answer = Int(userAnswer) {
        if answer - 1 == question.correctAnswer {
            score += 1
            print("Correct!")
        } else {
            print("Incorrect!")
        }
    }
}

print("Quiz completed. Your score is \(score) out of \(questions.count).")

/*------------------------------------------------------------------------------------
------------------------------------------------------------------------------------*/

//1. Control Flow Example:
let number = 10
if number > 5 {
    print("The number is greater than 5.")
} else {
    print("The number is less than or equal to 5.")
}

//---------------------------------------------------------------------------------

//2. Arrays or Dictionaries Example:
var fruits = ["Apple", "Banana", "Orange"]
fruits.append("Grapes")
print(fruits)

var studentScores = ["Khalid": 90, "Ahmed": 95, "Nawaf": 85]
studentScores["Khalid"] = 97
print(studentScores)

//---------------------------------------------------------------------------------

//3. Error Handling Example:
enum CustomError: Error {
    case invalidInput
}

func divideNumbers(_ a: Int, _ b: Int) throws -> Int {
    guard b != 0 else {
        throw CustomError.invalidInput
    }
    return a / b
}

do {
    let result = try divideNumbers(10, 2) }