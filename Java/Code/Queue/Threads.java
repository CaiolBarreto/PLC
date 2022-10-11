package Queue;

public class Threads {
    public static void main(String[] args) {
        Queue queue = new Queue(10);

        MyRunnable runnable = new MyRunnable(queue);
        Thread thread1 = new Thread(runnable);
        Thread thread2 = new Thread(runnable);

        thread2.start();
        thread1.start();
    }
}
