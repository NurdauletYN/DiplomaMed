//DetailView.swift

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var isPresented = false
}

struct DetailView: View {
    @StateObject var viewModel = ContentViewModel()
    @State private var isShowing = false
    let contact: Contact
    
    var body: some View {
         VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            Text(contact.md)
                .font(.title2)
            .fontWeight(.light)
              Form {
                HStack {
                    Text("Date of Birth")
                    Spacer()
                    Text(contact.db)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Phone")
                    Spacer()
                    Text(contact.call)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Email")
                    Spacer()
                    Text(contact.email)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Address")
                    Spacer()
                    Text(contact.address)
                        .foregroundColor(.gray)
                        .font(.callout)

                }
                HStack {
                    Text("Experience")
                    Spacer()
                    Text(contact.experience)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                Section {
                    Link("Email", destination: URL(string: (contact.mail))!)
                    Link("WhatsApp", destination: URL(string: (contact.wp))!)
                    Link("Call", destination: URL(string: (contact.phone))!)
                }
                Section {
                    Button("Book an appoinment") {
                        viewModel.isPresented = true
                    }
                    Button("Information sended", action: {
                        self.isShowing.toggle()
                    }).foregroundColor(.red)
                    
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
            DetailView(contact: contacts[0])    }

}
