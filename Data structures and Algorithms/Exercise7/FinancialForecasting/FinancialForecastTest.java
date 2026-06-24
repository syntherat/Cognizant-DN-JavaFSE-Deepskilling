public class FinancialForecastTest {

    public static void main(String[] args) {

        double principal  = 10000.0;
        double annualRate = 0.08;
        int    totalYears = 10;

        // Year-by-year forecast (plain recursive)
        System.out.println("==============================================");
        System.out.println("  Year-by-Year Forecast (Recursive)");
        System.out.println("  Principal : Rs. " + principal);
        System.out.println("  Rate      : " + (annualRate * 100) + "% per year");
        System.out.println("==============================================");
        System.out.printf("%-8s %-20s %-15s%n", "Year", "Future Value (Rs.)", "Growth");
        System.out.println("----------------------------------------------");

        for (int year = 0; year <= totalYears; year++) {
            double fv     = ForecastingTool.futureValue(principal, annualRate, year);
            double growth = fv - principal;
            System.out.printf("%-8d %-20.2f +%-14.2f%n", year, fv, growth);
        }
        System.out.println();

        // Verify memoized version gives same result
        System.out.println("==============================================");
        System.out.println("  Memoized Verification (Year 10)");
        System.out.println("==============================================");
        ForecastingTool.clearMemo();
        double memoResult  = ForecastingTool.futureValueMemo(principal, annualRate, totalYears);
        double plainResult = ForecastingTool.futureValue(principal, annualRate, totalYears);
        System.out.printf("Plain recursive result : Rs. %.2f%n", plainResult);
        System.out.printf("Memoized result        : Rs. %.2f%n", memoResult);
        System.out.println("Results match          : " + (Math.abs(memoResult - plainResult) < 0.001));
        System.out.println();

        // Performance comparison over a 30-year table
        int bigN = 30;

        long startPlain = System.nanoTime();
        for (int y = 0; y <= bigN; y++) {
            ForecastingTool.futureValue(principal, annualRate, y);
        }
        long timePlain = System.nanoTime() - startPlain;

        ForecastingTool.clearMemo();
        long startMemo = System.nanoTime();
        for (int y = 0; y <= bigN; y++) {
            ForecastingTool.futureValueMemo(principal, annualRate, y);
        }
        long timeMemo = System.nanoTime() - startMemo;

        System.out.println("==============================================");
        System.out.println("  Performance: building a " + bigN + "-year forecast table");
        System.out.println("==============================================");
        System.out.println("Plain recursive  : " + timePlain + " ns");
        System.out.println("Memoized         : " + timeMemo  + " ns");
        System.out.printf ("Speedup          : %.2fx faster%n", (double) timePlain / timeMemo);
    }
}
