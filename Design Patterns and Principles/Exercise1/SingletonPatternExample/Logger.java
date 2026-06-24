public class Logger {

    private static Logger instance;
    private int logCount;

    private Logger() {
        logCount = 0;
        System.out.println("Logger initialized.");
    }

    // using double-checked locking to be safe in multithreaded scenarios
    public static Logger getInstance() {
        if (instance == null) {
            synchronized (Logger.class) {
                if (instance == null) {
                    instance = new Logger();
                }
            }
        }
        return instance;
    }

    public void log(String message) {
        logCount++;
        System.out.println("[LOG #" + logCount + "] " + message);
    }

    public int getLogCount() {
        return logCount;
    }
}
