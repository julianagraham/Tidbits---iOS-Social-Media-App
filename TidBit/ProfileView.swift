import SwiftUI

// Creating Lately post display for image + when it was uploaded
struct LatelyPost {
    let imageName: String
    let time: String
}

// Creating Currently Card blueprints
struct CurrentlyItem {
    let category: String
    let value: String
    let icon: String
}

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
    
    // defining lately posts
    let latelyPosts = [
        LatelyPost(imageName: "cafe", time: "1d ago"),
        LatelyPost(imageName: "sunset", time: "2d ago"),
        LatelyPost(imageName: "flowers", time: "3d ago"),
        LatelyPost(imageName: "dog", time: "4d ago"),
        LatelyPost(imageName: "lattes", time: "5d ago")
    ]
    
    // defining currently items
    let currentlyItems = [
        CurrentlyItem(
            category: "Listening to:",
            value: "Olivia Rodrigo",
            icon: "headphones"
        ),
        
        CurrentlyItem(
            category: "Drinking:",
            value: "Iced Vanilla Latte",
            icon: "cup.and.saucer.fill"
        ),
        CurrentlyItem(
            category: "Playing:",
            value: "Stardew Valley",
            icon: "gamecontroller")
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
                                .frame(width: 94, height: 94)
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
                    
                        VStack(spacing: 5) {
                            
                            HStack {
                                // Creating the lately scroll section, showing the latest posts
                                Text("Lately ⟡")
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                
                                Spacer()
                                    
                                Button("see all >") {
                                }
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                                .foregroundColor(Color("profiletexts"))
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(latelyPosts, id: \.imageName) { post in
                                        
                                        VStack {
                                            Image(post.imageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 70, height: 80)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                            
                                            Text(post.time)
                                                .font(.system(size: 11))
                                                .foregroundStyle(Color("profiletexts"))
                                        }
                                    }
                                }
                                .padding(.horizontal, 10)
                            }
                        }
                    // Creating the Currently section, What user is currently doing.
                    VStack(spacing: 8) {
                        HStack{
                            Text("Currently")
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                
                            Spacer()
                            
                            Text("Edit")
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                                .foregroundStyle(Color("profiletexts"))
                            }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                
                                ForEach(currentlyItems, id: \.category) { item in
                                    HStack {
                                        Image(systemName: item.icon)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxWidth: 13, maxHeight: 13)
                                        
                                        VStack(alignment: .leading) {
                                            Text(item.category)
                                            Text(item.value)
                                        }
                                        .font(.system(size: 10, weight: .medium, design: .rounded))
                                        .foregroundStyle(Color("biotext"))
                                    }
                                    .frame(width: 120, height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color("buttonback"))
                                    )
                                    }
                                }
                            }
                        
                        }
                    .padding(.horizontal, 10)
                    .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                        
            }
        }
    }
}

#Preview {
    ProfileView()
}
