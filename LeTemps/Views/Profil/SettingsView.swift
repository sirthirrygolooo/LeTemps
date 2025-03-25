import SwiftUI

struct SettingsView: View {
    @State private var identifier: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var isDarkMode: Bool = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("COMPTE")) {
                    TextField("Identifiant", text: $identifier)
                    TextField("Prénom", text: $firstName)
                    TextField("Nom", text: $lastName)
                    TextField("Adresse mail", text: $email)
                }

                Section(header: Text("APPARENCE")) {
                    HStack {
                        Text("Thème :")
                        Spacer()
                        
                        Toggle(isDarkMode ? "Sombre":"Clair", isOn: $isDarkMode)
                            .toggleStyle(SwitchToggleStyle(tint: .blue))

                    }
                }.shadow(radius: 5)

                Section {
                    Button(action: {
                        
                    }) {
                        Text("Déconnexion")
                            .foregroundColor(.blue)
                    }
                }.shadow(radius: 5)
            }
            .navigationBarTitle("Paramètres", displayMode: .large)
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }.shadow(radius: 5)
    }
}

#Preview {
    SettingsView()
}
