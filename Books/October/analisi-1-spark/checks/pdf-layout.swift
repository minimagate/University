import Foundation
import PDFKit
let d=PDFDocument(url:URL(fileURLWithPath:CommandLine.arguments[1]))!
for i in 0..<d.pageCount {
 let p=d.page(at:i)!,s=p.string ?? ""; var off=0; var bad:[String]=[]
 for line in s.components(separatedBy:"\n") {
  let n=(line as NSString).length
  if n>1, let selection=p.selection(for:NSRange(location:off,length:n)) {
   let b=selection.bounds(for:p)
   if b.minX<66 || b.maxX>530 {bad.append(String(format:"x=%.1f..%.1f %@",b.minX,b.maxX,String(line.prefix(110))))}
  }
  off+=n+1
 }
 print("PAGE \(i+1) CHARS \(s.count)"+(bad.isEmpty ? "" : "\n"+bad.joined(separator:"\n")))
}
