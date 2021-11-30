//
//  Advice:Goals.swift
//  Mobile Marauders App
//
//  Created by Ian M on 11/29/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct Article: Hashable, Identifiable {
    var id: UUID
    var text: String
    var url: String
    
    init(_ text: String, url: String) {
        self.id = UUID()
        self.text = text
        self.url = url
    }
}

struct AdviceView: View {
    @State var isShowingWebView: Bool = false
    @Environment(\.openURL) var openURL
    
    let articles = [
        Article("The 50-20-30 rule", url: "https://n26.com/en-eu/blog/50-30-20-rule"),
        Article("Ten Tips", url: "https://www.strawberryinvest.com/knowledge-hub/top-10-tips-for-first-time-investors/")
    ]
    
    var body: some View {
        VStack {
            Text("Articles on Budgeting!")
                .padding()
            
            List {
                ForEach(articles, id: \.self) { article in
                    Button(action: {
                              isShowingWebView = true
                          })
                          {
                        Text("\(article.text)")
                          }
                          .sheet(isPresented: $isShowingWebView) {
                            WebView(request: URLRequest(url: URL(string: article.url)!))
                          }
                    .padding(.bottom, 10.0)
                }
            }
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
    }
}

struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://google.com")!))
    }
}
