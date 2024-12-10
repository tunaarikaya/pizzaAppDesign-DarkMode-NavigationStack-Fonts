//
//  Chip.swift
//  TasarimCalismasi
//
//  Created by Mehmet Tuna Arıkaya on 9.12.2024.
//

import SwiftUI

struct Chip: View {
    var icerik = ""
    var body: some View {
      
        Button(icerik){
            
        }.padding(15)
            .foregroundStyle(Color("yaziRenk1"))
            .background(Color("anaRenk"))
            .cornerRadius(15)
    }
}

#Preview {
    Chip()
}
