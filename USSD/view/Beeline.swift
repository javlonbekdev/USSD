//
//  Beeline.swift
//  USSD
//
//  Created by Javlonbek on 17/01/23.
//

import SwiftUI

struct All: View {
    @EnvironmentObject var user: User
    
    let array = [
        LabelImage(name: "ussd kodlar", image: "phone.connection"),
        LabelImage(name: "internet paketlar", image: "network"),
        LabelImage(name: "tarif rejalar", image: "doc.plaintext"),
        LabelImage(name: "xizmatlar", image: "point.3.connected.trianglepath.dotted"),
        LabelImage(name: "yangiliklar", image: "newspaper"),
        LabelImage(name: "aksiya va chegirmalar", image: "giftcard")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                LottieView()
                    .frame(height: 200)
                ForEach(array, id: \.self) { model in
                    ZStack {
                        LinearGradient(colors:
                                        (
                                            user.tab == 0 ? [.yellow.opacity(0.8), .yellow.opacity(0.6)] : (user.tab == 1 ? [.pink.opacity(0.8), .pink.opacity(0.6)] : [.blue.opacity(0.8), .blue.opacity(0.6)])
                                        ), startPoint: .topLeading, endPoint: .bottomTrailing)
                        HStack {
                            Label(model.name, systemImage: model.image)
                                .foregroundColor(.black)
                                .font(.system(size: 25))
                                .padding(.leading)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .padding(.trailing)
                        }
                    }
                    .listRowBackground(Color.clear)
                    .frame(height: 80)
                    .cornerRadius(20)
                    .overlay {
                        NavigationLink(destination: {  },
                                       label: { EmptyView() })
                        .opacity(0)
                    }
                    .listRowInsets(EdgeInsets())
                }
                
                .padding(10)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle(user.tab == 0 ? "Beeline" : (user.tab == 1 ? "Ucell" : "Uzmobile"))
        }
    }
}

//struct Beeline_Previews: PreviewProvider {
//    static var previews: some View {
//        Beeline()
//    }
//}
