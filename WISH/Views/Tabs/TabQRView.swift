//
//  TabQRCodeView.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI

struct TabQRView: View {
    @State var scanResult = ""
    
    var body: some View {
        VStack {
            if (scanResult.isEmpty) {
                QRScannerView(controller: QRController(), result: $scanResult)
                    .frame(maxWidth: .infinity, alignment: .top)
                    .offset(y: -69)
            } else {
                NavigationView {
                    ZStack {
                        NavigationLink(destination: QRResultView(link: scanResult).navigationBarBackButtonHidden(true)) {
                            QRResultView(link: scanResult)
                                .frame(maxWidth: .infinity, alignment: .top)
                        }
                    }
                    .navigationBarHidden(true)
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    TabQRView()
}
