import java.util.Scanner;
public class Absolute_num{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = sc.nextInt();
        int absoluteValue = Math.abs(num);
        System.out.println("Absolute value: " + absoluteValue);
        sc.close();
    }
}
    
