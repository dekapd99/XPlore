
import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        }
        .padding()
    }
}

#Preview {
    HeaderView(showGuideView: .constant(false), showInfoView: .constant(false))
        .previewLayout(.fixed(width: 375, height: 80))
}
