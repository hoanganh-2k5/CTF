import java.util.*;

class VaultDoor1 {
    public static void main(String args[]) {
        VaultDoor1 vaultDoor = new VaultDoor1();
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter vault password: ");
        String flag = vaultDoor.Password();
        System.out.println(flag);
	String userInput = scanner.next();
	String input = userInput.substring("picoCTF{".length(),userInput.length()-1);
    
	if (vaultDoor.checkPassword(input)) {
	    System.out.println("Access granted.");
	} else {
	    System.out.println("Access denied!");
	}
}

    // I came up with a more secure way to check the password without putting
    // the password itself in the source code. I think this is going to be
    // UNHACKABLE!! I hope Dr. Evil agrees...
    //
    // -Minion #8728
    public boolean checkPassword(String password) {
        return password.length() == 32 &&
               password.charAt(0)  == 'd' &&
               password.charAt(29) == 'a' &&
               password.charAt(4)  == 'r' &&
               password.charAt(2)  == '5' &&
               password.charAt(23) == 'r' &&
               password.charAt(3)  == 'c' &&
               password.charAt(17) == '4' &&
               password.charAt(1)  == '3' &&
               password.charAt(7)  == 'b' &&
               password.charAt(10) == '_' &&
               password.charAt(5)  == '4' &&
               password.charAt(9)  == '3' &&
               password.charAt(11) == 't' &&
               password.charAt(15) == 'c' &&
               password.charAt(8)  == 'l' &&
               password.charAt(12) == 'H' &&
               password.charAt(20) == 'c' &&
               password.charAt(14) == '_' &&
               password.charAt(6)  == 'm' &&
               password.charAt(24) == '5' &&
               password.charAt(18) == 'r' &&
               password.charAt(13) == '3' &&
               password.charAt(19) == '4' &&
               password.charAt(21) == 'T' &&
               password.charAt(16) == 'H' &&
               password.charAt(27) == '6' &&
               password.charAt(30) == 'f' &&
               password.charAt(25) == '_' &&
               password.charAt(22) == '3' &&
               password.charAt(28) == 'd' &&
               password.charAt(26) == 'f' &&
               password.charAt(31) == '4';
    }
    public String Password() {
        StringBuilder password = new StringBuilder("                                "); // 32 dấu cách

        password.setCharAt(0,  'd');
        password.setCharAt(1,  '3');
        password.setCharAt(2,  '5');
        password.setCharAt(3,  'c');
        password.setCharAt(4,  'r');
        password.setCharAt(5,  '4');
        password.setCharAt(6,  'm');
        password.setCharAt(7,  'b');
        password.setCharAt(8,  'l');
        password.setCharAt(9,  '3');
        password.setCharAt(10, '_');
        password.setCharAt(11, 't');
        password.setCharAt(12, 'H');
        password.setCharAt(13, '3');
        password.setCharAt(14, '_');
        password.setCharAt(15, 'c');
        password.setCharAt(16, 'H');
        password.setCharAt(17, '4');
        password.setCharAt(18, 'r');
        password.setCharAt(19, '4');
        password.setCharAt(20, 'c');
        password.setCharAt(21, 'T');
        password.setCharAt(22, '3');
        password.setCharAt(23, 'r');
        password.setCharAt(24, '5');
        password.setCharAt(25, '_');
        password.setCharAt(26, 'f');
        password.setCharAt(27, '6');
        password.setCharAt(28, 'd');
        password.setCharAt(29, 'a');
        password.setCharAt(30, 'f');
        password.setCharAt(31, '4');

        return password.toString();
    }
}
