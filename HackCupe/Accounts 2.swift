import Foundation

class Accounts: Codable, ObservableObject {
    var accounts: [Account 2] = []
    
    init() {
        var a1 = Account2()
        a1.username = "Admin1"
        a1.password = "aPass1"
        var a2 = Account()
        a2.username = "Admin2"
        a2.password = "aPass2"
        var a3 = Account()
        a3.username = "Admin3"
        a3.password = "aPass3"
        
        accounts.insert(a1, at: 0)
        accounts.insert(a2, at: 0)
        accounts.insert(a3, at: 0)
        read()
    }
    
    func read() {
//        let data: Data
//        print("Decoding")
//
//        do {
//            let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//            let fileURL = documentsDirectory.appendingPathComponent("accounts.json")
//
//            // If file does not exist in Documents directory, copy it from the bundle
//            if !FileManager.default.fileExists(atPath: fileURL.path) {
//                if let bundleFile = Bundle.main.url(forResource: "accounts", withExtension: "json") {
//                    try FileManager.default.copyItem(at: bundleFile, to: fileURL)
//                } else {
//                    fatalError("Couldn't find accounts.json in main bundle.")
//                }
//            }
//
//            data = try Data(contentsOf: fileURL)
//        } catch {
//            fatalError("Couldn't load accounts.json")
//        }
//
//        do {
//            if let response = try? JSONDecoder().decode(Accounts.self, from: data) {
//                self.accounts = response.accounts
//            } else {
//                print("not working")
//            }
//        } catch {
//            fatalError("Couldn't parse accounts.json as Account")
//        }
    }

    func save(username: String, password: String) {
        let a = Account()
        a.username = username
        a.password = password
        accounts.insert(a, at: 0)
        
        for a in accounts {
            print("\(a.username) \(a.password)\n")
        }
//        print("Saving")
//
//        do {
//            let data = try JSONEncoder().encode(accounts)
//            let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//            let fileURL = documentsDirectory.appendingPathComponent("accounts.json")
//
//            print("HERE")
//            try data.write(to: fileURL, options: [.atomic, .completeFileProtection])
//            print(fileURL)
//        } catch {
//            print("UNABLE TO SAVE DATA")
//        }
    }
}
