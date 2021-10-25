
//  Contacts.swift

import SwiftUI

struct Contact: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let address: String
    let md: String
    let experience: String
    let db: String
    let wp: String
    let mail: String
    let call: String
}

let contacts = [
    Contact(imageName: "doc1", name: "Honorata Kaja", phone: "tel:+1(000)-0000001", email: "gooddoctor@medicine.com", address: "ul. Ciechocińska 133, Krakow", md: "Dentist", experience: "2 years", db:"01.01.1991", wp:"https://wa.me/10000000001", mail:"mailto:gooddoctor@medicine.com", call:"+1(000)-0000001"),
    Contact(imageName: "doc2", name: "Benedykt Stefek", phone: "tel:+1(000)-0000002", email: "dermatologist@medicine.com", address: "ul. Skrzyszowska 182, Jastrzębie-Zdrój", md: "Dermatologist", experience: "1 year", db:"02.02.1992", wp:"https://wa.me/10000000002", mail:"mailto:dermatologist@medicine.com", call:"+1(000)-0000002"),
    Contact(imageName: "doc3", name: "Kasandra Otylia", phone: "tel:+1(000)-0000003", email: "verelogydoctor@zuimail.com", address: "ul. Żeglarska 1018, Poznań", md: "Venerelogy", experience: "5 years", db:"03.03.1993", wp:"https://wa.me/10000000003", mail:"mailto:verelogydoctor@zuimail.com", call:"+1(000)-0000003"),
    Contact(imageName: "doc4", name: "Jakub Brygida", phone: "tel:+1(000)-0000004", email: "therapistmd@medicine.com", address: "ul. Zamenhofa Ludwika 162, Olsztyn", md:"Therapist", experience: "10 years", db:"22.03.1976", wp:"https://wa.me/10000000004", mail:"mailto:therapistmd@medicine.com", call:"1(000)-0000004"),
    Contact(imageName: "doc5", name: "Teodozja Patryk", phone: "tel:+1(000)-0000005", email: "psydoctor0@medicine.com", address: "ul. Władysława IV 98, Gdynia", md:"Psychologist", experience: "1 month", db:"22.03.1976", wp:"https://wa.me/10000000005", mail:"mailto:psydoctor0@medicine.com", call:"+1(000)-0000005"),
    Contact(imageName: "doc6", name: "Weronika Wisław", phone: "tel:+1(000)-0000006", email: "doctortherapist@medicine", address: "ul. 1-go Maja 46, Łochów", md: "Therapist for childrens", experience: "3 years", db: "22.03.1976", wp:"https://wa.me/10000000006", mail:"mailto:doctortherapist@medicine", call: "+1(000)-0000006")
]
