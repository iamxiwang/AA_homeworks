function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }

// mysteryScoping1()

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }

// mysteryScoping2()

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }

//   mysteryScoping3()

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  mysteryScoping4()

//   function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
//   }

//   mysteryScoping5()

function madLib(verb, adjective, noun){
    console.log(`we shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
};

madLib('make', 'best', 'guac');

function isSubstring(searchString, subString){
    let arr1 = searchString.split(" ");
    return arr1.includes(subString);
};
console.log(isSubstring("time to program", "time"))

console.log(isSubstring("Jump for joy", "joys"))