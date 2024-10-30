//
//  TabMapView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI
import WebKit
import SafariServices

struct TabMapView: UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<TabMapView>) -> UIViewController {
           let webView = WKWebView()
           let viewController = UIViewController()
           viewController.view = webView
           
           if let url = URL(string: Strings.mapURL) {
               let request = URLRequest(url: url)
               webView.load(request)
           }
           
           return viewController
       }
       
       func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TabMapView>) {
           // Обновление логики при необходимости
       }
}

#Preview {
    TabMapView()
}
