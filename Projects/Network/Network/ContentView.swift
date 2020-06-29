//
//  ContentView.swift
//  Network
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var image: Image?

    var body: some View {
        VStack {
            if image != nil {
                image!
            }
            Button("Get image") {
                self.loadData()
            }
        }.onAppear {
            self.loadData()
        }
    }

    private func loadData() {

        //URLSession

        //Get a session
        let session = URLSession.shared

        //Get an url
        guard let url = URL(string: "https://developer.apple.com/home/images/tile-ipados-14/ipados-14-large_2x.png") else {
            return
        }

        //Optionaly, get URLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "POST"

        //Create a task
        let task = session.dataTask(with: url) { (data, response, error) in
            //Manage the result
            guard error == nil else { return }
            guard let data = data else { return }
            guard let image = UIImage(data: data) else { return }

            // Dispatch on UI thread the UI work
            DispatchQueue.main.async {
                self.image = Image(uiImage: image)
            }
        }

        //Execute the task
        task.resume()

        if let data = encodePodcasts() {
            print(String(data: data, encoding: .utf8)!)
            if let podcasts = decodePodcast(from: data) {
                print(podcasts)
            }

        }
    }

    private func encodePodcasts() -> Data? {

        let podcast1 = Podcast(title: "My podcast", author: "Me", duration: 40)
        let podcast2 = Podcast(title: "Your podcast", author: "You", duration: 40)
        let podcasts = [podcast1, podcast2]

        let encoder = JSONEncoder()
        let data = try? encoder.encode(podcasts)

        return data
    }

    private func decodePodcast(from data: Data) -> [Podcast]? {

        let decoder = JSONDecoder()
        let podcasts = try? decoder.decode([Podcast].self, from: data)
        return podcasts
    }

}

struct Podcast: Codable {
    let title: String
    let author: String
    let duration: Double
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
