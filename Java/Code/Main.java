class ImpressaoValores extends Thread {
    int inf, sup, id;

    private int teste = 0;

    ImpressaoValores(int idd, int i, int j) {
        this.id = idd;
        this.inf = i;
        this.sup = j;
    }

    public void run() {
        int i;
        for (i = inf; i < sup; i++) {
            teste++;
            System.out.println("Thread: " + this.id + " - Valor: " + teste);
        }
    }

}

public class Main {
    public static void main(String[] args) {
        ImpressaoValores thread1 = new ImpressaoValores(1, 0, 10);
        ImpressaoValores thread2 = new ImpressaoValores(2, 0, 10);
        ImpressaoValores thread3 = new ImpressaoValores(3, 0, 10);
        thread1.start();
        thread2.start();
        thread3.start();
    }
}