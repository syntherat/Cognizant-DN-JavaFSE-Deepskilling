import java.util.HashMap;

public class ForecastingTool {

    // -------------------------------------------------------
    // Plain recursive approach
    //
    // Formula: FV = PV * (1 + rate)^n
    //
    // Base case  : n == 0, just return the principal
    // Recursive  : multiply last period's value by (1 + rate)
    //
    // Time complexity  : O(n) — one call per period
    // Space complexity : O(n) — call stack depth grows with n
    // -------------------------------------------------------
    public static double futureValue(double presentValue, double rate, int periods) {
        if (periods == 0) {
            return presentValue;
        }
        return futureValue(presentValue, rate, periods - 1) * (1 + rate);
    }


    // -------------------------------------------------------
    // Memoized recursive approach
    //
    // Problem with the plain version: if you call futureValue()
    // multiple times for different period values (e.g. in a loop
    // to build a forecast table), each call recomputes everything
    // from scratch. Memoization caches intermediate results so
    // each sub-problem is solved only once.
    //
    // Time complexity  : O(n) first call, O(1) for cached lookups
    // Space complexity : O(n) for the cache
    // -------------------------------------------------------
    private static HashMap<Integer, Double> memo = new HashMap<>();

    public static double futureValueMemo(double presentValue, double rate, int periods) {
        if (periods == 0) {
            return presentValue;
        }
        if (memo.containsKey(periods)) {
            return memo.get(periods);
        }
        double result = futureValueMemo(presentValue, rate, periods - 1) * (1 + rate);
        memo.put(periods, result);
        return result;
    }

    public static void clearMemo() {
        memo.clear();
    }
}
