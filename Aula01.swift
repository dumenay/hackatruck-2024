import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .padding()
                    .frame(width: 125.0, height: 125.0)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .padding()
                    .frame(width: 125.0, height: 125.0)
                    .foregroundColor(.blue)
            }
            Spacer()
            HStack{
                Rectangle()
                    .padding()                    .frame(width: 125.0, height: 125.0)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .padding()
                    .frame(width: 125.0, height: 125.0)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    ContentView()
}
