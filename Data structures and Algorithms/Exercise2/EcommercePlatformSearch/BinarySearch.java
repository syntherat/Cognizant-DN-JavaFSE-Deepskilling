// Array must be sorted by productId before calling this.
//
// Time Complexity:
//   Best case  -> O(1)    : target is the middle element on first check
//   Average    -> O(log n): halves the search space each iteration
//   Worst case -> O(log n): target is at an edge or not present

public class BinarySearch {

    public static Product search(Product[] products, int targetId) {
        int low  = 0;
        int high = products.length - 1;

        while (low <= high) {
            int mid = low + (high - low) / 2;   // avoids integer overflow vs (low+high)/2

            if (products[mid].productId == targetId) {
                return products[mid];
            } else if (products[mid].productId < targetId) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }

        return null;
    }
}
