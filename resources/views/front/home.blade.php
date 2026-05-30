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
<section id="hero-7" class="hero-section  bg--scroll bg--green-100">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-12 col-lg-5 col-12  order-2 order-md-2 order-lg-1 m-auto mt-lg-0 mt-4">
                <div class="hero-7-img text-center mt-0">
                    <img src="{{ asset('front/images/hero-img.png') }}" alt="aploannwala" class="img-fluid p-0">
                </div>
            </div>
            <div class="col-md-12 col-lg-7 col-12 order-1 order-md-1 order-lg-2">
                <div class="hero-7-txt">
                    <h1 class="s-40 w-700">Give Your Financial Dreams a <span class="color--green-500">Smart
                            Boost!</span></h1>
                    <p class="mb-20">Get expert guidance and discover the right loan options tailored to your
                        financial needs, with a simple process and trusted support at every step of your journey.
                    </p>
                    <a href="{{ route('self.apply.main') }}"
                        class="btn r-04 btn--theme hover--tra-black last-link me-2 mb-md-0 mb-0">Self
                        Apply</a>
                    <a href="{{ route('loan.agent.main') }}" class="btn r-04 btn--theme hover--tra-black last-link">Hire
                        an Agent</a>
                </div>
                <div class="statistic-5-wrapper mt-5">
                    <div class="row row-cols-2 row-cols-md-4">
                        <div class="col sec-1 staticts-1">
                            <div id="sb-5-1" class="text-center mb-0">
                                <div class="statistic-block">
                                    <div class="statistic-digit">
                                        <h2 class="s-30 w-700 mb-10 color--green-500">
                                            <span class="count-element">4000</span>+
                                        </h2>
                                    </div>
                                    <div class="statistic-txt">
                                        <h5 class="s-16 w-500 color--green-500">Happy Customer</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col sec-2 staticts-1 staticts-border">
                            <div id="sb-5-3" class="text-center mb-0">
                                <div class="statistic-block">
                                    <div class="statistic-digit">
                                        <h2 class="s-30 w-700 mb-10 color--green-500">
                                            <span class="count-element">3.5</span>Cr+
                                        </h2>
                                    </div>
                                    <div class="statistic-txt">
                                        <h5 class="s-16 w-500 color--green-500">Disbursal</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col sec-3 staticts-1 staticts-border-top">
                            <div id="sb-5-2" class="text-center mb-0">
                                <div class="statistic-block">
                                    <div class="statistic-digit">
                                        <h2 class="s-30 w-700 mb-10 color--green-500">
                                            <span class="count-element">8</span>+
                                        </h2>
                                    </div>
                                    <div class="statistic-txt">
                                        <h5 class="s-16 w-500 color--green-500">NBFC Partners</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col sec-4 staticts-1">
                            <div id="sb-5-4" class="text-center mb-0">
                                <div class="statistic-block">
                                    <div class="statistic-digit">
                                        <h2 class="s-30 w-700 mb-10 color--green-500">
                                            <span class="count-element">100</span>%
                                        </h2>
                                    </div>
                                    <div class="statistic-txt">
                                        <h5 class="s-16 w-500 color--green-500">Digital Process</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>


<section class="py-80 ct-02 content-section division" id="company">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="txt-block right-column text-center">
                    <p><span class="section-id s-16"><span class="color--green-500">About Us!</span></p>
                    <h2 class="s-28 w-700">Helping you find the right financial solutions with expert guidance.</h2>
                    <p>AP Loannwala is committed to making loan services straightforward and accessible for individuals
                        who need reliable financial support</p>
                    <p>We understand that every financial requirement is different, which is why we focus on guiding
                        clients with clear information and practical assistance throughout the process. Our team works
                        closely with customers to ensure their experience remains smooth and organized.</p>
                    <p>With strong partnerships across multiple NBFCs, we help connect individuals to suitable loan
                        options without unnecessary delays or confusion.</p>
                    <p>At AP Loannwala, we believe in keeping things simple, transparent, and supportive – helping
                        people take confident steps towards their financial goals.</p>
                </div>
            </div>
            <!-- <div class="col-md-5">
                <div class="img-block left-column">
                    <img class="img-fluid" src="{{ asset('front/images/Compny-page-1.png') }}" alt="content-image">
                </div>
            </div>
       -->
        </div>
    </div>
</section>

<!-- why aploannwala section starts -->
<section id="features-6" class="pt-0 pb-80  features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28 mb-5">Why <span class="color--green-500">APloannwala</span></h2>
                    <p class="s-16 color--grey mt-0">Here's What Sets Our Platform Apart</p>
                </div>
            </div>
        </div>
        <div class="fbox-wrapper text-center mt-40">
            <div class="row gx-lg-3 gy-lg-2 g-5 row-cols-1 row-cols-md-2 row-cols-lg-4">
                <div class="col">
                    <div class="fbox-8 feature-image fbox--hover fb-1 r-12 border shadow h-100">
                        <div class="fbox-ico ico-30">
                            <div class="shape-ico text-white">
                                <img src="{{ asset('front/images/Strategic-Lending-Network-white.png') }}"
                                    alt="aploannwala" class="img-fluid p-0">
                            </div>
                        </div>
                        <div class="fbox-txt mt-4">
                            <h4 class="s-18 w-700">Strategic Lending Network</h4>
                            <p>Access multiple NBFC-backed lending options through a single digital interface.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover feature-image fb-2 r-12 border shadow h-100">
                        <div class="fbox-ico ico-30">
                            <div class="shape-ico text-white">
                                <img src="{{ asset('front/images/Completely-Online-Process-white.png') }}"
                                    alt="aploannwala" class="img-fluid p-0">
                            </div>
                        </div>
                        <div class="fbox-txt mt-4">
                            <h4 class="s-18 w-700">Completely Online Process</h4>
                            <p>From eligibility check to document submission, everything happens digitally.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover feature-image fb-2 r-12 border shadow h-100">
                        <div class="fbox-ico ico-30">
                            <div class="shape-ico text-white">
                                <img src="{{ asset('front/images/Self-Apply-Feature-white.png') }}" alt="aploannwala"
                                    class="img-fluid p-0">
                            </div>
                        </div>
                        <div class="fbox-txt mt-4">
                            <h4 class="s-18 w-700">Self-Apply Feature</h4>
                            <p>Take control of your finances while enjoying the benefits of excellent provisions.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="fbox-8 fbox--hover feature-image fb-3 r-12 border shadow h-100">
                        <div class="fbox-ico ico-30">
                            <div class="shape-ico text-white">
                                <img src="{{ asset('front/images/Hire-Loan-Agent-white.png') }}" alt="aploannwala"
                                    class="img-fluid p-0">
                            </div>
                        </div>
                        <div class="fbox-txt mt-4">
                            <h4 class="s-18 w-700">Hire Loan Agent</h4>
                            <p>Get guidance from experienced professionals to improve your loan approval possibilities.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- why aploannwala section ends -->

<section id="products" class="py-80 features-section division bg--green-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28 mb-5">Take Your Finances Forward with <span class="color--green-500">Smart
                            Strategy</span></h2>
                    <p class="s-16 color--grey mt-0">Pick the plan that works best for your requirements.</p>
                </div>
            </div>
        </div>
        <div class="row position-relative mb-3">
            <figure class="rounded position-absolute d-none d-lg-block text-end"
                style="top: 50%; right:0; width: 45%; height: auto; transform: translateY(-50%); z-index:2;"><img
                    src="{{ asset('front/images/Quick-Self-Apply.png') }}"></figure>
            <div class="col-lg-9 text-center">
                <div class="bg--white-100  border rounded-3 shadow">
                    <div class="card-body p-3 m-lg-5 m-md-3 bg-none">
                        <div class="row gx-0 justify-content-center">
                            <div class="col-lg-8 ps-xl-10">
                                <blockquote class="border-0 mb-0">
                                    <div class="p-3">
                                        <div class="fbox-txt mb-3">
                                            <h2 class="s-28 w-700">Quick Self-Apply</h2>
                                            <p>Enjoy instant access to expert consultation, convenient login links, and
                                                personalized
                                                loan offers from our NBFC partners.</p>
                                        </div>
                                        <a href="{{ route('self.apply.main') }}"
                                            class="btn r-04 btn--theme hover--tra-black">
                                            Apply Now
                                        </a>
                                    </div>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row position-relative justify-content-end">
            <figure class="rounded position-absolute d-none d-lg-block"
                style="top: 50%; left:0; width: 45%; height: auto; transform: translateY(-50%); z-index:2"><img
                    src="{{ asset('front/images/Hire-Loan-Agent.png') }}"></figure>
            <div class="col-lg-9 text-center">
                <div class="bg--white-100  border rounded-3 shadow">
                    <div class="card-body p-3 m-lg-5 m-md-3 bg-none">
                        <div class="row gx-0 justify-content-center">
                            <div class="col-lg-8 ps-xl-10">
                                <blockquote class="border-0 mb-0">
                                    <div class="p-3">
                                        <div class="fbox-txt mb-3">
                                            <h2 class="s-28 w-700">Hire Loan Agent</h5>
                                                <p>Leave the loan process to our dedicated experts while you sit back
                                                    and relax, with
                                                    better chances of approval.</p>
                                        </div>
                                        <a href="{{ route('loan.agent.main') }}"
                                            class="btn r-04 btn--theme hover--tra-black">
                                            Apply Now
                                        </a>
                                    </div>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- eligibility calculator starts -->
<section id="features-21" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-10">
                <div class="section-title mb-40">
                    <h2 class="s-28 mb-5">Calculate Your <span class="color--green-500">EMI Instantly</span></h2>
                    <p class="s-16 color--grey mt-0">Make more confident financial decisions!</p>
                </div>
            </div>
        </div>
        <div class="p-30 bg--white-100 shadow border-grey-1 r-20">
            <div class="row">
                <div class="col-md-7 order-first order-md-2">
                    <div id="emicalculatorinnerformwrapper">
                        <form id="emicalculatorform" class="comment-form">
                            <div class="form-horizontal" id="emicalculatorinnerform">
                                <div class="row">
                                    <!-- Loan Amount slider section starts -->
                                    <div class="col-md-12">
                                        <div class="row form-group lamount flex-display align-items-center">
                                            <label class="col-6 control-label s-18 w-500" for="loanamount">Loan
                                                amount</label>
                                            <div class="col-6">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text color--purple-500">₹</span>
                                                        </div>
                                                        <input class="form-control custm-box w-400" id="loanamount"
                                                            name="loanamount" value="10,00,000" type="text">
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
                                            <label class="col-6 s-18 w-500 control-label" for="loaninterest">Interest
                                                rate</label>
                                            <div class="col-6">
     <div class="row">
            <div class="col-md-7 order-first order-md-2">
                <div id="emicalculatorinnerformwrapper">
                    <form id="emicalculatorform" class="comment-form">
                        <div class="form-horizontal" id="emicalculatorinnerform">
                            <div class="row">
                                <!-- Loan Amount slider section starts -->
                                <div class="col-md-12">
                                    <div class="row form-group lamount flex-display align-items-center">
                                        <label class="col-6 control-label s-18 w-500" for="loanamount">Loan
                                            amount</label>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">%</span>
                                                    </div>
                                                    <input class="form-control custm-box w-400" id="loaninterest"
                                                        name="loaninterest" value="10.5" type="text">
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
                                            <label class="col-6 s-18 w-500 control-label" for="loanterm">Select EMI
                                                option</label>
                                            <div class="col-6">
                                                <div class="loantermwrapper">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend d-none">
                                                            <label class="s-14 input-group-text">
                                                                <input type="radio" class="mr-5" name="loantenure"
                                                                    id="loanyears" value="loanyears" tabindex="4"
                                                                    autocomplete="off"><span class="s-14">Yr</span>
                                                            </label>
                                                        </div>
                                                        <input class="form-control custm-box-2 w-400" id="loanterm"
                                                            name="loanterm" value="20" type="text">
                                                        <div class="input-group-prepend">
                                                            <label class="s-14 input-group-text months-input">
                                                                <input type="radio" class="mr-5 d-none"
                                                                    name="loantenure" id="loanmonths" value="loanmonths"
                                                                    tabindex="5" autocomplete="off" checked="checked">
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
                            <div id="emipiechart"
                                class="d-none no-gutter-left no-gutter-right col-sm-7 col-md-6 highcharts-container">
                            </div>
                        </div>
                    </div>
                </div>
                {{-- display none graph and list of emi's start --}}
                <div id="emipaymentdetails" class="d-none">
                    <form class="gutter-left gutter-right form-horizontal">
                        <div class="row form-group" id="emipaymentscheduleheader">
                            <label class="col-md-4 col-lg-5 control-label" for="startmonthyear">Schedule showing EMI
                                payments starting from</label>
                            <div class="col-md-4 col-lg-3">
                                <div class="input-group">
                                    <input class="form-control" id="startmonthyear" name="startmonthyear" value
                                        type="text">
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
                                <h2 class="mb-0 text-center s-40 color--purple-500" id="emiamount">₹<span>888</span>
                                </h2>
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
                                <a href="{{ route('loan.agent.main') }}"
                                    class="btn btn--green-400 hover--tra-black w-100">Apply for loan</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>
<!-- eligibility calculator ends -->

<!-- Our Partners section start  -->
<section id="integrations-2" class="py-80 bg--green-100 integrations-section">
    <div class="container">
        <div class="r-12 text-center">
            <div class="row justify-content-center">
                <div class="col-md-10 col-lg-10">
                    <div class="section-title mb-40">
                        <h2 class="s-28 mb-5">Our <span class="color--green-500">NBFC Partners</span></h2>
                        <p class="s-16 color--grey mt-0">We collaborate with the best to bring you the best.</p>
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


<!-- Quick and swift steps section starts -->
<section id="features-2" class="py-80 features-section division">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 col-lg-9">
                <div class="section-title mb-40">
                    <h2 class="s-28 mb-5">How it <span class="color--green-500">works!</span></h2>
                    <p class="s-16 color--grey mt-0">6 Easy Steps To Financial Success.</p>
                </div>
            </div>
        </div>

        <div class="fbox-wrapper text-center">
            <div class="row align-items-center">
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-mobile-search"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">Begin your process by entering your mobile number and bank-registered
                                    name.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-computer"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">Fill out the remaining information, and our automated system will check
                                    your
                                    eligibility and display any pre-approved loan offers. This is not a final offer.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-credit-card"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">To gain access to the pre-approved loan offers displayed, purchase one
                                    of our
                                    subscription plans.</p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-4  d-none d-md-none d-lg-block">
                    <div class="img-block left-column">
                        <img class="img-fluid" src="{{ asset('front/images/feature-img.png') }}" alt="feature-image">
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-time"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">Our login team will contact you within 24-48 hours to verify your
                                    information and
                                    guide you through the process.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-check-1"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">The NBFC will verify your documents and profile in accordance with its
                                    terms and
                                    conditions.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col d-flex">
                        <div
                            class="fbox-7 fbox--hover bg--white-100 fb-1 r-12 h-100 w-100 d-flex mb-3 shadow align-items-start">
                            <div class="fbox-ico ico-40 mb-0">
                                <div class="shape-ico color--theme">
                                    <span class="flaticon-profits"></span>
                                </div>
                            </div>
                            <div class="fbox-txt ms-4 text-start">
                                <p class="mt-0">The NBFC will make the final decision on loan sanction, approval, and
                                    disbursement in
                                    accordance with its rules and regulations.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Quick and swift steps section end -->


{{--<hr class="divider">--}}

<!-- Testimonioals section starts -->
<section id="reviews-1" class="pt-0 pb-80 reviews-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-12">
                <div class="section-title mb-40">
                    <h2 class="s-28 mb-5">Hear Straight From <span class="color--green-500">Our Customers</span></h2>
                    <p class="s-16 color--grey mt-0">The words that inspire us to perform better.</p>
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
        <div class="row align-items-center justify-content-start">
            <div class="col-md-6 col-12 md-mb-50 order-md-1 order-2">
                <div class="section-title mb-40 text-start">
                    <h2 class="s-28 mb-5">We’re Here to <span class="color--green-500">Assist You</span></h2>
                    <p class="description mt-0">Drop us a message with your basic information, and our
                        team will get
                        back to you shortly.</p>
                </div>
                <div class="row gy-3 gx-3 mx-md-0 mx-2">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="address-item position-relative d-flex align-items-start">
                            <div class=" feature-image feature-image-01 fb-2">
                                <div class="ico-20 position-relative">
                                    <div class="shape-ico text-white">
                                        <span class="flaticon-map"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="address-text ms-3">
                                <p class="address-txt mt-0"> <span class="fw-bolder"> Address: </span><br>
                                    {{ env('COMPANY_ADDRESS') }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="address-item position-relative d-flex align-items-start">
                            <div class="feature-image feature-image-01 fb-2">
                                <div class="ico-20 position-relative">
                                    <div class="shape-ico text-white">
                                        <span class="flaticon-mobile-search"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="address-text ms-3">
                                <p class="address-txt mt-0"><a
                                        href="tel:{{ str_ireplace(" ","",env('COMPANY_MOBILE')) }}">
                                        <span class="fw-bolder"> Customer Support :</span> <br>
                                        {{ env('COMPANY_MOBILE') }}</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="address-item position-relative d-flex align-items-start">
                            <div class="feature-image feature-image-01 fb-2">
                                <div class="ico-20 position-relative">
                                    <div class="shape-ico text-white">
                                        <span class="flaticon-email"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="address-text ms-3">
                                <p class="address-txt mt-0"><a
                                        href="mailto:{{ str_ireplace(" ","",env('COMPANY_SUPPORT_MAIL')) }}">
                                        <span class="fw-bolder"> Mail Us: <br>
                                        </span>{{ env('COMPANY_SUPPORT_MAIL') }}</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="address-item position-relative d-flex align-items-start">
                            <div class="feature-image feature-image-01 fb-2">
                                <div class="ico-20 position-relative">
                                    <div class="shape-ico text-white">
                                        <span class="flaticon-24-hours"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="address-text ms-3">
                                <p class="address-txt mt-0"> <span class="fw-bolder"> Working Hours : </span><br>
                                    Monday to Saturday<br>10:00 AM - 5:00 PM<br>
                                    Sunday: Closed</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6  col-12 py-md-0 py-4 pt-0 order-md-2 order-1">
                <div class="card border h-100">
                    <div class="card-body">
                        <p class="w-400 mb-20">
                            Fill out the form below and you'll hear from us soon.
                        </p>
                        <form method="post" action="{{ route('front.contact.us.store') }}"
                            class="contact-form career-form" enctype="multipart/form-data">
                            <div class="row gx-2 gy-2">
                                <div class="col-md-6 col-12">
                                    <div class="form-group form-floating">
                                        <input id="form_name" name="fullname" type="text" class="form-control name mb-0"
                                            placeholder="">
                                        <label for="firstname">Full Name *</label>
                                    </div>
                                    @component('components.ajax-error',['field'=>'fullname'])@endcomponent
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-group form-floating">
                                        <input id="form_mobile" type="text" name="mobile"
                                            class="numeric-input mb-0 form-control mobile" placeholder="" minlength="10"
                                            maxlength="10" inputmode="numeric">
                                        <label for="form_mobile">Mobile *</label>
                                    </div>
                                    @component('components.ajax-error',['field'=>'mobile'])@endcomponent
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-group form-floating">
                                        <input id="form_email" type="email" name="email" class="mb-0 form-control email"
                                            placeholder="">
                                        <label for="form_email">Email *</label>
                                    </div>
                                    @component('components.ajax-error',['field'=>'email'])@endcomponent
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="form-group form-floating">
                                        <input id="form_subject" type="text" name="subject"
                                            class="mb-0 form-control subject" placeholder="">
                                        <label for="form_subject">Subject *</label>
                                    </div>
                                    @component('components.ajax-error',['field'=>'subject'])@endcomponent
                                </div>
                                <div class="col-12">
                                    <div class="form-group form-floating">
                                        <textarea id="form_message" name="desc" class="mb-0 form-control message"
                                            placeholder="" style="height: 150px"></textarea>
                                        <label for="form_message">Message *</label>
                                    </div>
                                    @component('components.ajax-error',['field'=>'desc'])@endcomponent
                                </div>
                                <div class="col-12 text-start">
                                    <button type="submit" class="s-14 btn btn--green-400 hover--tra-black submit"
                                        id="submit-btn">Submit Request</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Contact End -->

{{-- Wlecome message modal show here --}}
@if($msg->status == 1)
<div class="modal fade myModal" id="exampleModalCenter" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                    $("#submit-btn").html(
                        '<span class="spinner-border spinner-border-sm"></span> Submit Request '
                    )
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