import SwiftUI

struct MainMenu: View {
    @State private var navigateToGame = false
    @State private var pulseTitle = false

    var body: some View {
        NavigationStack {
            ZStack {
                background
                VStack(spacing: 0) {
                    Spacer()
                    titleSection
                    Spacer()
                    buttonStack
                    Spacer(minLength: 60)
                    footerNote
                }
                .padding(.horizontal, 32)
            }
            .navigationDestination(isPresented: $navigateToGame) {
                GameManager()
                    .navigationTitle("Trivia")
            }
        }
    }

    private var background: some View {
        LinearGradient(
            colors: [
                Color(red: 0.06, green: 0.06, blue: 0.14),
                Color(red: 0.10, green: 0.04, blue: 0.22)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }

    
    private var buttonStack: some View {
        VStack(spacing: 16) {
            MenuButton(
                title: "Start Game",
                icon: "play.fill",
                style: .primary
            ) {
                navigateToGame = true
            }

            
        }
    }

    private var footerNote: some View {
        Text("Questions sourced from opentdb.com")
            .font(.system(size: 11, design: .monospaced))
            .foregroundColor(.white.opacity(0.20))
    }
}

private enum MenuButtonStyle { case primary, secondary }

#Preview {
    MainMenu()
}
