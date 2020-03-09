

function callMethod(session_id, event) {
  console.log("function called; event:", event);
  // var session_id = event.target.getAttribute("data-myvalue");
  var stripe = Stripe('pk_test_9wmCyJg0ob3I19KkAvNMGnfd00U8sWfIil');

  console.log("SESSION-ID", session_id);

  stripe.redirectToCheckout({
    sessionId: session_id
  }).then(function (result) {
    console.log("ERROR");
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
