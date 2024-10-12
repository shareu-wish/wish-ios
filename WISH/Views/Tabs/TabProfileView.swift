//
//  TabInfoView.swift
//  WISH
//
//  Created by Sergey on 12.10.2024.
//

import SwiftUI
import SafariServices

struct TabProfileView: UIViewControllerRepresentable{
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<TabProfileView>) -> SFSafariViewController {
        SFSafariViewController(url: URL(string: Strings.authURL)!)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<TabProfileView>) {}
}

#Preview {
    TabProfileView()
}
