import java.util.Scanner;

public class calculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("I am a calculator app ....");

        while (true) {
            // Read input from the user
            System.out.print("Enter any calculation (Example: 1 + 2 (or) 2 * 5 -> Please maintain spaces as shown in example): ");
            String input = scanner.nextLine().trim();

            // Check if the user wants to exit
            if (input.equalsIgnoreCase("exit")) {
                break;
            }

            // Split the input into parts
            String[] parts = input.split(" ");
            if (parts.length != 3) {
                System.out.println("Invalid input. Try again.");
                continue;
            }

            try {
                // Convert operands to integers
                int left = Integer.parseInt(parts[0]);
                int right = Integer.parseInt(parts[2]);

                // Perform the calculation
                int result;
                switch (parts[1]) {
                    case "+":
                        result = left + right;
                        break;
                    case "-":
                        result = left - right;
                        break;
                    case "*":
                        result = left * right;
                        break;
                    case "/":
                        if (right == 0) {
                            System.out.println("Cannot divide by zero. Try again.");
                            continue;
                        }
                        result = left / right;
                        break;
                    default:
                        System.out.println("Invalid operator. Try again.");
                        continue;
                }

                // Print the result
                System.out.println("Result: " + result);
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter valid numbers.");
            }
        }

        scanner.close();
    }
}

