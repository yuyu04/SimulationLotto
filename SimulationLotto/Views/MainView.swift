//
//  ContentView.swift
//  SimulationLotto
//
//  Created by sungju Yun on 2020/02/06.
//  Copyright © 2020 SungJu. All rights reserved.
//

import SwiftUI
import SideMenu

struct MainView: View {
    @State var centerView: AnyView? = nil
    
    @State var showLeftMenu: Bool = false
    @State var showRightMenu: Bool = false
    
    var body: some View {
        let leftMenu = LeftMenu(showLeftMenu: $showLeftMenu, showRightMenu: $showRightMenu, centerView: $centerView)
        let rightMenu = RightMenu(showLeftMenu: $showLeftMenu, showRightMenu: $showRightMenu, centerView: $centerView)
        
        return SideMenu(leftMenu: leftMenu, showLeftMenu: $showLeftMenu, rightMenu: rightMenu, showRightMenu: $showRightMenu, centerView: $centerView)
            .onAppear {
                withAnimation {
                    self.centerView = nil
                }
            }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
