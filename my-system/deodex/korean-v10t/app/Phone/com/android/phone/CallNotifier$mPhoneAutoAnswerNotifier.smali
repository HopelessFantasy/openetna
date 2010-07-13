.class Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mPhoneAutoAnswerNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;-><init>(Lcom/android/phone/CallNotifier;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 337
    iget-object v6, p0, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 338
    .local v4, mForegroundCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 339
    .local v3, mBackgroundCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 340
    .local v5, mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_45

    move v2, v8

    .line 341
    .local v2, hasRingingCall:Z
    :goto_27
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_47

    move v0, v8

    .line 342
    .local v0, hasActiveCall:Z
    :goto_2e
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_49

    move v1, v8

    .line 344
    .local v1, hasHoldingCall:Z
    :goto_35
    if-eqz v2, :cond_44

    if-nez v0, :cond_44

    if-nez v1, :cond_44

    .line 345
    iget-object v6, p0, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 347
    :cond_44
    return-void

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    :cond_45
    move v2, v7

    .line 340
    goto :goto_27

    .restart local v2       #hasRingingCall:Z
    :cond_47
    move v0, v7

    .line 341
    goto :goto_2e

    .restart local v0       #hasActiveCall:Z
    :cond_49
    move v1, v7

    .line 342
    goto :goto_35
.end method
