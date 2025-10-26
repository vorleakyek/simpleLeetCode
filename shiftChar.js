//One character 

function shiftChar(dictionary, key, char) {
    const charIndex = dictionary.indexOf(char);
    const shiftedIndex = (charIndex + key) % dictionary.length; 
    return dictionary[shiftedIndex];
} 



dictionary = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
key = 3
char = "z"

const output = shiftChar(dictionary, key, char)
console.log(output)


//multiple characters 
function shiftChars(dictionary, key, chars) {

    let shiftedChars = "";

    for (let i=0; i<chars.length; i++) {
        const charIndex = dictionary.indexOf(chars[i]);
        const shiftedIndex = (charIndex + key) % dictionary.length;
        shiftedChars += dictionary[shiftedIndex];
    }
     
    return shiftedChars;
} 

dictionary = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
key = -3
chars = "ABC"

const output = shiftChars(dictionary, key, chars)
console.log(output)


