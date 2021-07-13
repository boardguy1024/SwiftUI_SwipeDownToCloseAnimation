//
//  TabBar.swift
//  SwiftUI_SwipeDownToCloseAnimation
//
//  Created by park kyung seok on 2021/07/13.
//

import SwiftUI

struct TabBar: View {
    
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()
    
    var body: some View {
        
        ZStack {
            TabView {
                
                Today(animation: animation)
                    .environmentObject(detailObject)
                    .tabItem {
                        Image("today")
                            .renderingMode(.template)
                        Text("Today")
                    }
                
                Text("Games")
                    .tabItem {
                        Image("games")
                            .renderingMode(.template)
                        Text("Games")
                    }
                
                Text("Apps")
                    .tabItem {
                        Image("apps")
                            .renderingMode(.template)
                        Text("Apps")
                    }
                
                Text("Search")
                    .tabItem {
                        Image("search")
                            .renderingMode(.template)
                        Text("Search")
                    }
            }
            // DetailがShowの時、tabBarを隠す
            .opacity(detailObject.show ? 0 : 1)
            
            if detailObject.show {
                Detail(detail: detailObject, animation: animation)

            }
        }
        
        
       
    }
    
    
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
