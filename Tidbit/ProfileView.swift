import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            // Adding the entire layout's background
            Color("backgroundmain")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 12){
                    
                    HStack {
                        
                        Text("userName")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                        
                        Spacer()
                        
                        HStack(spacing: 16) {
                            Button {
                            } label: {
                                Image(systemName: "bell")
                                    .foregroundStyle(Color.black)
                            }
                            Button {
                            } label: {
                                Image(systemName: "gearshape")
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                    .padding(.horizontal, 17)
                    
                    VStack(spacing: 10) {
                        
                        HStack {
                            //Creating the profile picture icon
                            Circle()
                                .fill(Color("profilering"))
                                .frame(width: 92, height: 92)
                                .overlay{
                                    Circle()
                                        .fill(Color("backgroundmain"))
                                        .frame(width: 90, height: 90)
                                }
                                .overlay{
                                    Image(systemName: "person.crop.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 88, height: 88)
                                        .foregroundStyle(.gray)
                                    
                                }
                            // Creating the plus button for adding to your story.
                                .overlay(alignment: .bottomTrailing) {
                                    Button {
                                    } label: {
                                        Circle()
                                            .fill(Color("postbutton"))
                                            .frame(width: 20, height: 20)
                                            .overlay{
                                                Image(systemName: "plus")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .foregroundStyle(Color("backgroundmain"))
                                                    .frame(width: 14, height: 14)
                                            }
                                            .offset(x: -4, y: -5)
                                            .shadow(
                                                color: .black.opacity(0.2),
                                                radius: 3,
                                                x: 0,
                                                y: 2
                                            )
                                    }
                                }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                HStack {
                                    // Creating the Profile Header Section which includes the display name, username, bio, and edit profile button.
                                    Text("DisplayName")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundColor(Color("biotext"))
                                    
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Button("Edit Profile") {
                                            
                                        }
                                        .font(.system(size: 12, weight: .light, design: .rounded))
                                        .foregroundStyle(Color.black)
                                        .background(
                                            Capsule()
                                                .fill(Color("buttonback"))
                                                .frame(width: 66, height: 25, alignment: .center)
                                        )
                                    }
                                    
                                }
                                .padding(.trailing, 7)
                                
                                Text("@userName")
                                    .font(.system(size: 12, weight: .medium, design: .rounded))
                                    .foregroundColor(Color("profiletexts"))
                                
                                
                                VStack {
                                    Text("User bio. These are my interests. I am name! <3")
                                        .font(.system(size: 12, weight: .medium, design: .rounded))
                                        .foregroundColor(Color("biotext"))
                                }
                                .padding(.vertical, 5)
                                
                                Spacer()
                            }
                            .padding(.leading, 10)
                            Spacer()
                            
                            
                            // Creating the Bits amount (how many posts they have), the Follower count, and the Following count.
                            
                            
                        }
                        .padding(.leading, 20)
                        
                        HStack(spacing: 0) {
                            Spacer()
                            
                            // Creating the Bits amount (how many posts they have), the Follower count, and the Following count.
                            HStack(spacing: 0) {
                                
                                VStack(spacing: 2) {
                                    
                                    Text("265")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.black)
                                    
                                    Text("Bits")
                                        .font(.system(size: 12, weight: .light, design: .rounded))
                                        .foregroundStyle(Color("profiletexts"))
                                    
                                }
                                .frame(maxWidth: .infinity)
                                
                                Divider()
                                    .frame(height: 30)
                                
                                VStack(spacing: 2) {
                                    Text("12.4K")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.black)
                                    
                                    Text("Followers")
                                        .font(.system(size: 12, weight: .light, design: .rounded))
                                        .foregroundStyle(Color("profiletexts"))
                                    
                                }
                                .frame(maxWidth: .infinity)
                                
                                Divider()
                                    .frame(height: 30)
                                
                                VStack(spacing: 2) {
                                    Text("302")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundStyle(.black)
                                    
                                    Text("Following")
                                        .font(.system(size: 12, weight: .light, design: .rounded))
                                        .foregroundStyle(Color("profiletexts"))
                                    
                                }
                                .frame(maxWidth: .infinity)
                            }
                            .frame(width: 300, height: 40)
                        }
                        .padding(.trailing, 11)
                        .offset(y: -20)
                    }
                    
                    // Will be creating the interest tag section here.
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
