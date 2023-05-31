//
//  ContentView.swift
//  login
//
//  Created by cassio on 28/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
           Color(#colorLiteral(red: 0.8908282518, green: 0.4542962909, blue: 0.6321991682, alpha: 1))
            
                .edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 700{
                
                Home()
            }
            else{
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Home()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 0
    
    var body : some View{
        
        VStack{
            
            Image("logo")
                .resizable()
                .frame(width: 390, height: 260)
            
            HStack{
                
                Button(action: {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        
                        self.index = 0
                    }
                    
                }) {
                    
                    Text("Acessar")
                        .foregroundColor(self.index == 0 ? .black : .blue)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    
                }.background(self.index == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                
                Button(action: {
                    
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        
                        self.index = 1
                    }
                    
                }) {
                    
                    Text("Nova Conta")
                        .foregroundColor(self.index == 1 ? .black : .blue)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                    
                }.background(self.index == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                
            }.background(Color.black.opacity(0.1))
                .clipShape(Capsule())
                .padding(.top, 25)
            
            if self.index == 0{
                
                Login()
            }
            else{
                
                SignUp()
            }
            
            if self.index == 0{
                
                Button(action: {
                    
                }) {
                    
                    Text("Esqueceu a senha?")
                        .foregroundColor(.black)
                    
                }
                .padding(.top, 20)
            }
            
            HStack(spacing: 15){
                
                Color.white.opacity(0.7)
                    .frame(width: 35, height: 1)
                
                Text("ou")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Color.white.opacity(0.7)
                    .frame(width: 35, height: 1)
                
            }
            .padding(.top, 10)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("fb")
                        .renderingMode(.original)
                        .padding()
                    
                }.background(Color.white)
                    .clipShape(Circle())
                
                Button(action: {
                    
                }) {
                    
                    Image("google")
                        .renderingMode(.original)
                        .padding()
                    
                }.background(Color.white)
                    .clipShape(Circle())
                    .padding(.leading, 25)
            }
            .padding(.top, 10)
            
        }
        .padding()
    }
}

struct Login : View {
    
    @State var mail = ""
    @State var pass = ""
    
    var body : some View{
        
        VStack{
            
            VStack{
                
                HStack(spacing: 15){
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Informe Email cadastrado", text: self.$mail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Senha", text: self.$pass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            
            Button(action: {
                
            }) {
                
                Text("Entrar")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                
            }.background(Color(.blue))
                .cornerRadius(8)
                .offset(y: -40)
                .padding(.bottom, -40)
                .shadow(radius: 15)
        }
    }
}

struct SignUp : View {
    
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    var body : some View{
        
        VStack{
            
            VStack{
                
                HStack(spacing: 15){
                    
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    
                    TextField("Informe Email cadastrado", text: self.$mail)
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Senha", text: self.$pass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15){
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Entrar novamente", text: self.$repass)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                    
                }.padding(.vertical, 20)
                
            }
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            
            Button(action: {
                
            }) {
                
                Text("INSCREVER-SE")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                
            }.background(
                
                Color(.blue)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        }
    }
}
