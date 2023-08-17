//
//  TabBar.swift
//  CollectionViewSwiftUI
//
//  Created by Марк Михайлов on 14.08.2023.
//

import SwiftUI

struct CustomTabView: View {
    
    @State var selectedTab: Int = 0
    
    // MARK: - Body
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem {
                    Image(systemName: "ellipsis.message")
                    Text("Chats")
                }
                .tag(0)
            Text("")
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Tasks For AI")
                }
                .tag(1)
            Text("")
                .tabItem {
                    Image(systemName: "clock")
                    Text("History")
                }
                .tag(2)
        }
        .accentColor(.white)
    }
}

// MARK: - Preview

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
