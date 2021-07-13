//
//  Today.swift
//  SwiftUI_SwipeDownToCloseAnimation
//
//  Created by park kyung seok on 2021/07/13.
//

import SwiftUI

struct Today: View {
    
    @EnvironmentObject var detail: DetailViewModel
    var animation: Namespace.ID
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                HStack(alignment: .bottom, content: {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("SATURDAY 14 NOVEMBER")
                            .foregroundColor(.gray)
                        
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    
                    }
                    
                    Spacer()
                    
                    Button(action: { }) {
                         Image(systemName: "person.circle")
                            .font(.largeTitle)
                    }
                })
                .padding()
                
                ForEach(items) { item in
                    
                    // CardView
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detail.selectedItem = item
                                detail.show.toggle()
                            }
                            
                        }
                }
            }
            .padding(.bottom)
        }
        .background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

// Hero Animation


//
//struct Today_Previews: PreviewProvider {
//    static var previews: some View {
//        Today()
//    }
//}
//
//
