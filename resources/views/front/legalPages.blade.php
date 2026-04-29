@extends('layouts.front')
@push('css')
@endpush
@push('style-css')
@endpush
@section('content')
<section id="privacy-page" class="gr--white pt-150 pb-80 division">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-page-title mb-40">
                    <h2 class="s-28 mb-5">{{ $mainTitle }}</h2>
                    <p class="s-16 color--grey mt-0">{{ $subTitle }}</p>
                </div>
            </div>
                 </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="border p-4 r-12">
                        {!! $description !!}
                    </div>
                </div>
            </div>
   
    </div>
</section>
<hr class="divider" />
@endsection
@push('script-src')
@endpush
@push('scripts')
@endpush