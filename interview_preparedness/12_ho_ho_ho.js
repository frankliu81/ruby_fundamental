// ho ho ho with functions
//ho(); // should return "Ho!"
//ho(ho()); // should return "Ho Ho!"
//ho(ho(ho())); should return "Ho Ho Ho!";

// Rules:
// each call of ho() must add a "Ho" to the string
// the "Ho"'s must be separated by a space
// all th end of the string, there must be a ! without a space

function ho(str) {
  if (str === undefined)
    return "Ho!";
  else
    return "Ho " + str;
}

console.log(ho());
console.log(ho(ho()));
