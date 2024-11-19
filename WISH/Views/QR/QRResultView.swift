//
//  QRScannerResult.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI
import WebKit
import SafariServices

struct QRResultView: UIViewControllerRepresentable{
    
    @State var link: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<QRResultView>) -> UIViewController {
           let webView = WKWebView()
           let viewController = UIViewController()
           viewController.view = webView
           
           if let url = URL(string: link) {
               let request = URLRequest(url: url)
               webView.load(request)
           }
           
           return viewController
       }
       
       func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<QRResultView>) {
           // Обновление логики при необходимости
       }
}


#Preview {
    QRResultView(link: "https://www.google.com/")
}
