//
//  Details.swift
//  H4X0R NEW
//
//  Created by Nhan Mai on 19/06/2024.
//

import SwiftUI

struct Details: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    Details(url: "")
}
