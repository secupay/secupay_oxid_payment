<dl>
    <dt>
        <input id="payment_[{$sPaymentID}]" type="radio" name="paymentid" value="[{$sPaymentID}]" [{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]checked[{/if}]>
        <label for="payment_[{$sPaymentID}]"><b>[{$paymentmethod->oxpayments__oxdesc->value}][{if $paymentmethod->fAddPaymentSum}]([{$paymentmethod->fAddPaymentSum}] [{ $currency->sign}])[{/if}]</b></label>
    </dt>
    <img src="https://cdn.klarna.com/1.0/shared/image/generic/badge/[{oxmultilang ident="SECUPAY_LANG"}]/pay_now/standard/pink.svg">
    <dd class="[{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]activePayment[{/if}]">
        [{if $paymentmethod->oxpayments__oxlongdesc->value}]
        <div class="desc">
            [{$paymentmethod->oxpayments__oxlongdesc->value}]
        </div>
        [{/if}]
    </dd>
</dl>
