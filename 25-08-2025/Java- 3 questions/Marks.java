
import java.util.Scanner;
public class Marks{
    public static void main (String[] args){
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        if(n<25){
            System.out.println("F");
        }else if(25<=n && n<45){
            System.out.println("E");
        }else if(45<=n && n<50){
            System.out.println("D");
        }else if(50<=n && n<60){
            System.out.println("C");
        }else if(60<=n && n<80){
            System.out.println("B");
        }else if(80>=n){
            System.out.println("A");
        }else{
            System.out.println("Invalid");
        }
    }
}
    

