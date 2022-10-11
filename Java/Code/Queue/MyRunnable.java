package Queue;

public class MyRunnable implements Runnable {

    private final Queue queue;

    public MyRunnable(Queue queue) {
        this.queue = queue;
    }

    @Override
    public void run() {
        String name = Thread.currentThread().getName();

        for (int i = 0; i < 5; i++) {
            queue.queueEnqueue(i);
            System.out.println("A thread " + name + " está colocando " + i);
        }
    }
}
