//
//  MainView.swift
//  CollectionViewSwiftUI
//
//  Created by Марк Михайлов on 14.08.2023.
//

import SwiftUI

struct MainView: View {
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ZStack {
                customNavigationBar()
                VStack(alignment: .leading, spacing: 10) {
                    titleLabelCollection()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: Constants.gridItemLayout, alignment: .top, spacing: 10) {
                            ForEach((0...4), id: \.self)  { index in
                                bigCell(index)
                                LazyVGrid(columns: Constants.gridItemLayout, spacing: 10) {
                                    ForEach(0..<min(Constants.colorsSmallCell.count, 2), id: \.self) { subIndex in
                                        smallCell(index, subIndex)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 10)
                        Spacer()
                    }
                }
            }
        }
    }
    
    func customNavigationBar() -> some View {
        Color(Constants.backgroundColor).ignoresSafeArea()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("title")
                        .font(.custom("Bradley Hand", size: 30))
                        .foregroundColor(.blue)
                }
            }
        
            .navigationBarItems(trailing:
                                    Button(action: {}) {
                Image(systemName: "gear")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            )
    }
    
    private func titleLabelCollection() -> some View {
        Text("Get help with any task")
            .font(.headline)
            .foregroundColor(.white)
            .padding(.horizontal, 10)
        
    }
    
    private func bigCell(_ index: Int) -> some View {
        VStack(alignment: .leading) {
            
            Constants.colorsBigCell[(index) % Constants.colorsBigCell.count]
                .frame(width: 180, height: 310)
                .cornerRadius(20)
                .overlay(
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(Constants.titleLabelBigCell[index % Constants.titleLabelBigCell.count])
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 30)
                        
                        Text(Constants.secondaryLabelBigCell[index % Constants.secondaryLabelBigCell.count])
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .frame(width: 150, alignment: .topLeading)
                        
                        Spacer()
                        
                        Image(systemName: Constants.symbolsBigCell[index % Constants.symbolsBigCell.count])
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .padding(.bottom, 50)
                            .padding(.leading, 90)
                    }
                )
        }
    }
    
    private func smallCell(_ index: Int, _ subIndex: Int) -> some View {
        VStack(alignment: .leading) {
            Constants.colorsSmallCell[(index * 2 + subIndex) % Constants.colorsSmallCell.count]
                .frame(width: 180, height: 150)
                .cornerRadius(20)
                .overlay(
                    VStack(alignment: .leading, spacing: 30) {
                        HStack() {
                            
                            Text(Constants.titleLabelSmallCell[(index * 2 + subIndex) % Constants.titleLabelSmallCell.count])
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                            
                            Image(systemName: Constants.symbolsSmallCell[(index * 2 + subIndex) % Constants.symbolsSmallCell.count])
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                        
                        Text(Constants.secondaryLabelSmallCell[(index * 2 + subIndex) % Constants.secondaryLabelSmallCell.count])
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .frame(width: 150, alignment: .topLeading)
                    }
                )
        }
    }
}

// MARK: - Preview

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
