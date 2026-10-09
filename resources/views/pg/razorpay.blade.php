<!DOCTYPE html>
<html>
<head>
  <title>Razorpay Payment</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

  <p>Please wait... Redirecting to payment</p>

  <form action="{{ $returnUrl }}" method="POST" id="paymentForm">
    @csrf

    <!-- Razorpay Response -->
    <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
    <input type="hidden" name="razorpay_order_id" id="razorpay_order_id">
    <input type="hidden" name="razorpay_signature" id="razorpay_signature">

    <!-- Your custom data -->
    <input type="hidden" name="orderId" value="{{ $order_id }}">
    <input type="hidden" name="amount" value="{{ $amount }}">
  </form>
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

  <script>
    var options = {
      "key": "{{ env('RAZOR_KEY_ID') }}",
      "amount": "{{ $amount }}",
      "currency": "INR",
      "name": "Aploannwala",
      "description": "Payment",
      "image": "https://aploannwala.com/public/front/images/logo/apple-touch-icon-60x60.png",
      "order_id": "{{ $order_id }}",

      "handler": function(response) {
        // ✅ SUCCESS
        var form = document.createElement('form');
        form.method = 'POST';
        form.action = "{{ $returnUrl }}";

        form.innerHTML = `
            @csrf
            <input type="hidden" name="razorpay_payment_id" value="${response.razorpay_payment_id}">
            <input type="hidden" name="razorpay_order_id" value="${response.razorpay_order_id}">
            <input type="hidden" name="razorpay_signature" value="${response.razorpay_signature}">
            <input type="hidden" name="amount" value="{{ $amount }}">
            <input type="hidden" name="responseCode" value="100">
        `;

        document.body.appendChild(form);
        form.submit();
      },

      "modal": {
        "ondismiss": function() {
          // ❌ USER CLOSED PAYMENT

          var form = document.createElement('form');
          form.method = 'POST';
          form.action = "{{ $returnUrl }}";

          form.innerHTML = `
                @csrf
                <input type="hidden" name="razorpay_order_id" value="{{ $order_id }}">
                <input type="hidden" name="amount" value="{{ $amount }}">
                <input type="hidden" name="responseCode" value="400">
            `;

          document.body.appendChild(form);
          form.submit();
        }
      },

      "prefill": {
        "name": "{{ $name }}",
        "email": "{{ $email }}",
        "contact": "{{ $mobile }}"
      },

      "theme": {
        "color": "#3399cc"
      }
    };

    var rzp = new Razorpay(options);
    rzp.open();
  </script>

</body>

</html>