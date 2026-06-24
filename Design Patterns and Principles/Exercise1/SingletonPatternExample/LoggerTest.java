public class LoggerTest {

    public static void main(String[] args) {

        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();
        Logger logger3 = Logger.getInstance();

        logger1.log("Application started");
        logger2.log("User logged in");
        logger3.log("Processing data");

        System.out.println("\n--- Verification ---");

        // all three should point to the exact same object
        System.out.println("logger1 == logger2: " + (logger1 == logger2));
        System.out.println("logger2 == logger3: " + (logger2 == logger3));

        System.out.println("Total logs recorded: " + logger1.getLogCount());

        System.out.println("\nHash codes:");
        System.out.println("logger1: " + logger1.hashCode());
        System.out.println("logger2: " + logger2.hashCode());
        System.out.println("logger3: " + logger3.hashCode());
    }
}
