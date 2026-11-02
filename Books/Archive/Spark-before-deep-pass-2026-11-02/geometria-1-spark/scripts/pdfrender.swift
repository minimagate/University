// pdfrender BOOK.pdf OUTDIR SCALE [pages]: renders PDF pages to PNG with PDFKit.
import Foundation
import PDFKit
import AppKit
let args=CommandLine.arguments
let doc=PDFDocument(url:URL(fileURLWithPath:args[1]))!
let out=args[2]; let scale=CGFloat(Double(args[3]) ?? 1.5)
try FileManager.default.createDirectory(atPath:out, withIntermediateDirectories:true)
let only = args.count>4 ? Set(args[4].split(separator:",").map{Int($0)!}) : nil
print("pages",doc.pageCount)
for i in 0..<doc.pageCount {
 if let o=only, !o.contains(i+1) {continue}
 let p=doc.page(at:i)!; let b=p.bounds(for:.mediaBox)
 let w=Int(b.width*scale), h=Int(b.height*scale)
 let rep=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:w,pixelsHigh:h,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:0,bitsPerPixel:0)!
 NSGraphicsContext.saveGraphicsState()
 let ctx=NSGraphicsContext(bitmapImageRep:rep)!; NSGraphicsContext.current=ctx
 let cg=ctx.cgContext; cg.setFillColor(CGColor(gray:1,alpha:1)); cg.fill(CGRect(x:0,y:0,width:w,height:h))
 cg.scaleBy(x:scale,y:scale); p.draw(with:.mediaBox,to:cg)
 NSGraphicsContext.restoreGraphicsState()
 try! rep.representation(using:.png,properties:[:])!.write(to:URL(fileURLWithPath:String(format:"%@/p%02d.png",out,i+1)))
}
