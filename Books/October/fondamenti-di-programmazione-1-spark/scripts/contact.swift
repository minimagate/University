// contact OUT.png COLS CELLW CELLH images...: aspect-fit contact sheet, file name in red.
import AppKit
let a=CommandLine.arguments; let out=a[1]; let cols=Int(a[2])!; let cw=Int(a[3])!, ch=Int(a[4])!; let files=Array(a[5...])
let rows=(files.count+cols-1)/cols; let g=10
let W=cols*cw+(cols+1)*g, H=rows*ch+(rows+1)*g
let rep=NSBitmapImageRep(bitmapDataPlanes:nil,pixelsWide:W,pixelsHigh:H,bitsPerSample:8,samplesPerPixel:4,hasAlpha:true,isPlanar:false,colorSpaceName:.deviceRGB,bytesPerRow:0,bitsPerPixel:0)!
NSGraphicsContext.saveGraphicsState(); NSGraphicsContext.current=NSGraphicsContext(bitmapImageRep:rep)
NSColor(white:0.75,alpha:1).setFill(); NSRect(x:0,y:0,width:W,height:H).fill()
for (i,f) in files.enumerated(){ let r=i/cols,c=i%cols
 let im=NSImage(contentsOfFile:f)!; let iw=CGFloat(im.representations[0].pixelsWide), ih=CGFloat(im.representations[0].pixelsHigh)
 let s=min(CGFloat(cw)/iw, CGFloat(ch)/ih); let x=CGFloat(g+c*(cw+g)), y=CGFloat(H-(r+1)*(ch+g))
 NSColor.white.setFill(); NSRect(x:x,y:y,width:CGFloat(cw),height:CGFloat(ch)).fill()
 im.draw(in:NSRect(x:x,y:y+CGFloat(ch)-ih*s,width:iw*s,height:ih*s))
 let t=(f as NSString).lastPathComponent as NSString; t.draw(at:NSPoint(x:x+3,y:y+3),withAttributes:[.font:NSFont.systemFont(ofSize:11),.foregroundColor:NSColor.red])}
NSGraphicsContext.restoreGraphicsState()
try! rep.representation(using:.png,properties:[:])!.write(to:URL(fileURLWithPath:out))
