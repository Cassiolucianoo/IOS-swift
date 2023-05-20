import SwiftUI

struct ContentVieww: View {
    @State private var isNextScreenPresented = false

    var body: some View {
        Button(action: {
            isNextScreenPresented.toggle()
        }) {
            Text("Abrir próxima tela")
        }
        .sheet(isPresented: $isNextScreenPresented) {
            NextScreenn()
        }
    }
}

struct NextScreenn: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Próxima tela")
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Fechar")
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .onAppear {
            let screenSize = UIScreen.main.bounds.size
            presentationMode.wrappedValue.dismiss()
            DispatchQueue.main.async {
               // presentationMode.wrappedValue.presentedViewController?.preferredContentSize = screenSize
              //  presentationMode.wrappedValue.presentedViewController?.view.superview?.bounds = CGRect(origin: .zero, size: screenSize)
            }
        }
    }
}

struct ContentVieww_Previews: PreviewProvider {
    static var previews: some View {
        ContentVieww()
    }
}





