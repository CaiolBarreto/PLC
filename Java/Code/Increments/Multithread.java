package Increments;

public class Multithread implements Runnable {
    private final int limit;
    private int value;

    public Multithread(int limit, int value) {
        this.limit = limit;
        this.value = value;
    }

    @Override
    public void run() {
        String name = Thread.currentThread().getName();
        for(int i = 0; i < limit; i++) {
            value++;
            System.out.println("A thread " + name + " printou o valor " + value);
        }
        System.out.println("A thread " + name + " acabou sua execução");
    }
}

