import SwiftUI

struct ProfileView: View {
    
    @State private var displayName = "juliana <3"
    @State private var userName = "jules"
    @State private var bio = "iOS dev | coffee lover <3"
    
    // Interest tag array. Will be creating many more later on.
    @State private var selectedInterests = [
        "Coffee",
        "Gaming",
        "Reading",
        "Painting",
        "Fall",
        "Halloween",
        "Watching movies"
    ]
    
    var body: some View {
        ZStack {
            // Adding the entire layout's background
            Color("backgroundmain")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 12){
                    
                    HStack {
                        
                        Text(userName)
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
                                    Image("profilepic")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 88, height: 88)
                                        .foregroundStyle(.gray)
                                        .clipShape(Circle())
                                    
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
                                    Text(displayName)
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
                                
                                Text("@\(userName)")
                                    .font(.system(size: 12, weight: .medium, design: .rounded))
                                    .foregroundColor(Color("profiletexts"))
                                
                                
                                VStack {
                                    Text(bio)
                                        .font(.system(size: 12, weight: .medium, design: .rounded))
                                        .foregroundColor(Color("biotext"))
                                }
                                .padding(.vertical, 5)
                                // Creating the Bits, Followers, and Following counts.
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
                                .frame(height: 40)
                                .padding(.leading, -22)
                                
                            } //Closes profile-info VStack
                            .padding(.leading, 10)
                            
                            Spacer()
                        } //Closes profile-picture + info HStack
                        .padding(.leading, 20)
                    } //Closes profile section VStack
                    
                    // Will be creating the interest tag section here.
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(selectedInterests, id: \.self) { interest in
                                
                                // Tag Capsule
                                Text(interest)
                                    .font(.system(size: 11, weight: .medium, design: .rounded))
                                    .foregroundColor(Color("biotext"))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 7)
                                    .background(
                                        Capsule()
                                            .fill(Color("buttonback"))
                                    )
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
