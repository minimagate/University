// Converte gli SVG del libro in PDF vettoriali (stesso nome, stessa cartella) usando WebKit di macOS.
// Uso: swift svg-to-pdf.swift <cartella o file.svg ...>
import AppKit
import WebKit

var queue: [URL] = []
for a in CommandLine.arguments.dropFirst() {
  let u = URL(fileURLWithPath: a)
  var isDir: ObjCBool = false
  FileManager.default.fileExists(atPath: u.path, isDirectory: &isDir)
  if isDir.boolValue {
    queue += (try! FileManager.default.contentsOfDirectory(at: u, includingPropertiesForKeys: nil))
      .filter { $0.pathExtension == "svg" }.sorted { $0.path < $1.path }
  } else { queue.append(u) }
}

func svgSize(_ url: URL) -> CGSize {
  let s = try! String(contentsOf: url, encoding: .utf8)
  func attr(_ n: String) -> Double {
    let r = try! NSRegularExpression(pattern: "<svg[^>]*\\s\(n)=\"([0-9.]+)")
    let m = r.firstMatch(in: s, range: NSRange(s.startIndex..., in: s))!
    return Double(s[Range(m.range(at: 1), in: s)!])!
  }
  return CGSize(width: attr("width"), height: attr("height"))
}

class Runner: NSObject, WKNavigationDelegate {
  let web: WKWebView
  var current: URL?
  override init() {
    web = WKWebView(frame: NSRect(x: 0, y: 0, width: 800, height: 600))
    super.init()
    web.navigationDelegate = self
  }
  func next() {
    guard !queue.isEmpty else { NSApp.terminate(nil); return }
    let u = queue.removeFirst(); current = u
    let size = svgSize(u)
    web.frame = NSRect(x: 0, y: 0, width: size.width, height: size.height)
    let svg = try! String(contentsOf: u, encoding: .utf8)
    let html = "<!doctype html><html><head><meta charset='utf-8'><style>html,body{margin:0;padding:0;background:white;overflow:hidden}svg{display:block}</style></head><body>\(svg)</body></html>"
    web.loadHTMLString(html, baseURL: u.deletingLastPathComponent())
  }
  func webView(_ w: WKWebView, didFinish n: WKNavigation!) {
    let u = current!; let size = svgSize(u)
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
      let cfg = WKPDFConfiguration(); cfg.rect = CGRect(origin: .zero, size: size)
      w.createPDF(configuration: cfg) { r in
        switch r {
        case .success(let data):
          let out = u.deletingPathExtension().appendingPathExtension("pdf")
          try! data.write(to: out); print("ok", out.lastPathComponent)
        case .failure(let e): print("FAIL", u.lastPathComponent, e)
        }
        self.next()
      }
    }
  }
}
let app = NSApplication.shared
app.setActivationPolicy(.prohibited)
let runner = Runner()
DispatchQueue.main.async { runner.next() }
app.run()
