import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Uygulama başlığı
                Text("Hoş Geldiniz!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)

                // Açıklama metni
                Text("Hızlı ve güvenilir hizmetler sunuyoruz. Hadi keşfetmeye başlayın!")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                // Kart görünümü
                HStack(spacing: 20) {
                    ServiceCard(title: "Rezervasyon Yap", color: .green, icon: "calendar")
                    ServiceCard(title: "Hizmetlerimiz", color: .purple, icon: "star")
                }

                HStack(spacing: 20) {
                    ServiceCard(title: "Destek Al", color: .orange, icon: "message")
                    ServiceCard(title: "Hesabım", color: .pink, icon: "person.crop.circle")
                }
                
                Spacer()
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

// Hizmet kartı bileşeni
struct ServiceCard: View {
    var title: String
    var color: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .padding()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.bottom, 10)
        }
        .frame(width: 150, height: 150)
        .background(color)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
