<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CipherPayController;
use App\Http\Controllers\pg\LyraPgController;
use App\Http\Controllers\SelfApplyController;
use App\Http\Controllers\LoanAgentController;
use App\Http\Controllers\pg\{BilldeskController, PaytmController};

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/cipher-response',[CipherPayController::class, 'CipherResponse'])->name('cipher.response');
Route::post('/paycpres',[CipherPayController::class, 'payCPRes'])->name('cipher.pay.response');
Route::post('/lyra-response', [LyraPgController::class, 'lyraResponse'])->name('lyra.response');
Route::middleware(['web'])->post('/buyDigitalPlan', [SelfApplyController::class, 'buyDigitalPlan'])->name('api.self.apply.buy.digital.plan');
Route::middleware(['web'])->post('/buyDigitalAgentPlan', [LoanAgentController::class, 'buyDigitalPlan'])->name('api.loan.agent.buy.digital.agent.plan');

Route::middleware(['web'])->post('/buyDigitalAssistantPlan', [\App\Http\Controllers\LoanAssistantController::class, 'buyDigitalPlan'])->name('api.loan.assistant.buy.digital.assistant.plan');

// Route::post('/paymentSuccess', [SelfApplyController::class, 'paymentSuccess'])->name('payment.success');
// Route::post('/paymentFailed', [SelfApplyController::class, 'paymentFailed'])->name('payment.failed');
Route::post('/loan-agent/great-deal-offer-response',[LoanAgentController::class, 'offer1Response']);
Route::post('/loan-agent/elite-offer-response',[LoanAgentController::class, 'offer2Response']);
Route::post('/loan-agent/ultra-saver-offer-response',[LoanAgentController::class, 'offer3Response']);
Route::get('/loan-agent/big-offer-response/{orderId}/{token}',[LoanAgentController::class, 'offer4Response'])->name('api.loan.agent.offer4Response');
Route::post('/loan-agent/big-benefit-response',[LoanAgentController::class, 'offer5Response'])->name('api.loan.agent.offer5Response');
Route::post('/loan-agent/silver-offer-response/{orderid}',[LoanAgentController::class, 'offer6Response'])->name('api.loan.agent.offer6Response');


Route::post('/self-apply/prime-offer-response',[SelfApplyController::class, 'offer1Response'])->name('api.self.apply.prime-offer-response');
Route::post('/self-apply/mega-offer-response',[SelfApplyController::class, 'offer2Response'])->name('api.self.apply.mega-offer-response');
Route::post('/self-apply/premium-offer-response',[SelfApplyController::class, 'offer3Response'])->name('api.self.apply.premium-offer-response');
Route::post('/self-apply/star-offer-response',[SelfApplyController::class, 'offer4Response'])->name('api.self.apply.offer4Response');
Route::get('/self-apply/great-offer-response/{orderId}/{token}',[SelfApplyController::class, 'offer5Response'])->name('api.self.apply.offer5Response');
//Route::post('/airpayrespon',[SelfApplyController::class, 'offer5Response'])->name('api.self.apply.offer5Response');
Route::post('/self-apply/standard-offer-response/{orderid}',[SelfApplyController::class, 'offer6Response'])->name('api.self.apply.offer6Response');
Route::post('/self-apply/offer-7-response',[SelfApplyController::class, 'offer7Response'])->name('api.self.apply.offer7Response');

Route::post('/customer/plan-upgrade',[\Modules\Dashboard\App\Http\Controllers\DashboardController::class,'upgradePlan'])->name('api.customer.upgradePlan');

Route::post('/bdpg-response',[BilldeskController::class, 'bdResponse']);
Route::post('/veegah-response',[\App\Http\Controllers\pg\VeegahController::class, 'response'])->name('api.veegah.response');
Route::post('/zwitch-response',[\App\Http\Controllers\pg\ZwitchController::class, 'response'])->name('api.zwitch.response');
Route::post('/paytm-response',[\App\Http\Controllers\pg\PaytmController::class, 'response'])->name('api.paytm.response');
