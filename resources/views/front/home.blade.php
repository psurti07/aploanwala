@extends('layouts.front')
@push('css')
<link rel="stylesheet" href="{{ asset('front/calc/commoncalculator.css') }}">
<link rel="stylesheet" href="{{ asset('front/calc/emicalculator.css') }}">
<link rel="stylesheet" href="{{ asset('front/calc/calcstyle.css') }}">
<link rel="stylesheet" href="{{ asset('front/css/custom.css') }}">
@endpush
@push('style-css')

@endpush
@section('content')
<!-- main section starts -->
<section id="hero-7" class="hero-section bg--green-100 bg--scroll">
    <!-- <div class="hero-overlay"> -->
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-6 col-lg-6 col-12">
                <div class="hero-7-txt">
                    <div class=" mt-lg-5 mb-lg-5">
                        <h1 class="s-40 w-700">We Design Your Roadmap to <span class="color--green-500">Financial Success</span></h1>
                        <p class="mb-20">Take confident steps toward your goals with structured guidance and technology-powered loan assistance.</p>
                        <a href="{{ route('self.apply.main') }}" class="btn r-04 btn--theme hover--tra-black last-link">Self Apply</a>
                        <a href="{{ route('loan.agent.main') }}" class="btn r-04 btn--theme hover--tra-black last-link">Hire an Agent</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-12 ">
                <div class="hero-7-img d-flex justify-content-center align-items-start">
                    <img src="{{ asset('front/images/home-section.png') }}" alt="aploanwala" class="img-fluid p-0">
                </div>
            </div>
        </div>
    </div>
    <!-- </div> -->
</section>
<!-- main section ends -->

<!-- Our Partners section start  -->
<section id="integrations-2" class="py-80 integrations-section">
    <div class="container">
        <div class="r-12 text-center">
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-10">
                    <div class="section-title mb-50">
                        <h2 class="s-28">Backed by Trusted <span class="color--green-500">Lending Institutions</span></h2>
                        <p class="s-16 color--grey">We collaborate with top NBFCs to expand structured credit access across India.</p>
                    </div>
                </div>
            </div>
            @php
            $lists = nbfcsList();
            @endphp

            <div class="bank-crousel">
                <div class="row">
                    <div class="col text-center">
                        <div class="owl-carousel brands-carousel-6 emi-carousel">
                            {!! $lists['carousel'] !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Our Partners section end  -->

<section class="py-80 ct-02 content-section division bg--green-100" id="company">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28">About <span class="color--green-500">APloanwala</span></h2>
                    <p class="s-16 color--grey">Enabling Better Financial Decisions with Smart, Personalized Support</p>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-12">
                <div class="txt-block left-column">
                    <p class="">APloanwala is a financial consultation and services company dedicated to helping individuals choose the right loan with ease and confidence. We work closely with our clients to understand their needs and connect them with suitable options through our network of multiple NBFC partners, ensuring a smooth, transparent, and well-guided experience from start to finish.</p>
                    <p class="">Our objective is simple – remove uncertainty from borrowing and replace it with clarity, process, and informed action.</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="txt-block right-column">
                    <p class="w-700">Your Growth Is Our Priority</p>
                    <ul class="simple-list">
                        <li class="list-item">
                            <p>We recognize that every applicant’s financial profile is different. Instead of generic recommendations, our system evaluates individual inputs to present structured options aligned with user requirements.</p>
                        </li>
                        <li class="list-item">
                            <p class="mb-0">Transparency, guided steps, and clear communication form the foundation of our approach.</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<hr class="divider">

<!-- why aploanwala section starts -->
<section id="features-6" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-50">
                    <h2 class="s-28">Why <span class="color--green-500">APloanwala</span></h2>
                    <p class="s-16 color--grey">Here's What Sets Our Platform Apart</p>
                </div>
            </div>
        </div>
        <div class="fbox-wrapper text-center">
            <div class="row gx-3 gy-2 row-cols-1 row-cols-md-2 row-cols-lg-4">
                <div class="col">
                    <div class="fbox-8 fbox--hover fb-1 r-12 border">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-layers-1"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Strategic Lending Network</h4>
                            <p>Access multiple NBFC-backed lending options through a single digital interface.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover fb-2 r-12 border">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-computer-1"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Completely Online Process</h4>
                            <p>From eligibility check to document submission, everything happens digitally.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover fb-2 r-12 border">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-click-1"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Self-Apply Feature</h4>
                            <p>Take control of your finances while enjoying the benefits of excellent provisions.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover fb-3 r-12 border">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-tech-support"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <h4 class="s-18 w-700">Hire Loan Agent</h4>
                            <p>Get guidance from experienced professionals to improve your loan approval possibilities.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- why aploanwala section ends -->

<!-- Trust Badges Section starts -->
<div id="statistic-1" class=" bg--green-400 ct-03 py-50 statistic-section division">
    <div class="container">
        <div class="statistic-5-wrapper">
            <div class="row row-cols-2 row-cols-md-4">
                <div class="col sec-1">
                    <div id="sb-5-1" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">5000</span>+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Applicants Assisted</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-2">
                    <div id="sb-5-3" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">10</span>+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">NBFC Partners</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-3">
                    <div id="sb-5-2" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">15</span>+
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Operational Team Members</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col sec-4">
                    <div id="sb-5-4" class="text-center">
                        <div class="statistic-block">
                            <div class="statistic-digit">
                                <h2 class="s-30 w-700 mb-10 text-white">
                                    <span class="count-element">100</span>%
                                </h2>
                            </div>
                            <div class="statistic-txt">
                                <h5 class="s-16 w-500 text-white">Digital Application Model</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Trust Badges Section ends -->

<!-- Products Intro section starts -->
<section id="products" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-10">
                <div class="section-title mb-40">
                    <h2 class="s-28">Advance Your <span class="color--green-500">Financial Aspects Smartly</span></h2>
                    <p class="s-16 color--grey">Select the option that matches your comfort level and application preference.</p>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-10 align-items-center m-auto">
            <div class="row fbox-wrapper text-center align-items-center m-auto border border--grey shadow rounded-3 mb-4">
                <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="img-block right-column text-center">
                        <img class="img-fluid light-theme-img"
                            src="{{ asset('front/images/Easy-Self-Apply-ai.png') }}"
                            alt="feature-image">
                    </div>
                </div>
                <div class="col-12 col-lg-6 order-1 order-lg-2">
                    <div class="txt-block right-column">
                        <h3 class="s-22 w-700 mb-2">Quick Self-Apply</h3>
                        <p class="mb-2">
                            Get instant access to professional digital loan consultation, direct loan application links, and personalized loan offers from our trusted NBFC and banking partners.
                        </p>
                        <a href="{{ route('self.apply.main') }}"
                            class="btn r-04 btn--theme hover--tra-black">
                            Apply Now
                        </a>
                    </div>
                </div>
            </div>

            <div class="row fbox-wrapper text-center align-items-center m-auto border border--grey shadow rounded-3">
                <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="txt-block left-column">
                        <h3 class="s-22 w-700 mb-2">Hire Loan Agent</h3>
                        <p class="mb-2">
                            Sit back and relax while a dedicated expert loan agent manages the entire loan process for you, from application to bank coordination, helping improve your chances of approval.
                        </p>
                        <a href="{{ route('loan.agent.main') }}"
                            class="btn r-04 btn--theme hover--tra-black">
                            Apply Now
                        </a>
                    </div>
                </div>
                <div class="col-12 col-lg-6 order-1 order-lg-2">
                    <div class="img-block right-column text-center">
                        <img class="img-fluid light-theme-img"
                            src="{{ asset('front/images/Hire-Loan-Agent-ai.png') }}"
                            alt="feature-image">
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
<!-- Products Intro section ends -->

<!-- Quick and swift steps section starts -->
<section id="features-2" class="py-80 bg--green-100 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28">How it <span class="color--green-500">works!</span></h2>
                    <p class="s-16 color--grey">Apply in 6 Simple Steps</p>
                </div>
            </div>
        </div>

        <div class="fbox-wrapper text-center">
            <div class="row g-4 row-cols-1 row-cols-md-3 row-cols-lg-3">
                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-mobile-search"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Start by providing your mobile number and the name registered with your bank.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-computer"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Complete your financial information for preliminary eligibility screening.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-credit-card"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Based on the details you enter, our system displays loan options that may be available to you. These are not final and will be reviewed by the lender.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-time"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>To gain access to the pre-approved loan offers displayed, simply purchase the subscription plan that best fits your needs. </p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-check-1"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>Submit required documents for profile verification and lender processing.</p>
                        </div>
                    </div>
                </div>

                <div class="col d-flex">
                    <div class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100">
                        <div class="fbox-ico ico-50">
                            <div class="shape-ico color--theme">
                                <span class="flaticon-profits"></span>
                            </div>
                        </div>
                        <div class="fbox-txt">
                            <p>The respective NBFC independently reviews the application and makes the final decision on approval and disbursement as per their policies.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Quick and swift steps section end -->

<!-- eligibility calculator starts -->
<section id="features-21" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-10">
                <div class="section-title mb-40">
                    <h2 class="s-28">Calculate Your <span class="color--green-500">EMI Instantly</span></h2>
                    <p class="s-16 color--grey">Plan repayments with clarity before proceeding.</p>
                </div>
            </div>
        </div>
        <div class="row p-30 bg--white-100 shadow border-grey-1 r-20">
            <div class="col-md-7 order-first order-md-2">
                <div id="emicalculatorinnerformwrapper">
                    <form id="emicalculatorform" class="comment-form">
                        <div class="form-horizontal" id="emicalculatorinnerform">
                            <div class="row">
                                <!-- Loan Amount slider section starts -->
                                <div class="col-md-12">
                                    <div class="row form-group lamount flex-display align-items-center">
                                        <label class="col-6 control-label s-18 w-500" for="loanamount">Loan amount</label>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text color--purple-500">₹</span>
                                                    </div>
                                                    <input class="form-control custm-box w-400" id="loanamount" name="loanamount" value="10,00,000" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loanamountslider"></div>
                                    <div id="loanamountsteps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">50K</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 12.5%;">| <br>
                                            <span class="marker">10L</span>
                                        </span>
                                        <span class=tick style="left: 25%;">| <br>
                                            <span class=marker>20L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 37.5%;">| <br>
                                            <span class="marker">30L</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">40L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 62.5%;">| <br>
                                            <span class="marker">50L</span>
                                        </span>
                                        <span class="tick" style="left: 75%;">| <br>
                                            <span class="marker">60L</span>
                                        </span>
                                        <span class="tick d-none d-sm-block" style="left: 87.5%;">| <br>
                                            <span class="marker">70L</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">80L</span>
                                        </span>
                                    </div>
                                </div>
                                <!-- Loan Amount slider section ends -->
                                <!-- Interest Rate slider section starts -->
                                <div class="col-md-12 mt-100">
                                    <div class="row form-group lint flex-display align-items-center">
                                        <label class="col-6 s-18 w-500 control-label" for="loaninterest">Interest rate</label>
                                        <div class="col-6">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">%</span>
                                                </div>
                                                <input class="form-control custm-box w-400" id="loaninterest" name="loaninterest" value="10.5" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loaninterestslider"></div>
                                    <div id="loanintereststeps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">5</span>
                                        </span>
                                        <span class="tick" style="left: 16.67%;">| <br>
                                            <span class="marker">7.5</span>
                                        </span>
                                        <span class="tick" style="left: 33.34%;">| <br>
                                            <span class="marker">10</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">12.5</span>
                                        </span>
                                        <span class="tick" style="left: 66.67%;">| <br>
                                            <span class="marker">15</span>
                                        </span>
                                        <span class="tick" style="left: 83.34%;">| <br>
                                            <span class="marker">17.5</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">20</span>
                                        </span>
                                    </div>
                                </div>
                                <!-- Interest Rate slider section ends -->
                                <!-- Loan Tenure slider section starts -->
                                <div class="col-md-12 mt-100">
                                    <div class="row form-group lterm flex-display align-items-center">
                                        <label class="col-6 s-18 w-500 control-label" for="loanterm">Select EMI option</label>
                                        <div class="col-6">
                                            <div class="loantermwrapper">
                                                <div class="input-group">
                                                    <div class="input-group-prepend d-none">
                                                        <label class="s-14 input-group-text">
                                                            <input type="radio" class="mr-5" name="loantenure" id="loanyears" value="loanyears" tabindex="4" autocomplete="off"><span class="s-14">Yr</span>
                                                        </label>
                                                    </div>
                                                    <input class="form-control custm-box-2 w-400" id="loanterm" name="loanterm" value="20" type="text">
                                                    <div class="input-group-prepend">
                                                        <label class="s-14 input-group-text months-input">
                                                            <input type="radio" class="mr-5 d-none" name="loantenure" id="loanmonths" value="loanmonths" tabindex="5" autocomplete="off" checked="checked">
                                                            <span class="s-14">Months</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="loantermslider"></div>
                                    <div id="loantermsteps" class="steps">
                                        <span class="tick" style="left: 0%;">| <br>
                                            <span class="marker">0</span>
                                        </span>
                                        <span class="tick" style="left: 16.67%;">| <br>
                                            <span class="marker">5</span>
                                        </span>
                                        <span class="tick" style="left: 33.33%;">| <br>
                                            <span class="marker">10</span>
                                        </span>
                                        <span class="tick" style="left: 50%;">| <br>
                                            <span class="marker">15</span>
                                        </span>
                                        <span class="tick" style="left: 66.67%;">| <br>
                                            <span class="marker">20</span>
                                        </span>
                                        <span class="tick" style="left: 83.33%;">| <br>
                                            <span class="marker">25</span>
                                        </span>
                                        <span class="tick" style="left: 100%;">| <br>
                                            <span class="marker">30</span>
                                        </span>
                                    </div>
                                </div>
                                <!-- Loan Tenure slider section ends -->
                            </div>
                        </div>
                        <input id="loanproduct" name="loanproduct" value type="hidden">
                        <input id="loanstartdate" name="loanstartdate" value type="hidden">
                        <input id="loanyearformat" name="loanyearformat" value type="hidden">
                        <input id="loandata" name="loandata" value type="hidden">
                        <input id="calcversion" name="calcversion" value=4.0 type="hidden">
                    </form>
                    <div class="row gutter-left gutter-right d-none">
                        <div id="emipaymentsummary" class="col-sm-5 col-md-6 no-gutter-left no-gutter-right">
                            <div id="emiamount">
                                <h4>Loan EMI</h4>
                                <p>₹ <span>24,959</span>
                                </p>
                            </div>
                            <div id="emitotalinterest">
                                <h4>Total Interest Payable</h4>
                                <p>₹ <span>34,90,279</span>
                                </p>
                            </div>
                            <div id="emitotalamount" class="column-last">
                                <h4>Total Payment <br>(Principal + Interest) </h4>
                                <p>₹ <span>59,90,279</span>
                                </p>
                            </div>
                        </div>
                        <div id="emipiechart" class="d-none no-gutter-left no-gutter-right col-sm-7 col-md-6 highcharts-container"></div>
                    </div>
                </div>
            </div>
            {{-- display none graph and list of emi's start --}}
            <div id="emipaymentdetails" class="d-none">
                <form class="gutter-left gutter-right form-horizontal">
                    <div class="row form-group" id="emipaymentscheduleheader">
                        <label class="col-md-4 col-lg-5 control-label" for="startmonthyear">Schedule showing EMI payments starting from</label>
                        <div class="col-md-4 col-lg-3">
                            <div class="input-group">
                                <input class="form-control" id="startmonthyear" name="startmonthyear" value type="text">
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="far fa-calendar-alt"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3 form-group lyearformat">
                            <select class="form-control" tabindex="15" name="yearformat" id="yearformat">
                                <option value="calendaryear" selected="selected">Calendar Year wise</option>
                                <option value="financialyear">Financial Year wise</option>
                            </select>
                        </div>
                    </div>
                </form>
                <div id="emibarchart" class="hidden-ts highcharts-container"></div>
                <div id="emipaymenttable"></div>
            </div>
            {{-- display none graph and list of emi's end --}}
            <div class="col-md-5 order-last order-md-2 emi-details">
                <div class="card">
                    <div class="card-body p-0">
                        <div class="p-4 text-center border-bottom">
                            <h6 class="card-title mb-3">Your monthly instalment:</h6>
                            <h2 class="mb-0 text-center s-40 color--purple-500" id="emiamount">₹<span>888</span></h2>
                        </div>
                        <div class="p-4">
                            <div class="d-flex justify-content-between mb-2">
                                <span class="text-muted s-15">Total interest</span>
                                <span id="emitotalinterest">₹<span>656</span></span>
                            </div>
                            <div class="d-flex justify-content-between mb-2">
                                <span class="text-muted s-15">Principal amount</span>
                                <span id="principalamount">₹<span>10,000</span></span>
                            </div>
                            <hr style="border:1px dashed grey">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="s-16">Total amount</span>
                                <span id="emitotalamount">₹<span>10,000</span></span>
                            </div>
                            <a href="{{ route('loan.agent.main') }}" class="btn btn--green-400 hover--tra-black w-100">Apply for loan</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- eligibility calculator ends -->
{{--<hr class="divider">--}}

<!-- Testimonioals section starts -->
<section id="reviews-1" class="py-80 reviews-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-12">
                <div class="section-title mb-40">
                    <h2 class="s-28">What Our <span class="color--green-500">Clients Say</span></h2>
                    <p class="s-16 color--grey">These words motivate us to work harder.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <!-- Testimonials carousel start  -->
                @include('partials.front.testimonials')
                <!-- Testimonials carousel end  -->
            </div>
        </div>
    </div>
</section>
<!-- Testimonioals section ends -->

<!-- Contact Start -->
<section id="contact" class="py-80 bg--green-100">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 md-mb-50">
                <div class="sec-title2 mb-40">
                    <h2 class="s-28">We’re Here to <span class="color--green-500">Assist You</span></h2>
                    <p class="description">Drop us a message with your basic information, and our team will get back to you shortly.</p>
                </div>
                <div class="row gy-3 gx-3">
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Customer Support </h6>
                                <p class="address-txt"><a href="tel:{{ str_ireplace(" ","",env('COMPANY_MOBILE')) }}">{{ env('COMPANY_MOBILE') }}</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Mail Us </h6>
                                <p class="address-txt"><a href="mailto:{{ str_ireplace(" ","",env('COMPANY_SUPPORT_MAIL')) }}">{{ env('COMPANY_SUPPORT_MAIL') }}</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Address </h6>
                                <p class="address-txt">{{ env('COMPANY_ADDRESS') }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="address-item">
                            <div class="address-text">
                                <h6> Working Hours </h6>
                                <p class="address-txt">
                                    Monday to Saturday: 10:00 AM - 5:00 PM<br>
                                    Sunday: Closed</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 py-md-0 py-4">
                <div class="h-100">
                    <div class="card shadow border h-100">
                        <div class="card-body">
                            <p class="w-400 mb-20">
                                Fill out the form below and you'll hear from us soon.
                            </p>
                            <form method="post" action="{{ route('front.contact.us.store') }}" class="contact-form career-form" enctype="multipart/form-data">
                                <div class="row gx-2 gy-2">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating s-15">
                                            <input id="form_name" name="fullname" type="text" class="form-control name mb-0" placeholder="">
                                            <label for="firstname">Full Name *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'fullname'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_mobile" type="text" name="mobile" class="numeric-input mb-0 form-control mobile" placeholder="" minlength="10" maxlength="10" inputmode="numeric">
                                            <label for="form_mobile">Mobile *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'mobile'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_email" type="email" name="email" class="mb-0 form-control email" placeholder="">
                                            <label for="form_email">Email *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'email'])@endcomponent
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group form-floating">
                                            <input id="form_subject" type="text" name="subject" class="mb-0 form-control subject" placeholder="">
                                            <label for="form_subject">Subject *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'subject'])@endcomponent
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group form-floating">
                                            <textarea id="form_message" name="desc" class="mb-0 form-control message" placeholder="" style="height: 150px"></textarea>
                                            <label for="form_message">Message *</label>
                                        </div>
                                        @component('components.ajax-error',['field'=>'desc'])@endcomponent
                                    </div>
                                    <div class="col-12 text-center">
                                        <button type="submit" class="s-14 btn btn--green-400 hover--tra-black submit" id="submit-btn">Submit Request</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact End -->

{{-- Wlecome message modal show here --}}
@if($msg->status == 1)
<div class="modal fade myModal" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row p-3">
                    <p>{!! $msg->content ?? 'N/A' !!}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@endsection

@push('script-src')
<script type="text/javascript" src="{{ asset('front/calc/calccore.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/mouse.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/slider.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/commoncalculator.js') }}"></script>
<script type="text/javascript" src="{{ asset('front/calc/emicalculator.js') }}"></script>
@endpush

@push('scripts')
<script src="{{ asset('front/js/home.js') }}" type="text/javascript"></script>
@if($msg->status == 1)
<script>
    $(document).ready(function() {
        setTimeout(function() {
            $(".myModal:not(.auto-off)").modal("show");
        }, 3600);
    })
</script>
@endif

<script>
    const routes = {
        'selfapply': "{{ route('self.apply.send.otp') }}",
        'loan-agent': "{{ route('loan.agent.send.otp') }}"
    };

    document.addEventListener('DOMContentLoaded', () => {
        const faqs = document.querySelectorAll('#faq-container li');
        const loadMoreButton = document.getElementById('load-more-faq');
        const viewLessButton = document.getElementById('view-less-faq');
        let visibleCount = 5; // Number of FAQs initially shown
        const batchSize = 5; // Number of FAQs to show on each click

        // Initial setup: Show the first 7 FAQs
        faqs.forEach((faq, index) => {
            if (index >= visibleCount) {
                faq.style.display = 'none';
            }
        });

        // Event listener for Load More button
        loadMoreButton.addEventListener('click', () => {
            const hiddenFaqs = Array.from(faqs).filter(faq => faq.style.display === 'none');
            for (let i = 0; i < batchSize && i < hiddenFaqs.length; i++) {
                hiddenFaqs[i].style.display = 'list-item';
            }

            // Show the "View Less" button once more items are displayed
            if (hiddenFaqs.length > 0) {
                viewLessButton.style.display = 'inline-block';
            }

            // Hide the "Load More" button if no more FAQs to show
            if (hiddenFaqs.length <= batchSize) {
                loadMoreButton.style.display = 'none';
            }
        });

        // Event listener for View Less button
        viewLessButton.addEventListener('click', () => {
            faqs.forEach((faq, index) => {
                if (index >= visibleCount) {
                    faq.style.display = 'none';
                }
            });

            // Reset button visibility
            loadMoreButton.style.display = 'inline-block';
            viewLessButton.style.display = 'none';
        });
    });

    $(document).ready(function() {
        $(".contact-form").submit(function(e) {
            let status = document.activeElement.innerHTML;
            e.preventDefault();
            if (status) {
                $('.ajax-error').html('');
                let data = new FormData(this);
                $.ajax({
                    url: $(this).attr("action"),
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: 'POST',
                    data: data,
                    processData: false,
                    contentType: false,
                    beforeSend: function() {
                        $("#submit-btn").html('<span class="spinner-border spinner-border-sm"></span> Submit Request ')
                        $("#submit-btn").attr('disabled', true);
                    },
                    success: function(result) {
                        $(this).attr("disabled", false);
                        if (result.type === 'SUCCESS') {
                            toastr.success(result.message);
                            setTimeout(function() {
                                location.reload();
                            }, 3000);
                        } else {
                            toastr.error(result.message);
                            $('#submit-btn').html('Submit Request');
                            $('#submit-btn').attr('disabled', false);
                        }
                    },
                    error: function(error) {
                        $(this).attr("disabled", false);
                        let errors = error.responseJSON.errors,
                            errorsHtml = '';
                        $.each(errors, function(key, value) {
                            errorsHtml = '<strong>' + value[0] + '</strong>';
                            $('.' + key).html(errorsHtml);
                        });
                        $('#submit-btn').html('Submit Request');
                        $('#submit-btn').attr('disabled', false);
                    }
                });
            }
        });
    });
</script>
@endpush