//
//  ForEachBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 04/02/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let dados: [String] = ["Opa","Olá","Fui","Legal","Fui"]
    
        
   
    var body: some View {
        
	VStack{

        ForEach(data.indices){ index in
            
            Text("\(dados[index]): \(index)")
            
        }
	 ForEach(0..<10){ index in
		Circle()
		    .frame(height: 50)
		
	    }
	}
        
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEachBootcamp()
    }
}
