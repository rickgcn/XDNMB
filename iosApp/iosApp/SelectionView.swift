//
//  SelectionView.swift
//  iosApp
//
//  Created by 123哆3 on 2022/11/9.
//  Copyright © 2022 orgName. All rights reserved.
//

import SwiftUI
import shared

struct SelectionView: View {
    let sdk: XdSDK
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    HStack{
                        HStack{
                            Image(systemName: "bookmark.fill")
                                .padding(4)
                                .foregroundColor(Color.white)
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.systemTeal))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("订阅内容")
                    }
                    NavigationLink(destination: HistoryView(viewModel: .init(sdk: sdk), sdk: sdk)){
                        HStack{
                            HStack{
                                Image(systemName: "clock.fill")
                                    .padding(4)
                                    .foregroundColor(Color.white)
                                    .frame(width: 30,height: 30)
                            }
                            .background(Color(UIColor.systemPurple))
                            .cornerRadius(6)
                            .padding(.trailing,8)
                            Text("历史记录")
                        }
                    }
                    HStack{
                        HStack{
                            Image(systemName: "bubble.right.fill")
                                .padding(4)
                                .foregroundColor(Color.white)
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.systemBlue))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("发言记录")
                    }
                }
                Section{
                    HStack{
                        HStack{
                            Image("cookie")
                                .padding(4)
                                .foregroundColor(Color.white)
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.systemOrange))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("饼干管理")
                    }
                    HStack{
                        HStack{
                            Image("block")
                                .padding(4)
                                .foregroundColor(Color.white)
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.systemRed))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("屏蔽管理")
                    }
                }
                Section{
                    HStack{
                        HStack{
                            Image("frogisland")
                                .padding(4)
                                .foregroundColor(Color.white)
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.systemIndigo))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("关于雾岛")
                    }
                    HStack{
                        HStack{
                            Image("github")
                                .padding(4)
                                .foregroundColor(Color(UIColor.systemBackground))
                                .frame(width: 30,height: 30)
                        }
                        .background(Color(UIColor.label))
                        .cornerRadius(6)
                        .padding(.trailing,8)
                        Text("查看源码")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("选项")
        }
    }
}
