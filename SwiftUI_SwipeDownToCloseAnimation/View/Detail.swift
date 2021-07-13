//
//  Detail.swift
//  SwiftUI_SwipeDownToCloseAnimation
//
//  Created by park kyung seok on 2021/07/13.
//

import SwiftUI

struct Detail: View {
    
    // Getting Current Selected Item
    @ObservedObject var detail: DetailViewModel
    var animation: Namespace.ID
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack {
                
                ZStack(alignment: .top) {
                    Image(detail.selectedItem.contentImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                    
                    HStack {
                        Text(detail.selectedItem.overlay)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.show.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding()
                                .background(Color.black.opacity(0.8))
                                .clipShape(Circle())
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, UIApplication.shared.windows.first!.safeAreaInsets.top + 10)
                }
              
                
                HStack {
                    
                    Image(detail.selectedItem.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    
                    
                    VStack(alignment: .leading, spacing: 6, content: {
                        
                        Text(detail.selectedItem.title)
                            .fontWeight(.bold)
                        
                        Text(detail.selectedItem.category)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        
                    })
                    
                    Spacer(minLength: 0)
                    
                    VStack {
                        Button(action: { }) {
                            
                            Text("GET")
                                .fontWeight(.bold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Color.primary.opacity(0.1))
                                .clipShape(Capsule())
                        }
                        
                        Text("In App Purchases")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
                .padding()
                
                
                Text("Race Through the ultimage street racing scene at dizzying speed withthe tap of your finger! Have fun winning the racing car collection of your dreams. Pick an Event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile. Race Through the ultimage street racing scene at dizzying speed withthe tap of your finger! Have fun winning the racing car collection of your dreams. Pick an Event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile. Race Through the ultimage street racing scene at dizzying speed withthe tap of your finger! Have fun winning the racing car collection of your dreams. Pick an Event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile. Race Through the ultimage street racing scene at dizzying speed withthe tap of your finger! Have fun winning the racing car collection of your dreams. Pick an Event, choose a lineup of cars from your collection, and start racing for infamy in the first Forza game for mobile.")
                    .padding()
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}
//
//struct Detail_Previews: PreviewProvider {
//    static var previews: some View {
//        Detail()
//    }
//}
