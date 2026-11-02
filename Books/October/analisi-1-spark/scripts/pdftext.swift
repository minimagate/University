// pdftext FILE.pdf: prints the text of every page (=== PAGE n separators).
import PDFKit
let d=PDFDocument(url:URL(fileURLWithPath:CommandLine.arguments[1]))!
print("PAGES",d.pageCount)
for i in 0..<d.pageCount { print("=== PAGE \(i+1)"); print(d.page(at:i)!.string ?? "") }
