@extends('layouts.front')
@push('css')
<link href="{{ asset('front/css/custom.css') }}" rel="stylesheet" type="text/css" />
@endpush
@push('style-css')
@endpush
@section('content')
<section class="page-hero-section">
    <div class="page-hero-section-overlay bg--green-100 bg--scroll">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="left-column">
                        <span class="section-id"></span>
                        <h2 class="s-28 mb-5">Frequently Asked Questions </h2>
                        <p class="s-16 color--grey mt-0">Find answers to common questions about personal loans, eligibility, documents, approvals, and more.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="faqs-3" class="py-80 faqs-section">
    <div class="container">
        <div class="faqs-3-questions">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-xl-12">
                    <div class="accordion-wrapper">
                        <ul class="accordion">
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">1. What can I use a personal loan for?</h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>A personal loan can be used to meet almost any personal financial need, including medical expenses, education, home improvements, and debt consolidation.</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">2. What are the personal loan eligibility requirements?</h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>The eligibility criteria for a personal loan are:</p>
                                            <p><strong>For Salaried Professionals:</strong></p>
                                            <div class="ps-2">
                                                <p>&bull; Minimum Age: 21 Years </p>
                                                <p>&bull; Minimum Salary: Rs.15,000 Per Month (Should reflect in bank statement)</p>
                                                <p>&bull; Minimum Job Stability: 1 Year</p>
                                            </div>
                                            <p><strong>For Self-Employed:</strong></p>
                                            <div class="ps-2">
                                                <p>&bull; Minimum Age: 21 Years</p>
                                                <p>&bull; Income Tax Return Of Minimum 1 Year</p>
                                                <p>&bull; 1 Year Business Stability</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">3. Which documents are required to apply for a personal loan? </h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>The following documents are required to apply for a personal loan.</p>
                                            <p><strong>For Salaried:</strong></p>
                                            <div class="ps-2">
                                                <p>&bull; Aadhaar Card</p>
                                                <p>&bull; PAN Card</p>
                                                <p>&bull; Residence Proof: Rent agreement or Utility bills </p>
                                                <p>&bull; Bank Statement </p>
                                                <p>&bull; Income Proof: Salary Slips or Form 16</p>
                                            </div>
                                            <p><strong>For Self-Employed:</strong></p>
                                            <div class="ps-2">
                                                <p>&bull; Aadhaar Card</p>
                                                <p>&bull; PAN Card </p>
                                                <p>&bull; Residence Proof: Rent agreement or Utility bills</p>
                                                <p>&bull; Bank Statement </p>
                                                <p>&bull; Balance Sheet</p>
                                                <p>&bull; Income Computation</p>
                                                <p>&bull; Service Tax Registration, License, Registration Certificate</p>
                                                <p>&bull; Income Tax Returns</p>
                                            </div>
                                            <p>Based on your profile and the guidelines, the lender may request additional documents. </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">4. Does credit score affect personal loan approval?</h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>Yes, your credit score is a critical factor in the loan application process. It is one of the most important factors that lenders use to assess your creditworthiness. </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">5. How can I improve my chances of getting approved for a personal loan?</h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>To improve your chances, keep your credit score high, earn a consistent income, and provide accurate documentation during the application process.</p>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">6. Is there any tax benefit to personal loans? </h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>No, personal loans do not offer any direct tax benefits. However, if you use a personal loan to invest in your business, renovate your home, or fund your education, you may be able to deduct the interest payments. For more information, please contact your CA or tax advisor. </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="accordion-item mb-0">
                                <div class="accordion-thumb">
                                    <h6 class="s-16 w-400">7. In addition to credit scores, what other factors do lenders consider when approving personal loans?</h6>
                                </div>
                                <div class="accordion-panel">
                                    <div class="accordion-panel-item">
                                        <div class="faqs-2-answer">
                                            <p>In addition to the credit score, lenders take into account the applicant's age, income, and job stability. </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<hr class="divider">
@endsection
@push('script-src')
@endpush
@push('scripts')
@endpush