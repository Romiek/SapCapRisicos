const cds = require('@sap/cds')
module.exports = async function (){

  // Add some discount for overstocked books
  this.after ('READ','Risicos', each => {
    if (each.omschrijving === 'brosse materialen.'){
        each.omschrijving += ` -- 11% discount!`
    }  
  })
}