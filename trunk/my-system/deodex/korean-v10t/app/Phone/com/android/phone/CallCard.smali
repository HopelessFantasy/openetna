.class public Lcom/android/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$1;
    }
.end annotation


# static fields
.field static final CALLCARD_SIDE_MARGIN_LANDSCAPE:I = 0x0

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CallCard"

.field static final MAIN_CALLCARD_MIN_HEIGHT_LANDSCAPE:I = 0xc8

.field static final TITLE_TEXT_SIZE_LANDSCAPE:F = 22.0f


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLabel:Landroid/widget/TextView;

.field private mLowerTitle:Landroid/widget/TextView;

.field private mLowerTitleIcon:Landroid/widget/ImageView;

.field private mLowerTitleViewGroup:Landroid/view/ViewGroup;

.field private mMainCallCard:Landroid/view/ViewGroup;

.field private mName:Landroid/widget/TextView;

.field private mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

.field private mOtherCallOnHoldName:Landroid/widget/TextView;

.field private mOtherCallOnHoldStatus:Landroid/widget/TextView;

.field private mOtherCallOngoingIcon:Landroid/widget/ImageView;

.field private mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

.field private mOtherCallOngoingName:Landroid/widget/TextView;

.field private mOtherCallOngoingStatus:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

.field private mRingerSilenced:Z

.field private mTextColorConnected:I

.field private mTextColorConnectedBluetooth:I

.field private mTextColorEnded:I

.field private mTextColorOnHold:I

.field private mUpperTitle:Landroid/widget/TextView;

.field private suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    .line 143
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 146
    new-instance v1, Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    .line 147
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .registers 22
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 344
    if-nez p2, :cond_d

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 565
    :goto_c
    return-void

    .line 349
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 354
    .local v18, state:Lcom/android/internal/telephony/Call$State;
    const/4 v12, 0x0

    .line 361
    .local v12, callCardBackgroundResid:I
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v15

    .line 364
    .local v15, landscapeMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v11

    .line 366
    .local v11, bluetoothActive:Z
    sget-object v5, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1dc

    .line 466
    const-string v5, "CallCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_4e
    invoke-direct/range {p0 .. p2}, Lcom/android/phone/CallCard;->updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 478
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 558
    :goto_5e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    goto :goto_c

    .line 369
    :pswitch_66
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallConnected()V

    .line 371
    if-eqz v11, :cond_92

    .line 372
    if-eqz v15, :cond_8d

    const v5, 0x7f020065

    move v12, v5

    .line 383
    :goto_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->reset()V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_4e

    .line 372
    :cond_8d
    const v5, 0x7f020066

    move v12, v5

    goto :goto_71

    .line 376
    :cond_92
    if-eqz v15, :cond_99

    const v5, 0x7f020068

    move v12, v5

    :goto_98
    goto :goto_71

    :cond_99
    const v5, 0x7f020069

    move v12, v5

    goto :goto_98

    .line 390
    :pswitch_9e
    if-eqz v15, :cond_ad

    const v5, 0x7f02006d

    move v12, v5

    .line 395
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_4e

    .line 390
    :cond_ad
    const v5, 0x7f02006e

    move v12, v5

    goto :goto_a4

    .line 401
    :pswitch_b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->reset()V

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallEnded()V

    .line 404
    if-eqz v15, :cond_c7

    const v5, 0x7f02006a

    move v12, v5

    .line 409
    :goto_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_4e

    .line 404
    :cond_c7
    const v5, 0x7f02006b

    move v12, v5

    goto :goto_be

    .line 415
    :pswitch_cc
    if-eqz v11, :cond_e3

    .line 416
    if-eqz v15, :cond_de

    const v5, 0x7f020065

    move v12, v5

    .line 426
    :goto_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_4e

    .line 416
    :cond_de
    const v5, 0x7f020066

    move v12, v5

    goto :goto_d4

    .line 420
    :cond_e3
    if-eqz v15, :cond_ea

    const v5, 0x7f02006f

    move v12, v5

    :goto_e9
    goto :goto_d4

    :cond_ea
    const v5, 0x7f020070

    move v12, v5

    goto :goto_e9

    .line 433
    :pswitch_ef
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallCard;->showCallIncoming()V

    .line 435
    if-eqz v11, :cond_109

    .line 436
    if-eqz v15, :cond_104

    const v5, 0x7f020065

    move v12, v5

    .line 446
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_4e

    .line 436
    :cond_104
    const v5, 0x7f020066

    move v12, v5

    goto :goto_fa

    .line 440
    :cond_109
    if-eqz v15, :cond_110

    const v5, 0x7f02006f

    move v12, v5

    :goto_10f
    goto :goto_fa

    :cond_110
    const v5, 0x7f020070

    move v12, v5

    goto :goto_10f

    .line 455
    :pswitch_115
    const-string v5, "CallCard"

    const-string v6, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 486
    :cond_11e
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    .line 488
    .local v13, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    .line 491
    .local v7, presentation:I
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCnap()Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, cnap:Ljava/lang/String;
    if-nez v13, :cond_141

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v14

    .line 501
    .local v14, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v7

    move v3, v5

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V

    goto/16 :goto_5e

    .line 507
    .end local v14           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_141
    const/16 v17, 0x1

    .line 508
    .local v17, runQuery:Z
    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v16

    .line 509
    .local v16, o:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move v5, v0

    if-eqz v5, :cond_183

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v5, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object/from16 v17, v0

    .end local v17           #runQuery:Z
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 516
    .restart local v17       #runQuery:Z
    :goto_162
    if-eqz v17, :cond_190

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v14

    .line 522
    .local v14, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v6, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v5, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v5, :cond_18d

    const/4 v5, 0x1

    move v8, v5

    :goto_17a
    move-object/from16 v5, p0

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 513
    .end local v14           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    move-object v5, v0

    invoke-virtual {v5, v13}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_162

    .line 522
    .restart local v14       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_18d
    const/4 v5, 0x0

    move v8, v5

    goto :goto_17a

    .line 529
    .end local v14           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_190
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move v5, v0

    if-eqz v5, :cond_1a6

    .line 530
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    .line 534
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 536
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_1a6
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move v5, v0

    if-eqz v5, :cond_1be

    .line 537
    check-cast v16, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v16           #o:Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    .line 541
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 544
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v16       #o:Ljava/lang/Object;
    :cond_1be
    const-string v5, "CallCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    .end local v7           #presentation:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 366
    nop

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_66
        :pswitch_9e
        :pswitch_b2
        :pswitch_cc
        :pswitch_cc
        :pswitch_ef
        :pswitch_ef
        :pswitch_115
    .end packed-switch
.end method

.method private displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .registers 11
    .parameter "phone"
    .parameter "call"

    .prologue
    const/16 v7, 0x8

    .line 763
    if-nez p2, :cond_a

    .line 764
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 819
    :goto_9
    return-void

    .line 768
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 769
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a0

    .line 816
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 776
    :pswitch_1f
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 778
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090024

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 781
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_55
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    const v5, 0x7f020088

    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->setOnHoldInfoAreaBackgroundResource(I)V

    .line 806
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldStatus:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 808
    iget-object v5, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 788
    .end local v3           #name:Ljava/lang/String;
    :cond_75
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    invoke-static {v5, p2, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 791
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 792
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_94

    .line 793
    iget-object v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCnap()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    goto :goto_55

    .line 796
    .end local v3           #name:Ljava/lang/String;
    :cond_94
    iget-object v5, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    goto :goto_55

    .line 769
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_1f
    .end packed-switch
.end method

.method private displayOngoingCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .registers 15
    .parameter "phone"
    .parameter "call"

    .prologue
    const/16 v11, 0x8

    .line 830
    if-nez p2, :cond_a

    .line 831
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 899
    :goto_9
    return-void

    .line 835
    :cond_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 836
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_c2

    .line 896
    :pswitch_19
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 845
    :pswitch_1f
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 846
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090024

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 850
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 867
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_55
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 874
    .local v0, bluetoothActive:Z
    if-eqz v0, :cond_b4

    const v9, 0x7f020064

    move v5, v9

    .line 877
    .local v5, ongoingCallBackground:I
    :goto_66
    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->setOngoingInfoAreaBackgroundResource(I)V

    .line 879
    if-eqz v0, :cond_b9

    const v9, 0x7f02004c

    move v6, v9

    .line 881
    .local v6, ongoingCallIcon:I
    :goto_6f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 883
    if-eqz v0, :cond_be

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v8, v9

    .line 885
    .local v8, textColor:I
    :goto_79
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 886
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingStatus:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    iget-object v9, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 856
    .end local v0           #bluetoothActive:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ongoingCallBackground:I
    .end local v6           #ongoingCallIcon:I
    .end local v8           #textColor:I
    :cond_8a
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    invoke-static {v9, p2, p0, v10}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 859
    .local v3, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 860
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_a9

    .line 861
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnap()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #name:Ljava/lang/String;
    goto :goto_55

    .line 864
    .end local v4           #name:Ljava/lang/String;
    :cond_a9
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #name:Ljava/lang/String;
    goto :goto_55

    .line 874
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v3           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v0       #bluetoothActive:Z
    :cond_b4
    const v9, 0x7f020088

    move v5, v9

    goto :goto_66

    .line 879
    .restart local v5       #ongoingCallBackground:I
    :cond_b9
    const v9, 0x7f02004b

    move v6, v9

    goto :goto_6f

    .line 883
    .restart local v6       #ongoingCallIcon:I
    :cond_be
    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v8, v9

    goto :goto_79

    .line 836
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 8
    .parameter "call"

    .prologue
    .line 903
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 904
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 907
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_18

    .line 911
    const v3, 0x7f0901b1

    .line 962
    .local v3, resID:I
    :goto_f
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 914
    .end local v3           #resID:I
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 920
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4c

    .line 958
    const v3, 0x7f0901b1

    .restart local v3       #resID:I
    goto :goto_f

    .line 922
    .end local v3           #resID:I
    :pswitch_2b
    const v3, 0x7f09000c

    .line 923
    .restart local v3       #resID:I
    goto :goto_f

    .line 928
    .end local v3           #resID:I
    :pswitch_2f
    const v3, 0x7f09001c

    .line 930
    .restart local v3       #resID:I
    goto :goto_f

    .line 933
    .end local v3           #resID:I
    :pswitch_33
    const v3, 0x7f09000e

    .line 934
    .restart local v3       #resID:I
    goto :goto_f

    .line 937
    .end local v3           #resID:I
    :pswitch_37
    const v3, 0x7f09000f

    .line 938
    .restart local v3       #resID:I
    goto :goto_f

    .line 941
    .end local v3           #resID:I
    :pswitch_3b
    const v3, 0x7f090010

    .line 942
    .restart local v3       #resID:I
    goto :goto_f

    .line 945
    .end local v3           #resID:I
    :pswitch_3f
    const v3, 0x7f090011

    .line 946
    .restart local v3       #resID:I
    goto :goto_f

    .line 949
    .end local v3           #resID:I
    :pswitch_43
    const v3, 0x7f090012

    .line 950
    .restart local v3       #resID:I
    goto :goto_f

    .line 953
    .end local v3           #resID:I
    :pswitch_47
    const v3, 0x7f0901e4

    .line 954
    .restart local v3       #resID:I
    goto :goto_f

    .line 920
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
    .end packed-switch
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .registers 5
    .parameter "presentation"

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1b

    .line 1111
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_1a
    :goto_1a
    return-object v0

    .line 1112
    :cond_1b
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_1a

    .line 1113
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 7
    .parameter "call"

    .prologue
    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 714
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 719
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    .line 751
    :goto_14
    :pswitch_14
    return-object v1

    .line 726
    :pswitch_15
    const v3, 0x7f0901ad

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    goto :goto_14

    .line 730
    :pswitch_1d
    const v3, 0x7f0901b2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 733
    goto :goto_14

    .line 737
    :pswitch_25
    const v3, 0x7f0901a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 738
    goto :goto_14

    .line 742
    :pswitch_2d
    const v3, 0x7f0901af

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 743
    goto :goto_14

    .line 746
    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 719
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1d
        :pswitch_35
        :pswitch_25
        :pswitch_25
        :pswitch_2d
        :pswitch_2d
        :pswitch_14
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1431
    const-string v0, "CallCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void
.end method

.method private static logErr(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1435
    const-string v0, "CallCard"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return-void
.end method

.method private setMainCallCardBackgroundResource(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1332
    return-void
.end method

.method private setOnHoldInfoAreaBackgroundResource(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1346
    return-void
.end method

.method private setOngoingInfoAreaBackgroundResource(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1339
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .registers 4
    .parameter "vg"
    .parameter "margin"

    .prologue
    .line 1392
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1395
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1396
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1397
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 1404
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1406
    return-void
.end method

.method private setUpperTitle(Ljava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .registers 6
    .parameter "title"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1413
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, bluetoothIconId:I
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v1, :cond_f

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_1c

    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1420
    const v0, 0x7f02004e

    .line 1423
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1424
    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1425
    :cond_29
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .registers 3
    .parameter "view"
    .parameter "ci"

    .prologue
    .line 1287
    if-eqz p1, :cond_18

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_18

    .line 1288
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 1289
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1295
    :goto_f
    const/4 v0, 0x1

    .line 1297
    :goto_10
    return v0

    .line 1292
    :cond_11
    const v0, 0x7f020017

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_f

    .line 1297
    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private showCallConnected()V
    .registers 1

    .prologue
    .line 978
    return-void
.end method

.method private showCallConnecting()V
    .registers 1

    .prologue
    .line 968
    return-void
.end method

.method private showCallEnded()V
    .registers 1

    .prologue
    .line 983
    return-void
.end method

.method private showCallIncoming()V
    .registers 1

    .prologue
    .line 973
    return-void
.end method

.method private showCallOnhold()V
    .registers 1

    .prologue
    .line 987
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1304
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "view"
    .parameter "drawable"

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1310
    return-void
.end method

.method private updateCardTitleWidgets(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V
    .registers 14
    .parameter "phone"
    .parameter "call"

    .prologue
    .line 615
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 623
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getTitleForCallCard(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, cardTitle:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v9, :cond_5b

    .line 631
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 633
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 634
    .local v0, bluetoothActive:Z
    if-eqz v0, :cond_52

    const v9, 0x7f02004c

    move v6, v9

    .line 636
    .local v6, ongoingCallIcon:I
    :goto_20
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 638
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    if-eqz v0, :cond_57

    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    move v8, v9

    .line 641
    .local v8, textColor:I
    :goto_2f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    const-string v9, ""

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;)V

    .line 678
    .end local v0           #bluetoothActive:Z
    .end local v6           #ongoingCallIcon:I
    .end local v8           #textColor:I
    :goto_3e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_d2

    .line 680
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v4

    .line 681
    .local v4, duration2:J
    const-wide/16 v9, 0x3e8

    div-long v9, v4, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 690
    .end local v4           #duration2:J
    :goto_51
    return-void

    .line 634
    .restart local v0       #bluetoothActive:Z
    :cond_52
    const v9, 0x7f02004b

    move v6, v9

    goto :goto_20

    .line 640
    .restart local v6       #ongoingCallIcon:I
    :cond_57
    iget v9, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    move v8, v9

    goto :goto_2f

    .line 644
    .end local v0           #bluetoothActive:Z
    .end local v6           #ongoingCallIcon:I
    :cond_5b
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v9, :cond_86

    .line 652
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 653
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    const v10, 0x7f02004a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    const-string v9, ""

    invoke-direct {p0, v9}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;)V

    goto :goto_3e

    .line 661
    :cond_86
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_b4

    .line 662
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getALSSettingValue()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b4

    .line 663
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getLine()I

    move-result v9

    if-nez v9, :cond_be

    .line 664
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (Line 1)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_b4
    :goto_b4
    invoke-direct {p0, v1, v7}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;Lcom/android/internal/telephony/Call$State;)V

    .line 671
    iget-object v9, p0, Lcom/android/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3e

    .line 666
    :cond_be
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (Line 2)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b4

    .line 685
    :cond_d2
    invoke-static {p2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 686
    .local v2, duration:J
    const-wide/16 v9, 0x3e8

    div-long v9, v2, v9

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    goto/16 :goto_51
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .registers 5
    .parameter "call"

    .prologue
    const/16 v2, 0x8

    .line 1130
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1146
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1164
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;ILcom/android/internal/telephony/Call;)V
    .registers 10
    .parameter "info"
    .parameter "presentation"
    .parameter "call"

    .prologue
    .line 996
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;)V
    .registers 11
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"

    .prologue
    .line 1013
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V
    .registers 17
    .parameter "info"
    .parameter "presentation"
    .parameter "isTemporary"
    .parameter "call"
    .parameter "callingName"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1026
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1029
    const/4 v8, 0x0

    .line 1030
    .local v8, displayNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1031
    .local v9, label:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1033
    .local v6, personUri:Landroid/net/Uri;
    if-eqz p1, :cond_75

    .line 1047
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1048
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1049
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .line 1065
    .local v10, name:Ljava/lang/String;
    :goto_24
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1069
    :goto_2c
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    if-eqz p3, :cond_7a

    if-eqz p1, :cond_3f

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_7a

    .line 1083
    :cond_3f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1092
    :cond_45
    :goto_45
    if-eqz v8, :cond_9f

    .line 1093
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    :goto_52
    if-eqz v9, :cond_a7

    .line 1100
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    :goto_5f
    return-void

    .line 1052
    .end local v10           #name:Ljava/lang/String;
    :cond_60
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1053
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_24

    .line 1055
    .end local v10           #name:Ljava/lang/String;
    :cond_69
    move-object/from16 v10, p5

    .line 1056
    .restart local v10       #name:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_24

    .line 1061
    .end local v10           #name:Ljava/lang/String;
    :cond_6e
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1062
    .restart local v10       #name:Ljava/lang/String;
    iget-object v8, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1063
    iget-object v9, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_24

    .line 1067
    .end local v10           #name:Ljava/lang/String;
    :cond_75
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->getPresentationString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #name:Ljava/lang/String;
    goto :goto_2c

    .line 1084
    :cond_7a
    if-eqz p1, :cond_88

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_88

    .line 1085
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_45

    .line 1086
    :cond_88
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1089
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v7, -0x1

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto :goto_45

    .line 1096
    :cond_9f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 1103
    :cond_a7
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method private updateElapsedTimeWidget(J)V
    .registers 5
    .parameter "timeElapsed"

    .prologue
    .line 698
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 699
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :goto_d
    return-void

    .line 701
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 282
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 283
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 285
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_16

    .line 293
    move-object v1, v0

    .line 296
    const/4 v0, 0x0

    .line 299
    :cond_16
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 301
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayOngoingCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 302
    return-void
.end method

.method private updateNoCall(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOngoingCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 334
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .registers 15
    .parameter "call"

    .prologue
    const/4 v12, -0x2

    const/4 v11, -0x1

    .line 1178
    const/4 v6, 0x0

    .line 1182
    .local v6, photoImageResource:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    .line 1183
    .local v7, state:Lcom/android/internal/telephony/Call$State;
    sget-object v8, Lcom/android/phone/CallCard$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_90

    .line 1227
    :goto_12
    const/4 v3, 0x0

    .line 1229
    .local v3, ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1230
    .local v4, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_25

    .line 1231
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 1232
    .local v5, o:Ljava/lang/Object;
    instance-of v8, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v8, :cond_7c

    .line 1233
    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 1240
    .end local v5           #o:Ljava/lang/Object;
    :cond_25
    :goto_25
    if-eqz v3, :cond_29

    .line 1241
    iget v6, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1255
    :cond_29
    if-nez v6, :cond_85

    .line 1256
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 1257
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v8, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v8

    if-nez v8, :cond_55

    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v8

    if-ne v8, v12, :cond_55

    .line 1259
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v10}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v3, v8, v9, v10, v11}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1261
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1273
    .end local v3           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v4           #conn:Lcom/android/internal/telephony/Connection;
    :cond_55
    :goto_55
    if-eqz v6, :cond_61

    .line 1275
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v8, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1277
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v12}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1279
    :cond_61
    :goto_61
    return-void

    .line 1188
    :pswitch_62
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1191
    .local v1, c:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_55

    .line 1192
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 1193
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v8, :cond_74

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v8, :cond_55

    .line 1195
    :cond_74
    const v6, 0x7f020074

    goto :goto_55

    .line 1206
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :pswitch_78
    const v6, 0x7f020076

    goto :goto_12

    .line 1234
    .restart local v3       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v4       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v5       #o:Ljava/lang/Object;
    :cond_7c
    instance-of v8, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v8, :cond_25

    .line 1235
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #o:Ljava/lang/Object;
    iget-object v3, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_25

    .line 1266
    :cond_85
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v8, v6}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1267
    iget-object v8, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v8, v11}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_61

    .line 1183
    :pswitch_data_90
    .packed-switch 0x3
        :pswitch_62
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 311
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 312
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 313
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 315
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayOnHoldCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 317
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayOngoingCallStatus(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)V

    .line 318
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 1323
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method getMenuButtonHint()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1356
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 181
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    .line 185
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    .line 186
    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    .line 189
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    .line 191
    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    .line 193
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorConnected:I

    .line 197
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorConnectedBluetooth:I

    .line 199
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorEnded:I

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorOnHold:I

    .line 203
    const v1, 0x7f060026

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 204
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 205
    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 206
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 209
    const v1, 0x7f060019

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingIcon:Landroid/widget/ImageView;

    .line 210
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    .line 211
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingStatus:Landroid/widget/TextView;

    .line 212
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    .line 213
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldStatus:Landroid/widget/TextView;

    .line 219
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 605
    if-eqz p2, :cond_7

    .line 606
    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 608
    :cond_7
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 574
    instance-of v1, p2, Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_38

    .line 579
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Call;

    move-object v5, v0

    .line 581
    .local v5, call:Lcom/android/internal/telephony/Call;
    const/4 v6, 0x0

    .line 582
    .local v6, cnap:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 583
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_1f

    .line 584
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnap()Ljava/lang/String;

    move-result-object v6

    .line 589
    :goto_13
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, v5}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 597
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #cnap:Ljava/lang/String;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    .end local p2
    :cond_1e
    :goto_1e
    return-void

    .line 586
    .restart local v5       #call:Lcom/android/internal/telephony/Call;
    .restart local v6       #cnap:Ljava/lang/String;
    .restart local v7       #conn:Lcom/android/internal/telephony/Connection;
    .restart local p2
    :cond_1f
    const-string v1, "nodebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallCard>onQueryComplete>getEarliestConnection==null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 593
    .end local v5           #call:Lcom/android/internal/telephony/Call;
    .end local v6           #cnap:Ljava/lang/String;
    .end local v7           #conn:Lcom/android/internal/telephony/Connection;
    :cond_38
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_1e

    .line 595
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method public onTickForCallTimeElapsed(J)V
    .registers 3
    .parameter "timeElapsed"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 168
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallCard;->mRingerSilenced:Z

    .line 159
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showCallConnected()V

    .line 160
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setUpperTitle(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter "inCallScreen"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 151
    return-void
.end method

.method stopTimer()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 173
    return-void
.end method

.method updateForLandscapeMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1376
    iget-object v0, p0, Lcom/android/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 1377
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 1378
    iget-object v0, p0, Lcom/android/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1382
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/Phone;)V
    .registers 7
    .parameter "phone"

    .prologue
    .line 232
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 233
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_c

    .line 236
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/Phone;)V

    .line 274
    :goto_b
    return-void

    .line 237
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_14

    .line 240
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_b

    .line 247
    :cond_14
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 248
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 249
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_30

    .line 254
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_b

    .line 271
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_b
.end method
