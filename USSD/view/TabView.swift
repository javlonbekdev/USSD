//
//  TabView.swift
//  USSD
//
//  Created by Javlonbek on 17/01/23.
//

import SwiftUI

struct Tabbar: View {
    @Environment(\.presentationMode) var present: Binding<PresentationMode>
    @EnvironmentObject var user: User
    var body: some View {
        HStack {
            Spacer()
            Button {
                user.tab = 0
                present.wrappedValue.dismiss()
            } label: {
                Image("beeline")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            Spacer()
            Spacer()
            Button {
                user.tab = 1
                present.wrappedValue.dismiss()
            } label: {
                Image("ucell")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            Spacer()
            Spacer()
            Button {
                user.tab = 2
                present.wrappedValue.dismiss()
            } label: {
                Image("uzmobile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            Spacer()
        }
        .background(.white)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
