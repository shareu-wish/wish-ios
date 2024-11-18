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
    
    func makeUIViewController(context: Context) -> QRScannerController {
        let controller = QRScannerController()
        controller.delegate = context.coordinator

        return controller
    }
    
    func updateUIViewController(_ uiViewController: QRScannerController, context: Context) {
    }
    
    func makeCoordinator() -> QRScannerCoordinator {
        QRScannerCoordinator($result)
    }
}

