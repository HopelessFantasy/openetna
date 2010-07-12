.class public final Lcom/android/internal/telephony/cdma/RuimCard;
.super Landroid/os/Handler;
.source "RuimCard.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/RuimCard$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field static final EVENT_CHANGE_RUIM_PASSWORD_DONE:I = 0x9

.field static final EVENT_GET_RUIM_STATUS_DONE:I = 0x2

.field static final EVENT_PINPUK_DONE:I = 0x4

.field static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field static final EVENT_RUIM_LOCKED_OR_ABSENT:I = 0x1

.field static final EVENT_RUIM_PIN2_STATUS_CHANGED:I = 0x66

.field static final EVENT_RUIM_READY:I = 0x6

.field static final EVENT_RUIM_STATUS_CHANGED:I = 0x65

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private absentRegistrants:Landroid/os/RegistrantList;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mRuimFdnEnabled:Z

.field private mRuimPin2Blocked:Z

.field private mRuimPinLocked:Z

.field private mRuimPuk2Blocked:Z

.field private networkLockedRegistrants:Landroid/os/RegistrantList;

.field private phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private pinLockedRegistrants:Landroid/os/RegistrantList;

.field private status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPin2Blocked:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPuk2Blocked:Z

    .line 159
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->absentRegistrants:Landroid/os/RegistrantList;

    .line 160
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    .line 161
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 90
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnPin2StatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 106
    return-void
.end method

.method private getRuimStatusDone(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 495
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 496
    const-string v1, "CDMA"

    const-string v2, "Error getting SIM status. RIL_REQUEST_GET_SIM_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    :goto_d
    return-void

    .line 502
    :cond_e
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 505
    .local v0, newStatus:Lcom/android/internal/telephony/CommandsInterface$IccStatus;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->handleRuimStatus(Lcom/android/internal/telephony/CommandsInterface$IccStatus;)V

    goto :goto_d
.end method

.method private handleRuimStatus(Lcom/android/internal/telephony/CommandsInterface$IccStatus;)V
    .registers 11
    .parameter "newStatus"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "LOCKED"

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 517
    .local v1, oldState:Lcom/android/internal/telephony/IccCard$State;
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 520
    .local v0, newState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 522
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v5, :cond_19

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v5, :cond_21

    :cond_19
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v5, :cond_4c

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_4c

    :cond_21
    move v4, v7

    .line 525
    .local v4, transitionedIntoPinLocked:Z
    :goto_22
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v5, :cond_4e

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_4e

    move v2, v7

    .line 526
    .local v2, transitionedIntoAbsent:Z
    :goto_2b
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v5, :cond_50

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_50

    move v3, v7

    .line 529
    .local v3, transitionedIntoNetworkLocked:Z
    :goto_34
    if-eqz v4, :cond_55

    .line 530
    const-string v5, "Notify RUIM pin or puk locked."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 532
    const-string v5, "LOCKED"

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_52

    const-string v5, "PIN"

    :goto_48
    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_4b
    :goto_4b
    return-void

    .end local v2           #transitionedIntoAbsent:Z
    .end local v3           #transitionedIntoNetworkLocked:Z
    .end local v4           #transitionedIntoPinLocked:Z
    :cond_4c
    move v4, v6

    .line 522
    goto :goto_22

    .restart local v4       #transitionedIntoPinLocked:Z
    :cond_4e
    move v2, v6

    .line 525
    goto :goto_2b

    .restart local v2       #transitionedIntoAbsent:Z
    :cond_50
    move v3, v6

    .line 526
    goto :goto_34

    .line 532
    .restart local v3       #transitionedIntoNetworkLocked:Z
    :cond_52
    const-string v5, "PUK"

    goto :goto_48

    .line 535
    :cond_55
    if-eqz v2, :cond_68

    .line 536
    const-string v5, "Notify RUIM missing."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 537
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 538
    const-string v5, "ABSENT"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 539
    :cond_68
    if-eqz v3, :cond_4b

    .line 540
    const-string v5, "Notify RUIM network locked."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 541
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 542
    const-string v5, "LOCKED"

    const-string v5, "NETWORK"

    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 581
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method private onPin2StatusChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "CDMA"

    .line 458
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_23

    .line 459
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in receiving pin2 status with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_22
    return-void

    .line 462
    :cond_23
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 463
    .local v1, ints:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPin2StatusChanged: received pin2 status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 465
    aget v2, v1, v4

    packed-switch v2, :pswitch_data_6e

    .line 481
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un Handled pin2 status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 469
    :pswitch_63
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPin2Blocked:Z

    .line 470
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPuk2Blocked:Z

    goto :goto_22

    .line 474
    :pswitch_68
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPin2Blocked:Z

    goto :goto_22

    .line 478
    :pswitch_6b
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPuk2Blocked:Z

    goto :goto_22

    .line 465
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_63
        :pswitch_68
        :pswitch_6b
    .end packed-switch
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 432
    :goto_1d
    return-void

    .line 425
    :cond_1e
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 426
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4b

    .line 427
    aget v2, v1, v3

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    :goto_2e
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    goto :goto_1d

    :cond_49
    move v2, v3

    .line 427
    goto :goto_2e

    .line 430
    :cond_4b
    const-string v2, "CDMA"

    const-string v3, "[CdmaRuimCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 451
    :goto_1d
    return-void

    .line 444
    :cond_1e
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 445
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4b

    .line 446
    aget v2, v1, v3

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    :goto_2e
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    goto :goto_1d

    :cond_49
    move v2, v3

    .line 446
    goto :goto_2e

    .line 449
    :cond_4b
    const-string v2, "CDMA"

    const-string v3, "[CdmaRuimCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private updateStateProperty()V
    .registers 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method


# virtual methods
.method public broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent SIM_STATE_CHANGED_ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 554
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 277
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPin2StatusChanged(Landroid/os/Handler;)V

    .line 153
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "CDMA"

    const-string v1, "RuimCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public getEfGid1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 598
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEfIccid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEfImsi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEfSpn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFdnEnabled()Z
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    return v0
.end method

.method public getIccLockEnabled()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    return v0
.end method

.method public getIccPin2Blocked()Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPin2Blocked:Z

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .registers 2

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPuk2Blocked:Z

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimPin1RetryNum()I
    .registers 2

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public getSimPin2RetryNum()I
    .registers 2

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public getSimPuk1RetryNum()I
    .registers 2

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public getSimPuk2RetryNum()I
    .registers 2

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    if-nez v0, :cond_2d

    .line 113
    sget-object v0, Lcom/android/internal/telephony/cdma/RuimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 142
    :goto_17
    const-string v0, "CDMA"

    const-string v1, "RuimCard.getState(): case should never be reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_20
    return-object v0

    .line 121
    :pswitch_21
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 124
    :pswitch_24
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 127
    :pswitch_27
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 129
    :pswitch_2a
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 132
    :cond_2d
    sget-object v0, Lcom/android/internal/telephony/cdma/RuimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    goto :goto_17

    .line 133
    :pswitch_3b
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 134
    :pswitch_3e
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 135
    :pswitch_41
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 136
    :pswitch_44
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 137
    :pswitch_47
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 138
    :pswitch_4a
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_20

    .line 113
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_27
        :pswitch_2a
    .end packed-switch

    .line 132
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v3, 0x2

    const-string v5, ""

    const-string v4, "CDMA"

    .line 289
    const/16 v1, 0xf5

    .line 293
    .local v1, serviceClassX:I
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_216

    .line 409
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CdmaRuimCard] Unknown Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local p0
    :goto_28
    return-void

    .line 295
    .restart local p0
    :sswitch_29
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 297
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 298
    const-string v2, "NOT_READY"

    invoke-virtual {p0, v2, v7}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 301
    :sswitch_3b
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_RUIM_READY Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "SC"

    const-string v4, ""

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "FD"

    const-string v4, ""

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_28

    .line 312
    :sswitch_6e
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_RUIM_LOCKED_OR_ABSENT Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v3, "SC"

    const-string v4, ""

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v5, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_28

    .line 319
    :sswitch_90
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_GET_RUIM_STATUS_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->getRuimStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_28

    .line 325
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_9f
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_PINPUK_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 331
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 337
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_c6
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_REPOLL_STATUS_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->getRuimStatusDone(Landroid/os/AsyncResult;)V

    .line 345
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 348
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_dd
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_QUERY_FACILITY_LOCK_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 350
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 353
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_ed
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_QUERY_FACILITY_FDN_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 355
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 358
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_fd
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_CHANGE_FACILITY_LOCK_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 360
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_13d

    .line 361
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mDesiredPinLocked:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_LOCK_DONE: mRuimPinLocked= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimPinLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 368
    :goto_128
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 370
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 365
    .restart local p0
    :cond_13d
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility lock with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 373
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_158
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_CHANGE_FACILITY_FDN_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 376
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_198

    .line 377
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mDesiredFdnEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_FDN_DONE: mRuimFdnEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mRuimFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 384
    :goto_183
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 386
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 381
    .restart local p0
    :cond_198
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility fdn with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_183

    .line 389
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1b3
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_CHANGE_RUIM_PASSWORD_DONE Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 391
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1dc

    .line 392
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in change sim password with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1dc
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 397
    iget-object p0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 400
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_1f1
    const-string v2, "CDMA"

    const-string v2, "Event EVENT_RUIM_STATUS_CHANGED Received"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 404
    :sswitch_205
    const-string v2, "CDMA"

    const-string v2, "Received Event EVENT_RUIM_PIN2_STATUS_CHANGED"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 406
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->onPin2StatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 293
    nop

    :sswitch_data_216
    .sparse-switch
        0x1 -> :sswitch_6e
        0x2 -> :sswitch_90
        0x3 -> :sswitch_29
        0x4 -> :sswitch_9f
        0x5 -> :sswitch_c6
        0x6 -> :sswitch_3b
        0x7 -> :sswitch_dd
        0x8 -> :sswitch_fd
        0x9 -> :sswitch_1b3
        0xa -> :sswitch_ed
        0xb -> :sswitch_158
        0x65 -> :sswitch_1f1
        0x66 -> :sswitch_205
    .end sparse-switch
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 170
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 172
    :cond_15
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 193
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 198
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 200
    :cond_17
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 179
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 181
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 184
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 186
    :cond_15
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 253
    const/16 v4, 0xfd

    .line 258
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mDesiredFdnEnabled:Z

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const/16 v2, 0xb

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 263
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 239
    const/16 v4, 0xf5

    .line 243
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimCard;->mDesiredPinLocked:Z

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 248
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Despersonalization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/RuimCard;->log(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 226
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 216
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/RuimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 204
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 190
    return-void
.end method

.method public updateImsiConfiguration(Ljava/lang/String;)V
    .registers 6
    .parameter "imsi"

    .prologue
    const/16 v3, 0x30

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_49

    .line 559
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 560
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 563
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 567
    :try_start_42
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    .line 571
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_49
    :goto_49
    return-void

    .line 568
    .restart local v0       #config:Landroid/content/res/Configuration;
    :catch_4a
    move-exception v1

    goto :goto_49
.end method

.method public updateSimPinStatus()V
    .registers 1

    .prologue
    .line 626
    return-void
.end method
