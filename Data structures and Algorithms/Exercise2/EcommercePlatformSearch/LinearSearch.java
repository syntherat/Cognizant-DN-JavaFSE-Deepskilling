// Time Complexity:
//   Best case  -> O(1)  : target is the first element
//   Average    -> O(n)  : target is somewhere in the middle
//   Worst case -> O(n)  : target is last or not present at all

public class LinearSearch {

    public static Product search(Product[] products, int targetId) {
        for (int i = 0; i < products.length; i++) {
            if (products[i].productId == targetId) {
                return products[i];
            }
        }
        return null;
    }
}
