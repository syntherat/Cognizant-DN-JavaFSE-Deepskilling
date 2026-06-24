public abstract class DocumentFactory {

    // subclasses decide which document type to create
    public abstract Document createDocument();

    public void openDocument() {
        Document doc = createDocument();
        doc.open();
    }

    public void saveDocument() {
        Document doc = createDocument();
        doc.save();
    }

    public void closeDocument() {
        Document doc = createDocument();
        doc.close();
    }
}
