//
//  DetailViewModel.swift
//  SwiftUI_SwipeDownToCloseAnimation
//
//  Created by park kyung seok on 2021/07/13.
//

import SwiftUI

class DetailViewModel: ObservableObject {
 
    @Published var selectedItem =  TodayItem(title: "", category: "", overlay: "", contentImage: "", logo: "")
    @Published var show = false
}
