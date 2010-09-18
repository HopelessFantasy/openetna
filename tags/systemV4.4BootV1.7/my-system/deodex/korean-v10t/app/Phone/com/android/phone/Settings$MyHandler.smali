.class Lcom/android/phone/Settings$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_QUERY_ROAMING_PREFERENCE:I = 0x2

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method private constructor <init>(Lcom/android/phone/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;)V

    return-void
.end method

.method private checkPhoneTypeChanged(I)Z
    .registers 5
    .parameter "networkMode"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v1}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, newPhoneName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 456
    const-string v1, "checkPhoneTypeChanged: No Change in Phone Name"

    invoke-static {v1}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    .line 465
    :goto_1c
    return v1

    .line 460
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPhoneTypeChanged: Change in Phone Name (Phone Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v1, v0}, Lcom/android/phone/Settings;->access$602(Lcom/android/phone/Settings;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "preferred_network_mode"

    .line 382
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 384
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d7

    .line 385
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 388
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 398
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 403
    if-eqz v1, :cond_6a

    if-eq v1, v6, :cond_6a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x7

    if-ne v1, v3, :cond_da

    .line 412
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 417
    if-eq v1, v2, :cond_b1

    .line 419
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 423
    move v2, v1

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    :cond_b1
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;I)V

    .line 440
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_d7

    .line 441
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-ne v1, v6, :cond_d8

    move v4, v6

    :goto_d4
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 449
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_d7
    :goto_d7
    return-void

    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_d8
    move v4, v5

    .line 441
    goto :goto_d4

    .line 445
    :cond_da
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_d7
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const-string v6, "roaming_settings"

    .line 522
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Settings;->access$202(Lcom/android/phone/Settings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 525
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_63

    .line 526
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 527
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_38

    const/4 v3, 0x1

    if-eq v2, v3, :cond_38

    const/4 v3, 0x2

    if-ne v2, v3, :cond_64

    .line 536
    :cond_38
    if-eq v2, v1, :cond_4e

    .line 537
    move v1, v2

    .line 539
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    :cond_4e
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 546
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 552
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_63
    :goto_63
    return-void

    .line 549
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_64
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_63
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Settings;->access$202(Lcom/android/phone/Settings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 556
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 558
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3f

    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 559
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 560
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    .end local v1           #cdmaRoamingMode:I
    :goto_3e
    return-void

    .line 564
    :cond_3f
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_3e
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 469
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 471
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5f

    .line 473
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 474
    .local v1, networkMode:I
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 475
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 476
    const/4 v1, 0x1

    .line 479
    :cond_30
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2, v1}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;I)V

    .line 484
    invoke-direct {p0, v1}, Lcom/android/phone/Settings$MyHandler;->checkPhoneTypeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 485
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    const-string v3, "Radio Technology Changed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 496
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v2}, Lcom/android/phone/Settings;->finish()V

    .line 503
    .end local v1           #networkMode:I
    :cond_5e
    :goto_5e
    return-void

    .line 499
    :cond_5f
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    const-string v3, "Error while changing radio technology"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 501
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_5e
.end method

.method private resetCdmaRoamingModeToDefault()V
    .registers 5

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Settings;->access$202(Lcom/android/phone/Settings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, cdmaRoamingMode:I
    const/4 v1, 0x0

    .line 574
    .local v1, statusCdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 575
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 578
    :cond_20
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v2}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 584
    return-void
.end method

.method private resetNetworkModeToDefault()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 508
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 513
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 519
    return-void

    .line 509
    :cond_42
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 510
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-static {v0}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_20
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 379
    :goto_5
    return-void

    .line 365
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 369
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_5

    .line 372
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 376
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_5

    .line 363
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method
