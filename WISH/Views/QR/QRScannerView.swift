//
//  QRScannerView.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI
import AVFoundation

struct QRScannerView: UIViewControllerRepresentable {
    
    @Binding var result: String
    let controller: QRController
    
    init(controller: QRController, result: Binding<String>) {
        self.controller = controller
        self._result = result
    }
    
    func makeUIViewController(context: Context) -> QRController {
        controller.delegate = context.coordinator
        let size = controller.view.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        controller.preferredContentSize = size
        return controller
    }
    
    func updateUIViewController(_ uiViewController: QRController, context: Context) {
    }
    
    func makeCoordinator() -> QRCoordinator {
        QRCoordinator($result)
    }
}

