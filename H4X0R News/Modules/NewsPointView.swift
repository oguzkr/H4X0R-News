//
//  PostPointView.swift
//  H4X0R News
//
//  Created by Oğuz Karatoruk on 16.06.2022.
//

import SwiftUI

struct NewsPointView: View {
    var point: Int
    var body: some View {
        ZStack {
            Circle().stroke(.gray, lineWidth: 3)
            Text(String(point))
                .font(.system(size: 10, design: .rounded))
        }.frame(width: 35, height: 35)
    }
}

struct NewsPointView_Previews: PreviewProvider {
    static var previews: some View {
        NewsPointView(point: 999)
            .padding()
            .previewLayout(.fixed(width: 40, height: 40))
            .previewDisplayName("NewsPointView")
    }
}
