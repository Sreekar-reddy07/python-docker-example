package com.calculator;

import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Taking two numbers as input
        System.out.print("Enter first number: ");
        int num1 = scanner.nextInt();

        System.out.print("Enter second number: ");
        int num2 = scanner.nextInt();

        // Performing addition
        int sum = num1 + num2;

        // Display result
        System.out.println("The sum is: " + sum);

        scanner.close();
    }
}

