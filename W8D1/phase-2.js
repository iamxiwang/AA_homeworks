function fizzBuzz(array){
    var output = []

    for(var i=0; i<array.length; i++){
        if(array[i] % 3 === 0 || array[i] % 5 === 0 && !(array[i] % 3 === 0 &&array[i] % 5 === 0))
        output.push(array[i])
    };
};

function isPrime(num){
    if (num < 2){
        return false
    }

    for(var i = 2; i < num; i++ ){
        if(num%i===0){
            return false
        }
    }

    return true
}

function sumOfNPrimes(n){
    var sum = 0
    var count = 0
    var num = 2
    while(count < n){
        if(isPrime(num)){
            count++
            sum += num
        }
        num++   
    }
    return sum
}

