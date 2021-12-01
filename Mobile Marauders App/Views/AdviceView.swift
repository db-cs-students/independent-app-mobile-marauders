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
    @Environment(\.openURL) var openURL
    
    let articles = [
        Article("The 50-20-30 rule", url: "https://n26.com/en-eu/blog/50-30-20-rule"),
        Article("Ten Tips", url: "https://www.strawberryinvest.com/knowledge-hub/top-10-tips-for-first-time-investors/"),
        Article("How to buy a car", url: "https://www.ramseysolutions.com/debt/the-truth-about-car-payments")
    ]
    
    var body: some View {
        VStack {
            Text("Articles on Budgeting!")
            NavigationView {
            List {
                ForEach(articles, id: \.self) { article in
                    NavigationLink(
                        destination: WebView(request: URLRequest(url: URL(string: article.url)!)), label: {
                            Text("\(article.text)")
                        })
                    }
                }
            }
            .frame(width: 300, height: 250)
            Text("Dailey Challenges")
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
    }
}
