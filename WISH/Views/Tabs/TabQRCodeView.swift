//
//  TabQRCodeView.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI

struct TabQRCodeView: View {
    @State var scanResult = ""
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                QRScannerView(result: $scanResult)
                
                if (!scanResult.isEmpty) {
                    NavigationView {
                        QRScannerResultView(link: scanResult)
                    }
                }
            }
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    TabQRCodeView()
}
