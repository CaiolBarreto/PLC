package Semaphore;

public class Semaphore {
    public static void main(String[] args) throws InterruptedException {
        SemaphoreRunnable semaphore = new SemaphoreRunnable();
        for (int i = 0; i < 10; i++) {
            System.out.println(semaphore.getColor());
            semaphore.waitColorChange();
        }
        semaphore.stopSemaphore();
    }

    public static class SemaphoreRunnable implements Runnable {
        private boolean stop;
        private boolean colorChanged;
        private SemaphoreColor semaphoreColor;

        SemaphoreRunnable() {
            this.semaphoreColor = SemaphoreColor.VERMELHO;
            new Thread(this).start();
        }

        @Override
        public void run() {
            while (!stop) {
                try {
                    Thread.sleep(this.semaphoreColor.getWaitingTime());
                    this.changeColor();
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        public synchronized void changeColor() {
            switch (this.semaphoreColor) {
                case VERMELHO:
                    this.semaphoreColor = SemaphoreColor.VERDE;
                    break;
                case VERDE:
                    this.semaphoreColor = SemaphoreColor.AMARELO;
                    break;
                case AMARELO:
                    this.semaphoreColor = SemaphoreColor.VERMELHO;
                    break;
                default:
                    break;
            }
            this.colorChanged = true;
            notify();
        }

        public synchronized void waitColorChange() {
            while (!this.colorChanged) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.colorChanged = false;
        }

        public void stopSemaphore() {
            stop = true;
        }

        public SemaphoreColor getColor() {
            return this.semaphoreColor;
        }
    }
}
