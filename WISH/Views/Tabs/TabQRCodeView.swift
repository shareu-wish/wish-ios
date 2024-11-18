//
//  TabQRCodeView.swift
//  WISH
//
//  Created by Sergey on 19.11.2024.
//

import SwiftUI

struct TabQRCodeView: View {
    @State var scanResult = "No QR code detected"
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                QRScannerView(result: $scanResult)
                
                Text(scanResult)
                    .padding()
                    .background(.black)
                    .foregroundColor(.white)
                    .padding(.bottom)
            }
        }.preferredColorScheme(.dark)
    }
}

#Preview {
    TabQRCodeView()
}
