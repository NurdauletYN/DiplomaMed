import SwiftUI
struct ContactView: View {
    @State var searchText = ""
    @State var isSearching = false
    @State var searching = false
    var body: some View {
        NavigationView {
            VStack{ HStack {
                VStack {
                TextField("Search", text: $searchText){ startedEditing in
                    if startedEditing {
                        withAnimation {
                            isSearching = true
                        }
                    }
                }.padding(.leading, 35)
            }.padding()
                .background(Color(.systemGray5))
                .cornerRadius(20.0)
                .padding(.horizontal)
                .onTapGesture(perform: {
                    isSearching = true})
                .overlay(
                     HStack{
                                    Image(systemName: "magnifyingglass")
                                        Spacer()
                                        if isSearching{
                                            Button(action: {searchText = "" }, label: {
                                                Image(systemName: "xmark.circle.fill")
                                                    .padding(.vertical)
                                            }
                                            )
                                            
                                        }
                                    }
                                        .padding(.horizontal, 34)
                                        .foregroundColor(.gray)
                                )
            if isSearching {
                                Button(action: {
                                    isSearching = false
                                    searchText = ""
                                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                                            
                                                        }, label: {
                                                            Text("Cancel")
                                                                .padding(.trailing)
                                                                .padding(.leading, -16)
                                                        })
                                                            .transition(.move(edge: .trailing)).animation(.spring())
            }
            }
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }.padding(.vertical, 20)
            }
                .navigationTitle("Doctors")
                .padding(.vertical)
                        
    }
        }}
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 18, weight: .semibold, design: .default))
                Text(contact.md)
                    .font(.system(size:17, weight: .ultraLight, design: .rounded))
                    .fontWeight(.thin)
            }
        }
    }
}
