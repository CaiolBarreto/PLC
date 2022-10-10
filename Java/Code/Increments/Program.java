package Increments;

public class Program {
    public static void main(String[] args) {
        Multithread runnable = new Multithread(5, 0);
        for (int i = 0; i < 5; i++) {
            Thread novaThread = new Thread(runnable);
            novaThread.start();
        }
    }
}
