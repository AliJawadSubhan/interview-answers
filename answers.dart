main() {
  print(checkPrime(0));
  longestWords();
  largestNumber();
  repeatedLetters();
}

// Prime or not
bool checkPrime(int isPrimeNumber) {
  if (isPrimeNumber > 1) {
    if (isPrimeNumber / isPrimeNumber == 1) {
      return true;
    }
  }
  return false;
}

// longest words in a string

longestWords() {
  String words = 'Heo evey , in tys ';

  String longestWordInLoop = '';

  List<String> listOfWords = words.split(" ");

  for (String longestWord in listOfWords) {
    if (longestWord.length > listOfWords.length) {
      longestWordInLoop = longestWord;
    }
  }
  print(longestWordInLoop);
}

// largest number

largestNumber() {
  List<int> numbers = [12, 123, 56];
  int largestNumber = 0;
  for (var number in numbers) {
    if (number < largestNumber) {
      largestNumber = number;
    }
  }

  print(largestNumber);
}

void repeatedLetters() {
  String words = 'Hello everyoneee, in today\'s episode';
  List<String> listOfWords = words.split(" ");

  int maxCount = 0;
  String mostRepeatedLetter = '';

  for (var word in listOfWords) {
    for (var i = 0; i < word.length; i++) {
      var letter = word[i];
      var count = word.split(letter).length - 1;

      if (count > maxCount) {
        maxCount = count;
        mostRepeatedLetter = letter;
      }
    }
  }

  print('The most repeated letter is: $mostRepeatedLetter');
  print('It was repeated $maxCount times');
}
