import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(xplore: xploreData[1])
            //FIXME: ADD PADDING TO THE CARD LATER ON.
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("SUCCESS!"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon!"))
            )
        })
    }
}

#Preview {
    ContentView()
}
