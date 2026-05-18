@extends('layouts.selfapply')
@push('css')
    <link href="{{ asset('front/css/custom.css') }}" rel="stylesheet" type="text/css" />
@endpush

@section('content')
<section id="contacts"
    class="bg--white-100 bg--fixed pb-80 personal-details-form d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-lg-7 col-12 m-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center mb-20">
                            <h4 class="fw-bolder text-danger mb-15">Payment Unsuccessful </h4>
                            <p>We regret to inform you that your subscription plan payment was not successful. </p>
                        </div>

                        <hr class="divider my-3" />

                        <div class="text-center mb-20">
                            <p>Common Reasons for Payment Failure:</p>

                            <div class="row gy-2 gx-2">
                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="border rounded-3 p-2 bg--red-100">
                                        <p class="fw-bold mb-2">Card Issue</p>
                                        <p>Insufficient balance or card limit exceeded.</p>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="border rounded-3 p-2 bg--red-100">
                                        <p class="fw-bold mb-2">Network</p>
                                        <p>Connection timeout or bank service issue.</p>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="border rounded-3 p-2 bg--red-100">
                                        <p class="fw-bold mb-2">Cancelled</p>
                                        <p>Transaction was cancelled by user.</p>
                                    </div>
                                </div>
                            </div>

                            <p class="mt-20 mb-0 small text-danger">Don't worry! No amount has been deducted from your
                                account.</p>
                        </div>

                        <hr class="divider my-3" />

                        <div class="text-center">
                            <a href="{{ route('loan.agent.offer2') }}"
                                class="btn btn-xs r-04 btn--theme hover--tra-black">Try another payment method</a>

                            <p class="text-center mt-20">If you've any queries/ issues, kindly raise a request here: <a
                                    href="{{ route('front.raise.request') }}" class="text-success">Click Here</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection