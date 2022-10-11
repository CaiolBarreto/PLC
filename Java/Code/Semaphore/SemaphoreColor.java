package Semaphore;

public enum SemaphoreColor {
    VERDE(1500), AMARELO(500), VERMELHO(2000);

    private final int waitingTime;

    SemaphoreColor(int waitingTime) {
        this.waitingTime = waitingTime;
    }

    public int getWaitingTime() {
        return waitingTime;
    }
}
