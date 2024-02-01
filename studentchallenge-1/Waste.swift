//
//  Waste.swift
//  studentchallenge-1
//
//  Created by Marcell JW on 25/01/24.
//

import Foundation

enum WasteCategory {
    case plastic
    case glass
    case metal
    case paper
    case food
    case general
}


struct Waste: Hashable {

    var nameEN: String
    var nameKR: String
    var imageName: String
    var category: WasteCategory
    
    init(nameEN: String, nameKR: String, imageName: String, category: WasteCategory) {
        self.nameEN = nameEN
        self.nameKR = nameKR
        self.imageName = imageName
        self.category = category
    }
    
    static func == (lhs: Waste, rhs: Waste) -> Bool {
        return lhs.nameEN == rhs.nameEN && lhs.nameKR == rhs.nameKR
    }
    
}

extension Waste {
    
    // MARK: I contribute most of my designs from an
    // Image by pch.vector on Freepik
    
    static let BananaPeel = Waste(nameEN: "Banana Peel", nameKR: "바나나 껍질", imageName: "BananaPeel", category: .food)
    static let MelonRind = Waste(nameEN: "Melon Rind", nameKR: "멜론 껍질", imageName: "MelonRind", category: .food)
    static let CardboardBox = Waste(nameEN: "Cardboard Box", nameKR: "판지상자", imageName: "CardboardBox", category: .paper)
    static let Newspaper = Waste(nameEN: "Newspaper", nameKR: "신문", imageName: "Newspaper", category: .paper)
    static let MetalCan = Waste(nameEN: "Metal Can", nameKR: "금속 캔", imageName: "MetalCan", category: .metal)
    static let SodaCan = Waste(nameEN: "Soda Can", nameKR: "탄산 캔", imageName: "SodaCan", category: .metal)
    static let BrownEggShell = Waste(nameEN: "Brown Egg Shell", nameKR: "계란 껍질", imageName: "BrownEggShell", category: .general)
    static let SaltedEggShell = Waste(nameEN: "Salted Egg Shell", nameKR: "계란 껍질", imageName: "SaltedEggShell", category: .general)
    static let CrushedBottleWhite = Waste(nameEN: "Crushed Bottle White", nameKR: "플라스틱병", imageName: "CrushedBottleWhite", category: .plastic)
    static let CrushedBottleGreen = Waste(nameEN: "Plastic Bottle", nameKR: "플라스틱병", imageName: "CrushedBottleGreen", category: .plastic)
    static let PlasticBottleWhite = Waste(nameEN: "Plastic Bottle", nameKR: "플라스틱병", imageName: "PlasticBottleWhite", category: .plastic)
    static let PlasticBottleGreen = Waste(nameEN: "Plastic Bottle", nameKR: "플라스틱병", imageName: "PlasticBottleGreen", category: .plastic)
    
    static let allSingleWaste = [
        BananaPeel, MelonRind, CardboardBox, Newspaper, MetalCan, SodaCan,
        BrownEggShell, SaltedEggShell, CrushedBottleWhite, CrushedBottleGreen,
        PlasticBottleWhite, PlasticBottleGreen
    ]
    
    static let BananaPeels = Waste(nameEN: "Banana Peels", nameKR: "바나나 껍질들", imageName: "BananaPeels", category: .food)
    static let EggShells = Waste(nameEN: "Egg Shells", nameKR: "계란 껍질들", imageName: "EggShells", category: .general)
    static let FishBones = Waste(nameEN: "Fish Bones", nameKR: "생선 가시들", imageName: "FishBones", category: .general)
    static let MelonSkins = Waste(nameEN: "Melon Rinds", nameKR: "멜론 껍질들", imageName: "MelonSkins", category: .food)
    
    static let allClusterWaste = [
        BananaPeels, EggShells, FishBones, MelonSkins
    ]
        
}

class WasteBin {
    var name: String
    var imageName: String
    var wasteCategory: WasteCategory
    
    init(name: String, imageName: String, wasteCategory: WasteCategory) {
        self.name = name
        self.imageName = imageName
        self.wasteCategory = wasteCategory
    }
    
}

extension WasteBin {
    static let PaperBin = Waste(nameEN: "Paper Bin", nameKR: "종이류", imageName: "PaperBin", category: .paper)
    static let PlasticBin = Waste(nameEN: "Plastic Bin", nameKR: "플라스틱류", imageName: "PlasticBin", category: .plastic)
    static let GlassBottleBin = Waste(nameEN: "Class Bottle Bin", nameKR: "유리병", imageName: "", category: .glass)
    static let MetalCanBin = Waste(nameEN: "Metal Bin", nameKR: "켄류", imageName: "MetalCanBin", category: .metal)
    static let GeneralWasteBin = Waste(nameEN: "General Waste Bin", nameKR: "일반쓰레기통", imageName: "GeneralWasteBin", category: .general)
    static let FoodWasteBin = Waste(nameEN: "Food Waste Bin", nameKR: "음식물 쓰레기", imageName: "", category: .food)
}
