package Semaphore;

public enum Infos {
    VERDE(1000), AMARELO(300), VERMELHO(2000);

    private int waitingTime;

    Infos(int waitingTime) {
        this.waitingTime = waitingTime;
    }

    public int getWaitingTime() {
        return waitingTime;
    }
}
