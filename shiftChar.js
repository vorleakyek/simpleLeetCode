function shiftChar(dictionary, key, char) {
    const charIndex = dictionary.indexOf(char);
    const shiftedIndex = (charIndex + key) % dictionary.length; 
    return dictionary[shiftedIndex];
} 



dictionary = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
key = 3
char = "z"

const output = result(dictionary, key, char)

console.log(output)

