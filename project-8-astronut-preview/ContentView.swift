//
//  ContentView.swift
//  project-8-astronut-preview
//
//  Created by Roro Solutions on 24/08/22.
//

import SwiftUI
//lecture-5-grid
//struct ContentView: View {
////    let layout = [
////        GridItem(.fixed(80)),
////        GridItem(.fixed(80)),
////        GridItem(.fixed(80))
////    ] //we want our data laid out in three columns exactly 80 points wide by adding this property to our view:
//
////    let layout = [
////        GridItem(.adaptive(minimum: 80)),
////    ] //That tells SwiftUI we’re happy to fit in as many columns as possible, as long as they are at least 80 points in width.
//
//    let layout = [
//        GridItem(.adaptive(minimum: 80, maximum: 120)),
//    ]// You can also specify a maximum range for even more control:
//    var body: some View {
////        ScrollView {
////            LazyVGrid(columns: layout) {
////                ForEach(0..<1000) {
////                    Text("Item \($0)")
////                }
////            }
////        }
//
//
//        /*Before we’re done, I want to briefly show you how to make horizontal grids. The process is almost identical, you just need to make your ScrollView work horizontally, then create a LazyHGrid using rows rather than columns*/
////        ScrollView(.horizontal) {
////            LazyHGrid(rows: layout) {
////                ForEach(0..<1000) {
////                    Text("Item \($0)")
////                }
////            }
////        }
//    }
//}

//lecture-4-codable
//struct User: Codable {
//    let name: String
//    let address: Address
//}
//
//struct Address: Codable {
//    let street: String
//    let city: String
//}
//
//struct ContentView: View {
//    var body: some View {
//        Button("Decode JSON") {
//            let input = """
//            {
//                "name": "Taylor Swift",
//                "address": {
//                    "street": "555, Taylor Swift Avenue",
//                    "city": "Nashville"
//                }
//            }
//            """
//
//            let data = Data(input.utf8)
//            let decoder = JSONDecoder()
//            if let user = try? decoder.decode(User.self, from: data) {
//                print(user.address.street)
//            }
//        }
//    }
//}

//lecture-3-navigation link
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            NavigationLink {
//                Text("Detail View")
//            } label: {
//                Text("Hello, world!")
//                    .padding()
//            }
//            .navigationTitle("SwiftUI")
//        }
//    }
//}


//lecture-2-lazyVstack with scroll view
//struct ContentView: View {
//    var body: some View {
////        ScrollView {
////            VStack(spacing: 10) {
////                ForEach(0..<100) {
////                    Text("Item \($0)")
////                        .font(.title)
////                }
////            }
////            .frame(maxWidth: .infinity) // making whole screen scrollable
//             /*
//              when we add views to a scroll view they get created immediately for whole screen for example here we can see till tem 12 withot schrolling but view for all 100 alreday creaated which is redundant and not efiicient so we came with solution of lazyVsatck it will only craete view h\which is viewable on screen like till itwm 12 but when we scroll it will create more
//              */
//        ScrollView {
//            LazyVStack(spacing: 10) {
//                ForEach(0..<100) {
//                    Text("Item \($0)")
//                        .font(.title)
//                }
//            }
//            .frame(maxWidth: .infinity)
//
//        }
//    }
//}


// lecture-1-image and geometryRedaer
//struct ContentView: View {
//    var body: some View {
////       Image("Example") //Even in the preview you can see that’s way too big for the available space
//
////        Image("Example")
////            .frame(width: 300, height: 300) //The image view’s frame has been set correctly, but the content of the image is still shown as its original size.
//
////        Image("Example")
////            .frame(width: 300, height: 300)
////            .clipped() //bcz of this some part of image will fet cropeed to fit into our frame
//
////        Image("Example")
////            .resizable() // now image is resiged but image squashed(intially content of image is square but not it is not like that
////            .frame(width: 300, height: 300)
//
////        Image("Example")
////            .resizable()
////            .scaledToFit() //image will fit inside the container even if that means leaving some parts of the view empty
////            .frame(width: 300, height: 300)
//
////        Image("Example")
////            .resizable()
////            .scaledToFill() //view will have no empty parts even if that means some of our image lies outside the container
////            .frame(width: 300, height: 300)
//
//        /* All this works great if we want fixed-sized images, but very often you want images that automatically scale up to fill more of the screen in one or both dimensions. That is, rather than hard-coding a width of 300, what you really want to say is “make this image fill 80% of the width of the screen. then the swiftui come sup with solution: geometryReader”
//         */
//
////        GeometryReader { geo in
////            Image("Example")
////                .resizable()
////                .scaledToFit()
////                .frame(width: geo.size.width * 0.8, height: 300) //we could make an image that’s 80% the width of the screen, with a fixed height of 300: You can even remove the height from the image. it  understands how the target height of the image will be proportional to the target width.
////
////        }
//
//
////        //If you ever want to center a view inside a GeometryReader, rather than aligning to the top-left corner, add a second frame that makes it fill the full space of the container, like this:
//        GeometryReader { geo in
//            Image("Example")
//                .resizable()
//                .scaledToFit()
////                .frame(width: geo.size.width * 0.8)
//                .frame(width: geo.size.width, height: geo.size.height)
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
