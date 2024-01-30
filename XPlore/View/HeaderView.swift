
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Information")
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                print("Guide")
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
        }
        .padding()
    }
}

#Preview {
    HeaderView()
        .previewLayout(.fixed(width: 375, height: 80))
}
