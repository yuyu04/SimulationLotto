//
//  RightMenu.swift
//  SimulationLotto
//
//  Created by sungju Yun on 2020/02/06.
//  Copyright © 2020 SungJu. All rights reserved.
//

import SwiftUI

internal struct RightMenu: View {
    @Binding var showLeftMenu: Bool
    @Binding var showRightMenu: Bool
    
    @Binding var centerView: AnyView?
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                Text("Hello World!")
            }
        }
        .background(Color.red)
        .background(Rectangle().shadow(radius: 4))
    }
    
    init(showLeftMenu: Binding<Bool> = .constant(false), showRightMenu: Binding<Bool> = .constant(false), centerView: Binding<AnyView?>) {
        _showLeftMenu = showLeftMenu
        _showRightMenu = showRightMenu
        
        _centerView = centerView
    }
}

#if DEBUG
struct RightMenu_Previews: PreviewProvider {
    static var previews: some View {
        RightMenu(showLeftMenu: .constant(false), showRightMenu: .constant(false), centerView: .constant(nil))
    }
}

#endif
