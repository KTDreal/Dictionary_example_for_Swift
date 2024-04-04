public struct DictionaryExample {
    public private(set) var text = "Hello, World!"

    public func run() {
        var soldier:[String: Int] = [:] //soldiers: Key - name, Value - salary
        var department:[String:String] = ["Minsk Dep. №1":"Central str.", "Brest Dep.":"Solnechnaya str.", "Grodno Dep.":"Pogranichnaya str.", "Baranovichi Dep.":"Komsomolskaya str."] //department: Key - name, Value - position
        var isRunning = true

        while(isRunning)
        {

            print("""
                
                Choose an option:\n
                1. Add to dictionary
                2. Count elements in dictionary
                3. Print value by key
                4. Print dictionary
                5. Change element in dictionary
                6. Sort dictionary
                7. Delete element from dictionary
                8. Delete all elements in dictionary
                9. Exit App
                """)
            
            var input = 0;
            if let choice = Int(readLine() ?? "") {
                input = choice
            } else {
                print("Invalid Choice!\n")
                continue;
            }
                    
            switch input{
            case 1:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        print("Enter the key for Soldier dictionary: ")
                        let key = readLine()!
                        if !soldier.keys.contains(key) {
                            print("Enter the value for key \(key): ")
                            if let value = Int(readLine() ?? ""), value >= 0 {
                                soldier[key] = value
                                print("Operation done successfully!\n")
                            }
                            else{
                                print("The value must be a number higher or equal to 0\n")
                            }
                        }
                        else{
                            print("The key already exists: \(key)\n")
                        }
                        break;
                    case 2:
                        print("Enter the key for Department dictionary: ")
                        let key = readLine()!
                        if !department.keys.contains(key) {
                            print("Enter the value for key \(key): ")
                            if let value = readLine(), value != "" {
                                department[key] = value
                                print("Operation done successfully!\n")
                            }
                            else{
                                print("The value can't be empty\n")
                            }
                        }
                        else{
                            print("The key already exists: \(key)\n")
                        }
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 2:
                var count = 0
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        count = soldier.count
                        print("The number of elements in soldier dictionary: \(count) \n")
                        break;
                    case 2:
                        count = department.count
                        print("The number of elements in department dictionary: \(count)\n")
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 3:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        print("Enter the key from Soldier dictionary: ")
                        let key = readLine()!
                        if soldier.keys.contains(key) {
                            print("The value for key \(key) is \(soldier[key] ?? 0)\n")
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    case 2:
                        print("Enter the key from Department dictionary: ")
                        let key = readLine()!
                        if department.keys.contains(key) {
                            print("The value for key \(key) is \(department[key] ?? "")\n")
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 4:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        let keys = soldier.keys
                        for key in keys{
                            print("""
                            The key: \(key) and the value: \(soldier[key] ?? 0)
                            """)
                        }
                        print("\n")
                        break;
                    case 2:
                        let keys = department.keys
                        for key in keys{
                            print("""
                            The key: \(key) and the value: \(department[key] ?? "")
                            """)
                        }
                        print("\n")
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 5:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        print("Enter the key from Soldier dictionary to edit value: ")
                        let key = readLine()!
                        if soldier.keys.contains(key) {
                            print("The current value for \(key) is \(soldier[key] ?? 0)")
                            print("Enter the new value for key \(key): ")
                            if let value = Int(readLine() ?? ""), value >= 0 {
                                soldier[key] = value
                                print("Operation done successfully!\n")
                            }
                            else{
                                print("The value must be a number higher or equal to 0\n")
                            }
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    case 2:
                        print("Enter the key from Department dictionary to edit value: ")
                        let key = readLine()!
                        if department.keys.contains(key) {
                            print("The current value for \(key) is \(department[key] ?? "")")
                            print("Enter the new value for key \(key): ")
                            if let value = readLine(), value != "" {
                                department[key] = value
                                print("Operation done successfully!\n")
                            }
                            else{
                                print("The value can't be empty\n")
                            }
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 6:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        print("Enter 1 to sort by keys, 2 - by values ")
                        if let sortByChoice = Int(readLine() ?? "") {
                            switch sortByChoice{
                            case 1:
                                let sortedKeys = soldier.keys.sorted(by: <)
                                for key in sortedKeys{
                                    print("\(key): \(soldier[key] ?? 0)")
                                }
                                print("\n")
                                break;
                            case 2:
                                let sortedDict = soldier.sorted{$0.1 < $1.1}
                                for(key, value) in sortedDict{
                                    print("\(key): \(value)")
                                }
                                print("\n")
                                break;
                            default:
                                print("Unknown Option: \(choice)\n")
                                break;
                            }
                        } else {
                            print("Invalid Choice!\n")
                            break;
                        }
                        break;
                        
                    case 2:
                        print("Enter 1 to sort by keys, 2 - by values ")
                        if let sortByChoice = Int(readLine() ?? "") {
                            switch sortByChoice{
                            case 1:
                                let sortedKeys = department.keys.sorted(by: <)
                                for key in sortedKeys{
                                    print("\(key): \(department[key] ?? "")")
                                }
                                print("\n")
                                break;
                            case 2:
                                let sortedDict = department.sorted{$0.1 < $1.1}
                                for(key, value) in sortedDict{
                                    print("\(key): \(value)")
                                }
                                print("\n")
                                break;
                            default:
                                print("Unknown Option: \(choice)\n")
                                break;
                            }
                        } else {
                            print("Invalid Choice!\n")
                            break;
                        }
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 7:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        print("Enter the key from Soldier dictionary to delete element: ")
                        let key = readLine()!
                        if soldier.keys.contains(key) {
                            soldier.removeValue(forKey: key)
                            print("Operation done successfully!\n")
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    case 2:
                        print("Enter the key from Department dictionary to delete element: ")
                        let key = readLine()!
                        if department.keys.contains(key) {
                            department.removeValue(forKey: key)
                            print("Operation done successfully!\n")
                        }
                        else{
                            print("There is no such key: \(key)\n")
                        }
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 8:
                print("Enter 1 for 1st dictionary or 2 for 2nd one")
                if let choice = Int(readLine() ?? "") {
                    switch choice{
                    case 1:
                        soldier.removeAll()
                        print("Elements removed successfully from soldier Dictionary\n")
                        break;
                    case 2:
                        department.removeAll()
                        print("Elements removed successfully from department Dictionary\n")
                        break;
                    default:
                        print("Unknown Option: \(choice)\n")
                        break;
                    }
                } else {
                    print("Invalid Choice!\n")
                    break;
                }
                break;
            case 9:
                isRunning = false
                break;
            default:
                print("Unknown Option: \(input)\n")
                break;
            }
        }
    }
}
