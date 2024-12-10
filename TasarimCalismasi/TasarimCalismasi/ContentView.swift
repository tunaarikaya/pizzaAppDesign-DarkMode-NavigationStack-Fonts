//
//  ContentView.swift
//  TasarimCalismasi
//
//  Created by Mehmet Tuna Arıkaya on 9.12.2024.
//

import SwiftUI

struct ContentView: View {
    init(){
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named:"anaRenk")
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        appearance.titleTextAttributes = [.foregroundColor : UIColor(named:"yaziRenk1")!,.font:UIFont(name: "Pacifico-Regular", size: 22)!]
        
    }
    
    var body: some View {
        //oranları her cihazda farklı olacagı icin geometry reader ile alip okuyacagiz
      //navigation stack üstteki kısım önemli !
        
        GeometryReader{ geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            NavigationStack{
                VStack(spacing: ekranYukseklik/8){
                    Text("pizzaBaslik")
                        .foregroundStyle(Color("anaRenk")).bold().font(.system(size: ekranGenislik/15))
                        Image("yemek_resim")
                    HStack{
                        Chip(icerik : "Cheese")
                        Chip(icerik : "Sausage")
                        Chip(icerik : "Olive")
                        Chip(icerik : "Pepper")
                    
                       
                    };
                    VStack (spacing:10){
                        Text("teslimatSure")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size:ekranGenislik/15))
                        Text("teslimatBaslik")
                            .foregroundStyle(Color("yaziRenk2")).bold().font(.system(size:ekranGenislik/25))
                        Text("pizzaAciklama")
                            .foregroundStyle(Color("yaziRenk2")).bold().font(.system(size:ekranGenislik/25))
                            .padding([.leading,.trailing],ekranGenislik/15)
                            .multilineTextAlignment(.center)//alt yazıyı düzenler
                           
                        
                        
                    }
                    HStack(spacing:60 ){
                        Text("fiyat")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size:42))
                        
                        Button("buttonYazi"){
                            
                        }.padding(15)
                            .foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk"))
                            .cornerRadius(5)
                            
                            
                        
                    }.padding(40)
                    
                }.navigationTitle("Pizza").navigationBarTitleDisplayMode(.inline)//baslık yazısı
            }
        }
        
       
    }
}

#Preview {
    ContentView()
}
