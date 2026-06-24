public class DocumentTest {

    public static void main(String[] args) {

        DocumentFactory wordFactory = new WordDocumentFactory();
        DocumentFactory pdfFactory  = new PdfDocumentFactory();
        DocumentFactory excelFactory = new ExcelDocumentFactory();

        System.out.println("=== Word Document ===");
        Document word = wordFactory.createDocument();
        word.open();
        word.save();
        word.close();

        System.out.println("\n=== PDF Document ===");
        Document pdf = pdfFactory.createDocument();
        pdf.open();
        pdf.save();
        pdf.close();

        System.out.println("\n=== Excel Document ===");
        Document excel = excelFactory.createDocument();
        excel.open();
        excel.save();
        excel.close();

        // showing that the factory itself can drive the workflow too
        System.out.println("\n=== Using factory methods directly ===");
        wordFactory.openDocument();
        pdfFactory.saveDocument();
        excelFactory.closeDocument();
    }
}
