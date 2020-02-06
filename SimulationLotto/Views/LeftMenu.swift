//
//  LeftMenu.swift
//  SimulationLotto
//
//  Created by sungju Yun on 2020/02/06.
//  Copyright © 2020 SungJu. All rights reserved.
//

import SwiftUI

internal struct LeftMenu: View {
    @Binding var showLeftMenu: Bool
    @Binding var showRightMenu: Bool
    
    @Binding var centerView: AnyView?
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                Text("Hello World!")
            }
        }
    }
    
    init(showLeftMenu: Binding<Bool> = .constant(false), showRightMenu: Binding<Bool> = .constant(false), centerView: Binding<AnyView?>) {
        self._showLeftMenu = showLeftMenu
        self._showRightMenu = showRightMenu
        
        self._centerView = centerView
    }
}

#if DEBUG
struct LeftMenu_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LeftMenu(showLeftMenu: .constant(false), showRightMenu: .constant(false), centerView: .constant(nil))
                .previewDevice("iPhone Xs")
                .environment(\.colorScheme, .dark)
            LeftMenu(showLeftMenu: .constant(false), showRightMenu: .constant(false), centerView: .constant(nil))
        }
    }
}
#endif
