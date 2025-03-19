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
                        Toggle("Sombre", isOn: $isDarkMode)
                            .toggleStyle(SwitchToggleStyle(tint: .blue))
                        Text(isDarkMode ? "Sombre" : "Clair")
                            .foregroundColor(isDarkMode ? .white : .primary)
                            .padding(.trailing, 10)
                    }
                }

                Section {
                    Button(action: {
                        // Logic for logout
                    }) {
                        Text("Déconnexion")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationBarTitle("Paramètres", displayMode: .inline)
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            SettingsView()
        }
    }
}
