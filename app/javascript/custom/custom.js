function callMethod(session_id) {
  console.log("function called")
  var session_id = this.getAttribute("data-myvalue")
  var stripe = Stripe('pk_test_9wmCyJg0ob3I19KkAvNMGnfd00U8sWfIil');
  stripe.redirectToCheckout({
    sessionId: session_id
  }).then(function (result) {
  console.log("ERROR")
});
  }

// function callMethod(session_id){
// var stripe = Stripe('pk_test_9wmCyJg0ob3I19KkAvNMGnfd00U8sWfIil');
// stripe.redirectToCheckout({
//     sessionId: session_id
// }).then(function (result) {
//   console.log("ERROR")
// });
// }
