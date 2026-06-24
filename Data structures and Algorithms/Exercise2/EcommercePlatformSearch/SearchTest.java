import java.util.Arrays;
import java.util.Comparator;

public class SearchTest {

    public static void main(String[] args) {

        Product[] products = {
            new Product(101, "Wireless Mouse",      "Electronics"),
            new Product(205, "Running Shoes",       "Footwear"),
            new Product(330, "Coffee Maker",        "Appliances"),
            new Product(412, "Yoga Mat",            "Sports"),
            new Product(567, "Bluetooth Speaker",   "Electronics"),
            new Product(623, "Desk Lamp",           "Furniture"),
            new Product(748, "Notebook Pack",       "Stationery"),
            new Product(815, "Water Bottle",        "Sports"),
            new Product(903, "HDMI Cable",          "Electronics"),
            new Product(999, "Office Chair",        "Furniture")
        };

        // sorted copy for binary search
        Product[] sortedProducts = Arrays.copyOf(products, products.length);
        Arrays.sort(sortedProducts, Comparator.comparingInt(p -> p.productId));

        int searchId  = 748;   // Notebook Pack - somewhere in the middle
        int missingId = 500;   // doesn't exist

        // Linear Search
        System.out.println("========================================");
        System.out.println("   Linear Search");
        System.out.println("========================================");

        long startTime = System.nanoTime();
        Product linearResult = LinearSearch.search(products, searchId);
        long linearTime = System.nanoTime() - startTime;

        System.out.println("Searching for ID: " + searchId);
        System.out.println("Result : " + (linearResult != null ? linearResult : "Not found"));
        System.out.println("Time   : " + linearTime + " ns");
        System.out.println();

        Product linearMiss = LinearSearch.search(products, missingId);
        System.out.println("Searching for ID: " + missingId + " (not in catalog)");
        System.out.println("Result : " + (linearMiss != null ? linearMiss : "Not found"));
        System.out.println();

        // Binary Search
        System.out.println("========================================");
        System.out.println("   Binary Search");
        System.out.println("========================================");

        startTime = System.nanoTime();
        Product binaryResult = BinarySearch.search(sortedProducts, searchId);
        long binaryTime = System.nanoTime() - startTime;

        System.out.println("Searching for ID: " + searchId);
        System.out.println("Result : " + (binaryResult != null ? binaryResult : "Not found"));
        System.out.println("Time   : " + binaryTime + " ns");
        System.out.println();

        Product binaryMiss = BinarySearch.search(sortedProducts, missingId);
        System.out.println("Searching for ID: " + missingId + " (not in catalog)");
        System.out.println("Result : " + (binaryMiss != null ? binaryMiss : "Not found"));
    }
}
