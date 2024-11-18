//
//  QRScannerResult.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI
import WebKit
import SafariServices

struct QRScannerResultView: UIViewControllerRepresentable{
    
    @State var link: String
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<QRScannerResultView>) -> UIViewController {
           let webView = WKWebView()
           let viewController = UIViewController()
           viewController.view = webView
           
           if let url = URL(string: link) {
               let request = URLRequest(url: url)
               webView.load(request)
           }
           
           return viewController
       }
       
       func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<QRScannerResultView>) {
           // Обновление логики при необходимости
       }
}


#Preview {
    QRScannerResultView(link: "https://www.google.com/")
}
