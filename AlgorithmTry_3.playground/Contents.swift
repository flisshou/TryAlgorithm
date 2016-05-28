import UIKit
//=============ARRAY===================//
var arrayA = [0, 0, 0, 0, 1, 1, 1, 1]
var arrayB = [0, 0, 1, 1, 1, 0, 0, 0]
var arrayC = [1, 1, 1, 0, 0, 0, 0, 0]
var arrayD = [0, 1, 1, 1, 1, 1, 0, 0]
var arrayResult = [""]
var arrayColumnTotal: [Int] = [arrayA[0]+arrayB[0]+arrayC[0]+arrayD[0],
    arrayA[1]+arrayB[1]+arrayC[1]+arrayD[1],
    arrayA[2]+arrayB[2]+arrayC[2]+arrayD[2],
    arrayA[3]+arrayB[3]+arrayC[3]+arrayD[3],
    arrayA[4]+arrayB[4]+arrayC[4]+arrayD[4],
    arrayA[5]+arrayB[5]+arrayC[5]+arrayD[5],
    arrayA[6]+arrayB[6]+arrayC[6]+arrayD[6],
    arrayA[7]+arrayB[7]+arrayC[7]+arrayD[7],
]

//findMinimumElement()

//===========FUNCTION=================//

func findMinimumElement(){
    var minimumElement = arrayColumnTotal.minElement()!
    var minIndex = arrayColumnTotal.indexOf(minimumElement)!
    
    if minimumElement != 0{
        if arrayA[minIndex]+arrayB[minIndex]+arrayC[minIndex]+arrayD[minIndex] == minimumElement{
            let availableA = checkAvailableWorker(arrayA, relatedIndex: minIndex, toInsertName: "A")
            let availableB = checkAvailableWorker(arrayB, relatedIndex: minIndex, toInsertName: "B")
            let availableC = checkAvailableWorker(arrayC, relatedIndex: minIndex, toInsertName: "C")
            let availableD = checkAvailableWorker(arrayD, relatedIndex: minIndex, toInsertName: "D")
        }
    }else{
        
    }
}

func checkAvailableWorker(arrayName: [Int], relatedIndex: Int, toInsertName: String) -> Bool{
    if arrayName[relatedIndex] != 0{
        arrayResult[relatedIndex] = "\(toInsertName)"
        checkConstantTime(arrayName, currentIndex: relatedIndex, toAppendName: toInsertName)
        arrayColumnTotal[relatedIndex] -= 1
        return true
    }else{
        return false
    }
}

func checkConstantTime(arrayName: [Int], currentIndex: Int, toAppendName: String){
    for var i = currentIndex + 1; i < arrayName.count; i = i+1{
        if arrayName[i] == arrayName[currentIndex]{
            arrayResult.append("\(toAppendName)")
            arrayColumnTotal[i] -= 1
        }
    }
}

print(arrayColumnTotal)




