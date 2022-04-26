// // ASSESSMENT 5: JavaScript Coding Practical Questions with Jest



// // Please read all questions thoroughly
// // Pseudo coding is REQUIRED
// // If you get stuck, please leave comments to help us understand your thought process

// // Use test driven development to complete the following questions
// // Add appropriate dependencies: $ yarn add jest

// // Reminder: The test will call your function
// // Run the file with the following command: $ yarn jest


// // --------------------1) Create a function that takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.

// // a) Create a test with expect statements using the variables provided.

describe("letterToNumber", () => {
    //describe what the test does
    it("Takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.", () => {
      //variables given
      const secretCodeWord1 = "Lackadaisical"
      // Expected output: "L4ck4d41s1c4l"
      const secretCodeWord2 = "Gobbledygook"
      // Expected output: "G0bbl3dyg00k"
      const secretCodeWord3 = "Eccentric"
     //Expected output: "3cc3ntr1c"

    //expected outputs
    expect(letterToNumber(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
    expect(letterToNumber(secretCodeWord2)).toEqual("G0bbl3dyg00k")
    expect(letterToNumber(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})

// //Fail received:
// //letterToNumber › Takes in a string and returns a coded message. The coded message converts 'a' to 4, 'e' to 3, 'i' to 1, and 'o' to 0.

// //ReferenceError: letterToNumber is not defined

// // b) Create the function that makes the test pass.
// // Function name: letterToNumber
// // Input: string
// // Output: string with vowels converted into numbers ('a' to 4, 'e' to 3, 'i' to 1, 'o' to 0)
// // Use replace() method to replace letters with numbers 
// // Use RegExp (regular expression) to search for a matching letter in the string to replace

const letterToNumber = (string) => {
    return string.replace(new RegExp("a", "g"), "4").replace(new RegExp("A", "g"), "4").replace(new RegExp("e", "g"), "3").replace(new RegExp("E", "g"), "3").replace(new RegExp("i", "g"), "1").replace(new RegExp("I", "g"), "1").replace(new RegExp("o", "g"), "0").replace(new RegExp("O", "g"), "0")    
}
// // I know this is a long way to go about solving this challenge. I wanted to use the .toLowerCase method instead of typing out individual replace methods for lower case and uppercase letters, but I couldn't figure out how(where) to fit it into this function. 


// // --------------------2) Create a function that takes in an array of words and a single letter and returns all the words that contain that particular letter.

// // a) Create a test with expects statement using the variable provided.

// Test:
describe("containsLetter", () => {
    //describe what the test does
    it("Takes in an array of words and a single letter and returns all the words that contain that particular letter.", () => {
      //variables given
     const arrayOfWords1 = ["Apple", "Banana", "Plum", "Orange", "Kiwi"]
     const letterA = "a"
     const arrayOfWords2 = ["Mango", "Cherry", "Apricot", "Blueberry", "Peach"]
     const letterE = "e"
     //expected outputs
    expect(containsLetter(arrayOfWords1, letterA)).toEqual(["Apple", "Banana", "Orange"])
    expect(containsLetter(arrayOfWords2, letterE)).toEqual(["Cherry", "Blueberry", "Peach"])
    })
})
// //Fail received: 
// //● containsLetter › Takes in an array of words and a single letter and returns all the words that contain that particular letter.

// //ReferenceError: containsLetter is not defined

// // // b) Create the function that makes the test pass.
// //Function name: containsLetter
// // Input: array of words & a single letter (string)
// // Output: array with all the words containing the particular letter
// // Parameters identify inputs as an array and a string
// // Use filter() method to filter out words that include the particular letter that is input
// // Use toUpperCase and toLowerCase to ensure upper case and lower case letters are identified
// // Use || (OR operator) to indicate filtering upper case OR lower case letters

const containsLetter = (array, string) => {
    return array.filter(value => value.includes(string.toUpperCase()) || value.includes(string.toLowerCase())
    )
}

// // // --------------------3) Create a function that takes in an array of 5 numbers and determines whether or not the array is a “full house”. A full house is exactly one pair and one three of a kind.

// // // a) Create a test with expect statements using the variable provided.

// //Test:
describe("fullHouseChecker", () => {
    //describe what the test does
    it("that takes in an array of 5 numbers and determines whether or not the array is a full house.", () => {
      //variables given
      const hand1 = [5, 5, 5, 3, 3]
      const hand2 = [5, 5, 3, 3, 4]
      const hand3 = [5, 5, 5, 5, 4]
     //expected outputs
    expect(fullHouseChecker(hand1)).toEqual("true")
    expect(fullHouseChecker(hand2)).toEqual("false")
    expect(fullHouseChecker(hand3)).toEqual("false")

    })
})
//Fail received: 
//  ● fullHouseChecker › that takes in an array of 5 numbers and determines whether or not the array is a full house.

//ReferenceError: fullHouseChecker is not defined

// b) Create the function that makes the test pass.

// I want to iterate over the array to find a pattern that matches the full house.
// Use conditional statements to return boolean value

const fullHouseChecker = (hand1, hand2, hand3) => {
  //I want to check if the values at index 0 and 1 equal that of index 2, and if the value at index 3 is equal to that of index 4. If so, return true. (this is a full house)
  if(([0] && [1] == [2]), ([3] == [4])) {
    return "true"
  }
  //If the values do not match as indicated for each index, return false. (this is not a full house)
  else if(([0] && [1] !== [2]), ([3] !== [4])){
    return "false"
  }
}
//I'm receiving a deep equality error. 
