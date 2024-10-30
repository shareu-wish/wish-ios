//
//  TabInfoView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI
import WebKit
import SafariServices

struct TabProfileView: UIViewControllerRepresentable{
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<TabProfileView>) -> UIViewController {
           let webView = WKWebView()
           let viewController = UIViewController()
           viewController.view = webView
           
           if let url = URL(string: Strings.authURL) {
               let request = URLRequest(url: url)
               webView.load(request)
           }
           
           return viewController
       }
       
       func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TabProfileView>) {
           // Обновление логики при необходимости
       }
}

#Preview {
    TabProfileView()
}
