Array.prototype.myReduce = function(callback, initialValue){
    let acc = 0
    if (initialValue){
        acc = initialValue
    }

    for(let i = 0; i < this.length; i++){
        acc += callback(this[i])

    }
    return acc 
}

let ab = [1,2,3,4]
function doubler (num){
    return num * 2
}
console.log(ab.myReduce(doubler, 0))

