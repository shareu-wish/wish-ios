//
//  TabMapView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI
import SafariServices

struct TabMapView: UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<TabMapView>) -> SFSafariViewController {
        SFSafariViewController(url: URL(string: Strings.mapURL)!)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<TabMapView>) {}
}

#Preview {
    TabMapView()
}
