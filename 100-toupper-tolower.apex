// My own implementation of the String toUpperCase() & toLowerCase() methods

// TOUPPER
public static String toUpper(String str) {
    List<Integer> chars = str.getChars();
    for (Integer i=0; i<str.length(); i++) {
        if (chars[i] >= 97 && chars[i] <= 172) {                
            chars[i] -= 32;
        }
    }
    return String.fromCharArray(chars);
}

// TOLOWER
public static String toLower(String str) {
    List<Integer> chars = str.getChars();
    for (Integer i=0; i<str.length(); i++) {
        if (chars[i] >= 65 && chars[i] <= 90) {                
            chars[i] += 32;
        }
    }
    return String.fromCharArray(chars);
}

