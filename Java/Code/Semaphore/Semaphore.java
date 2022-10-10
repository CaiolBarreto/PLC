public class Semaphore {
    public static void main(String[] args) {
        SemaphoreRunnable semaphore = new SemaphoreRunnable();
        Thread newSemaphore = new Thread(semaphore);
        newSemaphore.start();
    }

    public static class SemaphoreRunnable implements Runnable {

        @Override
        public void run() {
            System.out.println("ta funcionando");
        }
    }
}
