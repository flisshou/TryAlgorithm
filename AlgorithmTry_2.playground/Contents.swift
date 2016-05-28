import UIKit


//1. 找到arrayColumnTotal裡最小的數值(OK)
//2. 把arrayX裡 !=0 的 X 放到arrayResult
//3. 以此類推
//            0  1  2  3  4  5  6  7

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





//已知目前索引值
//首要任務：搜尋每個arrayX裡不等於零的
/*
var firstMinElement = arrayColumnTotal.minElement()!//找到arrayColumnTotal裡的最小值->第一個出現的最小值
var firstIndex = arrayColumnTotal.indexOf(firstMinElement)!
//print("firstIndex = \(firstIndex), firstMinElement=\(firstMinElement)")
    
if firstMinElement != 0{
    if arrayA[firstIndex]+arrayB[firstIndex]+arrayC[firstIndex]+arrayD[firstIndex] == firstMinElement{
        checkAvailableEmployee(arrayA, relatedIndex: firstIndex, toInsertName: "A")
        checkAvailableEmployee(arrayB, relatedIndex: firstIndex, toInsertName: "B")
        checkAvailableEmployee(arrayC, relatedIndex: firstIndex, toInsertName: "C")
        checkAvailableEmployee(arrayD, relatedIndex: firstIndex, toInsertName: "D")
    }else{
        print("Process is not entirely right.")
        }
}else{
    print("The min is 0")
}
*/



//getNewMinimumElement()


func checkAvailableEmployee(arrayName: [Int], relatedIndex: Int, toInsertName: String){
    if arrayName[relatedIndex] != 0{
        arrayResult[relatedIndex] = "\(toInsertName)"
        //print("Current Result: array[\(relatedIndex)] = \(arrayResult)")
        refreshArrays(arrayName, updatedIndex: relatedIndex, setName: toInsertName)
        arrayColumnTotal[relatedIndex] -= 1
    }else{
        //print("\(toInsertName) is not the chosen one.")
    }
}

func refreshArrays(setArray: [Int], updatedIndex: Int, setName: String){//確認該員工有連續時段
    for var i = updatedIndex+1 ; i < setArray.count; i = i+1 {
        if setArray[i] == setArray[updatedIndex]{
            arrayResult.append("\(setName)")
            print(arrayResult)
            arrayColumnTotal[i]-=1
            print("arrayColumnTotal = \(arrayColumnTotal)")
        }else{
            
        }
    }

}

func findMinimumElement(){
    //print("Total in findMinElement scope:\(arrayColumnTotal)")
    var minimumElement = arrayColumnTotal.minElement()!
    var minIndex = arrayColumnTotal.indexOf(minimumElement)!
    
    if minimumElement != 0{
        if arrayA[minIndex]+arrayB[minIndex]+arrayC[minIndex]+arrayC[minIndex] == minimumElement{
            
        }else{
            
        }
    }else{
    
    }
}



print(arrayColumnTotal)


