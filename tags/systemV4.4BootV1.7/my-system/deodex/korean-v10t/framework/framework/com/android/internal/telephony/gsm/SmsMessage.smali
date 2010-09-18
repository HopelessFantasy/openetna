.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAX_CBS_USER_DATA_BYTES:I = 0x52

.field public static final MAX_CBS_USER_DATA_SEPTETS:I = 0x5d

.field static final TP_VPF_ABSOLUTE:I = 0x3

.field static final TP_VPF_ENHANCED:I = 0x1

.field static final TP_VPF_NONE:I = 0x0

.field static final TP_VPF_RELATIVE:I = 0x2

.field static timeSmsOnSim:J

.field static vp:I


# instance fields
.field private automaticDeletion:Z

.field cblanguage:I

.field countVM:I

.field currentPageNumber:I

.field private dataCodingScheme:I

.field dataCodingScheme_CBS:I

.field destinationAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field geoScope:I

.field isCBMessage:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field messageCode:I

.field messageIdentifier:Ljava/lang/String;

.field private mti:I

.field pageParameter:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field serialNumber:I

.field public status:I

.field statusReportReq:I

.field totalPageNumber:I

.field updateNumber:I

.field voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

.field vpFormatPresent:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    .line 184
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 153
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    .line 176
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpFormatPresent:I

    .line 179
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->statusReportReq:I

    .line 203
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isCBMessage:Z

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->cblanguage:I

    .line 2114
    return-void
.end method

.method public static calculateKTSendingLength(Ljava/lang/CharSequence;Z)[I
    .registers 16
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v9, 0x80

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 459
    const/4 v7, 0x4

    new-array v4, v7, [I

    .line 463
    .local v4, ret:[I
    if-nez p1, :cond_42

    move v7, v11

    :goto_c
    :try_start_c
    invoke-static {p0, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .line 464
    .local v5, septets:I
    const/4 v7, 0x1

    aput v5, v4, v7

    .line 465
    if-le v5, v9, :cond_44

    .line 466
    new-instance v7, Lcom/android/internal/telephony/EncodeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1f
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c .. :try_end_1f} :catch_1f

    .line 479
    .end local v5           #septets:I
    :catch_1f
    move-exception v7

    move-object v1, v7

    .line 481
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, message:Ljava/lang/String;
    :try_start_25
    const-string v7, "EUC-KR"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2a} :catch_64

    move-result-object v6

    .line 494
    .local v6, textPart:[B
    array-length v2, v6

    .line 495
    .local v2, length:I
    aput v2, v4, v11

    .line 496
    const/16 v7, 0x5a

    if-le v2, v7, :cond_76

    .line 497
    div-int/lit8 v7, v2, 0x54

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v10

    .line 498
    const/16 v7, 0x86

    rem-int/lit8 v8, v2, 0x5a

    sub-int/2addr v7, v8

    aput v7, v4, v12

    .line 503
    :goto_3f
    aput v12, v4, v13

    .line 505
    .end local v1           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v2           #length:I
    .end local v3           #message:Ljava/lang/String;
    .end local v6           #textPart:[B
    :goto_41
    return-object v4

    :cond_42
    move v7, v10

    .line 463
    goto :goto_c

    .line 469
    .restart local v5       #septets:I
    :cond_44
    if-le v5, v9, :cond_5a

    .line 470
    const/4 v7, 0x0

    :try_start_47
    div-int/lit8 v8, v5, 0x79

    add-int/lit8 v8, v8, 0x1

    aput v8, v4, v7

    .line 471
    const/4 v7, 0x2

    const/16 v8, 0x79

    rem-int/lit8 v9, v5, 0x79

    sub-int/2addr v8, v9

    aput v8, v4, v7

    .line 477
    :goto_55
    const/4 v7, 0x3

    const/4 v8, 0x1

    aput v8, v4, v7

    goto :goto_41

    .line 474
    :cond_5a
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v4, v7

    .line 475
    const/4 v7, 0x2

    sub-int v8, v9, v5

    aput v8, v4, v7
    :try_end_63
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_47 .. :try_end_63} :catch_1f

    goto :goto_55

    .line 484
    .end local v5           #septets:I
    .restart local v1       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v3       #message:Ljava/lang/String;
    :catch_64
    move-exception v7

    move-object v0, v7

    .line 486
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    aput v10, v4, v10

    .line 489
    aput v10, v4, v11

    .line 490
    aput v10, v4, v12

    .line 491
    aput v11, v4, v13

    goto :goto_41

    .line 500
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #length:I
    .restart local v6       #textPart:[B
    :cond_76
    aput v11, v4, v10

    .line 501
    const/16 v7, 0x5a

    sub-int/2addr v7, v2

    aput v7, v4, v12

    goto :goto_3f
.end method

.method public static calculateKTSendingLength(Ljava/lang/String;Z)[I
    .registers 3
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 639
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateKTSendingLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateKTSimLength(Ljava/lang/String;Z)[I
    .registers 6
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 683
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 684
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 685
    .local v0, ret:[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 686
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 687
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 688
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 689
    return-object v0
.end method

.method public static calculateKTUserIfaceLength(Ljava/lang/CharSequence;Z)[I
    .registers 5
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 525
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 529
    .local v0, ret:[I
    if-nez p1, :cond_47

    const/4 p1, 0x1

    .end local p1
    :goto_6
    :try_start_6
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countKTGsmSeptets(Ljava/lang/CharSequence;Z)[I

    move-result-object p1

    .line 530
    .local p1, params:[I
    const/4 v1, 0x0

    aget v1, p1, v1

    .line 531
    .local v1, septets:I
    const/4 v2, 0x1

    aget p1, p1, v2

    .line 532
    .local p1, charindex:I
    const/16 v2, 0x80

    if-le v1, v2, :cond_49

    .line 533
    new-instance p1, Lcom/android/internal/telephony/EncodeException;

    .end local p1           #charindex:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #septets:I
    invoke-direct {p1, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1e
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6 .. :try_end_1e} :catch_1e

    .line 546
    :catch_1e
    move-exception p1

    .line 548
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 550
    .local p0, message:Ljava/lang/String;
    :try_start_23
    const-string p1, "EUC-KR"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_28} :catch_71

    move-result-object p0

    .line 561
    .local p0, textPart:[B
    array-length p0, p0

    .line 562
    .local p0, length:I
    const/4 p1, 0x1

    aput p0, v0, p1

    .line 563
    const/16 p1, 0x5a

    if-le p0, p1, :cond_8b

    .line 564
    const/4 p1, 0x0

    div-int/lit8 v1, p0, 0x54

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 565
    const/4 p1, 0x2

    const/16 v1, 0x54

    rem-int/lit8 p0, p0, 0x5a

    .end local p0           #length:I
    sub-int p0, v1, p0

    aput p0, v0, p1

    .line 570
    :goto_41
    const/4 p0, 0x3

    const/4 p1, 0x2

    aput p1, v0, p0

    :goto_45
    move-object p0, v0

    .line 572
    .end local v0           #ret:[I
    .local p0, ret:[I
    :goto_46
    return-object p0

    .line 529
    .restart local v0       #ret:[I
    .local p0, messageBody:Ljava/lang/CharSequence;
    .local p1, use7bitOnly:Z
    :cond_47
    const/4 p1, 0x0

    goto :goto_6

    .line 536
    .restart local v1       #septets:I
    .local p1, charindex:I
    :cond_49
    const/4 v2, 0x1

    :try_start_4a
    aput v1, v0, v2

    .line 537
    const/16 v1, 0x5a

    if-le p1, v1, :cond_65

    .line 538
    .end local v1           #septets:I
    const/4 v1, 0x0

    div-int/lit8 v2, p1, 0x54

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 539
    const/4 v1, 0x2

    const/16 v2, 0x54

    rem-int/lit8 p1, p1, 0x54

    .end local p1           #charindex:I
    sub-int p1, v2, p1

    aput p1, v0, v1

    .line 545
    :goto_60
    const/4 p1, 0x3

    const/4 v1, 0x1

    aput v1, v0, p1

    goto :goto_45

    .line 541
    .restart local p1       #charindex:I
    :cond_65
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 542
    const/4 v1, 0x2

    const/16 v2, 0x5a

    sub-int p1, v2, p1

    aput p1, v0, v1
    :try_end_70
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4a .. :try_end_70} :catch_1e

    goto :goto_60

    .line 551
    .end local p1           #charindex:I
    .local p0, message:Ljava/lang/String;
    :catch_71
    move-exception p0

    .line 553
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string v1, "Implausible UnsupportedEncodingException "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const/4 p0, 0x0

    const/4 p1, 0x0

    aput p1, v0, p0

    .line 556
    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    const/4 p0, 0x1

    const/4 p1, 0x0

    aput p1, v0, p0

    .line 557
    const/4 p0, 0x2

    const/4 p1, 0x0

    aput p1, v0, p0

    .line 558
    const/4 p0, 0x3

    const/4 p1, 0x1

    aput p1, v0, p0

    move-object p0, v0

    .line 559
    .end local v0           #ret:[I
    .local p0, ret:[I
    goto :goto_46

    .line 567
    .restart local v0       #ret:[I
    .local p0, length:I
    :cond_8b
    const/4 p1, 0x0

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 568
    const/4 p1, 0x2

    const/16 v1, 0x5a

    sub-int p0, v1, p0

    aput p0, v0, p1

    goto :goto_41
.end method

.method public static calculateKTUserIfaceLength(Ljava/lang/String;Z)[I
    .registers 3
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 659
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateKTUserIfaceLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 10
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v5, 0xa0

    const/16 v7, 0x8c

    const/4 v6, 0x1

    .line 2427
    new-instance v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2429
    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_26

    move v4, v6

    :goto_d
    :try_start_d
    invoke-static {p0, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v2

    .line 2430
    .local v2, septets:I
    iput v2, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2431
    if-le v2, v5, :cond_28

    .line 2432
    div-int/lit16 v4, v2, 0x99

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2433
    const/16 v4, 0x99

    rem-int/lit16 v5, v2, 0x99

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2439
    :goto_22
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2453
    .end local v2           #septets:I
    :goto_25
    return-object v3

    .line 2429
    :cond_26
    const/4 v4, 0x0

    goto :goto_d

    .line 2436
    .restart local v2       #septets:I
    :cond_28
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2437
    sub-int v4, v5, v2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_2f
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d .. :try_end_2f} :catch_30

    goto :goto_22

    .line 2440
    .end local v2           #septets:I
    :catch_30
    move-exception v4

    move-object v0, v4

    .line 2441
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    .line 2442
    .local v1, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2443
    if-le v1, v7, :cond_53

    .line 2444
    div-int/lit16 v4, v1, 0x86

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2445
    const/16 v4, 0x86

    rem-int/lit16 v5, v1, 0x86

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2451
    :goto_4f
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_25

    .line 2448
    :cond_53
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2449
    sub-int v4, v7, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4f
.end method

.method public static calculateLength(Ljava/lang/String;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .registers 7
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v4, 0x1

    .line 603
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_2b

    .line 604
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 606
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateKTSendingLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 608
    .local v0, ret:[I
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 609
    aget v2, v0, v4

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 610
    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 611
    const/4 v2, 0x3

    aget v2, v0, v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move-object v2, v1

    .line 615
    .end local v0           #ret:[I
    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_2a
    return-object v2

    :cond_2b
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    goto :goto_2a
.end method

.method public static createFromCbsPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "pdu"

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 300
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseCbsPdu([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_a

    move-object v2, v1

    .line 304
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_9
    return-object v2

    .line 302
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 303
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "[SmsMessage]"

    const-string v3, "CBS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 10
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "GSM"

    .line 396
    :try_start_4
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 398
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    .line 403
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1b

    .line 404
    const-string v4, "GSM"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 421
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_1a
    return-object v4

    .line 408
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_1b
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    .line 411
    array-length v4, p1

    sub-int v3, v4, v5

    .line 415
    .local v3, size:I
    new-array v2, v3, [B

    .line 416
    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_2f} :catch_31

    move-object v4, v1

    .line 418
    goto :goto_1a

    .line 419
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_31
    move-exception v4

    move-object v0, v4

    .line 420
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 421
    goto :goto_1a
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "pdu"

    .prologue
    .line 282
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 283
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_a

    move-object v2, v1

    .line 287
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_9
    return-object v2

    .line 285
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .registers 10
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"
    .parameter "header"
    .parameter "encodingtype"

    .prologue
    .line 1468
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 1469
    :cond_4
    const/4 p0, 0x0

    .line 1590
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p6
    .end local p7
    :goto_5
    return-object p0

    .line 1472
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p6
    .restart local p7
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 1475
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p6, :cond_28

    const/16 v0, 0x40

    :goto_f
    or-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    .line 1477
    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 1481
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 p1, 0x1

    if-ne p7, p1, :cond_85

    .line 1487
    .end local p1
    :try_start_19
    invoke-static {p2, p6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 1490
    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 p7, 0xa0

    if-le p3, p7, :cond_2a

    .line 1492
    .end local p7
    const/4 p0, 0x0

    goto :goto_5

    .line 1475
    .end local v0           #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, originatorAddress:Ljava/lang/String;
    .restart local p3
    .restart local p7
    :cond_28
    const/4 v0, 0x0

    goto :goto_f

    .line 1497
    .end local p3
    .end local p7
    .restart local v0       #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_2a
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1499
    invoke-static {p4, p5, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 1501
    const/4 p3, 0x0

    array-length p7, p1

    invoke-virtual {p0, p1, p3, p7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_36
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_19 .. :try_end_36} :catch_3e

    .line 1589
    .end local v0           #mtiByte:B
    .end local p2
    .end local p6
    :goto_36
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object p0, v1

    .line 1590
    goto :goto_5

    .line 1502
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    .restart local p6
    :catch_3e
    move-exception p1

    .line 1509
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3f
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1510
    .local p1, textPart:[B
    const-string p2, "GSM"

    .end local p2
    const-string p3, "[RHS0919] getDeliverPdu  utf-16be"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_4c} :catch_67

    .line 1518
    if-eqz p6, :cond_71

    .line 1519
    array-length p2, p6

    array-length p3, p1

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 1521
    .local p2, userData:[B
    const/4 p3, 0x0

    const/4 p7, 0x0

    array-length v0, p6

    .end local v0           #mtiByte:B
    invoke-static {p6, p3, p2, p7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1522
    const/4 p3, 0x0

    array-length p6, p6

    .end local p6
    array-length p7, p1

    invoke-static {p1, p3, p2, p6, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 1527
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_60
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_73

    .line 1529
    const/4 p0, 0x0

    goto :goto_5

    .line 1511
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .restart local p6
    :catch_67
    move-exception p0

    .line 1512
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1515
    const/4 p0, 0x0

    goto :goto_5

    .line 1524
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    :cond_71
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_60

    .line 1534
    .end local v0           #mtiByte:B
    .end local p6
    :cond_73
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1537
    invoke-static {p4, p5, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 1540
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1542
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_36

    .line 1552
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p6
    .restart local p7
    :cond_85
    :try_start_85
    const-string p1, "utf-16be"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1553
    .local p1, textPart:[B
    const-string p2, "GSM"

    .end local p2           #message:Ljava/lang/String;
    const-string p3, "[RHS0919] getDeliverPdu  ENCODING_16BIT utf-16be"

    .end local p3
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_92} :catch_ae

    .line 1561
    if-eqz p6, :cond_b9

    .line 1562
    array-length p2, p6

    array-length p3, p1

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 1564
    .local p2, userData:[B
    const/4 p3, 0x0

    const/4 p7, 0x0

    array-length v0, p6

    .end local v0           #mtiByte:B
    .end local p7
    invoke-static {p6, p3, p2, p7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1565
    const/4 p3, 0x0

    array-length p6, p6

    .end local p6
    array-length p7, p1

    invoke-static {p1, p3, p2, p6, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 1570
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_a6
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_bb

    .line 1572
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1554
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .restart local p6
    .restart local p7
    :catch_ae
    move-exception p0

    .line 1555
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1558
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1567
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    :cond_b9
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_a6

    .line 1577
    .end local v0           #mtiByte:B
    .end local p6
    .end local p7
    :cond_bb
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1580
    invoke-static {p4, p5, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 1583
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1585
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_36
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1608
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1612
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_48

    .line 1613
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1620
    :goto_e
    if-eqz p3, :cond_1a

    .line 1622
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 1623
    const-string v2, "GSM"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1629
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v5, :cond_4f

    .line 1630
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->KTsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1640
    .local v1, daBytes:[B
    :goto_2d
    array-length v2, v1

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v5

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_54

    move v3, v5

    :goto_3c
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1644
    array-length v2, v1

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1647
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1648
    return-object v0

    .line 1615
    .end local v1           #daBytes:[B
    :cond_48
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_e

    .line 1633
    :cond_4f
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1       #daBytes:[B
    goto :goto_2d

    :cond_54
    move v3, v6

    .line 1640
    goto :goto_3c
.end method

.method private static getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 14
    .parameter "msgtime"
    .parameter "byteoutput"

    .prologue
    const/16 v10, 0x7d0

    .line 1661
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1662
    .local v5, sctstime:Landroid/text/format/Time;
    invoke-virtual {v5, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1664
    iget v9, v5, Landroid/text/format/Time;->year:I

    if-lt v9, v10, :cond_4f

    iget v9, v5, Landroid/text/format/Time;->year:I

    sub-int/2addr v9, v10

    move v7, v9

    .line 1665
    .local v7, year:I
    :goto_14
    iget v9, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v9, 0x1

    .line 1669
    .local v3, month:I
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v8

    .line 1670
    .local v8, yearByte:B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v4

    .line 1671
    .local v4, monthByte:B
    iget v9, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v0

    .line 1672
    .local v0, dayByte:B
    iget v9, v5, Landroid/text/format/Time;->hour:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v1

    .line 1673
    .local v1, hourByte:B
    iget v9, v5, Landroid/text/format/Time;->minute:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v2

    .line 1674
    .local v2, minuteByte:B
    iget v9, v5, Landroid/text/format/Time;->second:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->IntTobcdByte(I)B

    move-result v6

    .line 1677
    .local v6, secondByte:B
    invoke-virtual {p2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1678
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1679
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1680
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1681
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1682
    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1683
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1685
    return-object p2

    .line 1664
    .end local v0           #dayByte:B
    .end local v1           #hourByte:B
    .end local v2           #minuteByte:B
    .end local v3           #month:I
    .end local v4           #monthByte:B
    .end local v6           #secondByte:B
    .end local v7           #year:I
    .end local v8           #yearByte:B
    :cond_4f
    iget v9, v5, Landroid/text/format/Time;->year:I

    const/16 v10, 0x76c

    sub-int/2addr v9, v10

    move v7, v9

    goto :goto_14
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "OriginAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "headertype"

    .prologue
    .line 931
    if-eqz p3, :cond_4

    if-nez p1, :cond_6

    .line 932
    :cond_4
    const/4 p0, 0x0

    .line 1091
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_5
    return-object p0

    .line 938
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_6
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object p5

    .end local p5
    const-string v0, "KTF"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_c1

    .line 939
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->KTsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p2

    .local p2, daBytes:[B
    move-object p5, p2

    .line 947
    .end local p2           #daBytes:[B
    .local p5, daBytes:[B
    :goto_18
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    array-length v0, p5

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 951
    .local p2, OriginheaderData:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 956
    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 957
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 958
    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p5

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p5, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_c8

    const/4 v1, 0x1

    :goto_4a
    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 960
    const/4 v0, 0x0

    array-length v1, p5

    invoke-virtual {p2, p5, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 965
    :cond_53
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ca

    .line 967
    const/4 v0, 0x1

    .line 975
    .local v0, mtiByte:B
    :goto_61
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 977
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-static {p0, p1, v0, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 988
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_6a
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object p1

    .end local p1
    const-string p4, "KTF"

    .end local p4
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_cd

    .line 989
    invoke-static {p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object p1

    .line 995
    .local p1, userData:[B
    :goto_7b
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object p2

    .end local p2           #OriginheaderData:Ljava/io/ByteArrayOutputStream;
    const-string p4, "KTF"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_d6

    .line 996
    const/4 p2, 0x1

    invoke-static {p3, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result p2

    const/16 p4, 0x80

    if-le p2, p4, :cond_e2

    .line 997
    new-instance p1, Lcom/android/internal/telephony/EncodeException;

    .end local p1           #userData:[B
    const-string p2, "Over Gsm7Bit Limit: 128"

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_99
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6a .. :try_end_99} :catch_99

    .line 1025
    .end local v0           #mtiByte:B
    :catch_99
    move-exception p1

    .line 1027
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "GSM"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stringToGsm7BitPackedWithHeader exception: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :try_start_b2
    const-string p1, "EUC-KR"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b2 .. :try_end_b7} :catch_117

    move-result-object p1

    .line 1046
    .local p1, textPart:[B
    move-object p1, p1

    .line 1048
    .local p1, userData:[B
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_122

    .line 1050
    .end local p3
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 942
    .end local v1           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local p5           #daBytes:[B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .local p2, OriginAddress:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_c1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p2

    .local p2, daBytes:[B
    move-object p5, p2

    .end local p2           #daBytes:[B
    .restart local p5       #daBytes:[B
    goto/16 :goto_18

    .line 958
    .local p2, OriginheaderData:Ljava/io/ByteArrayOutputStream;
    :cond_c8
    const/4 v1, 0x0

    goto :goto_4a

    .line 971
    :cond_ca
    const/16 v0, 0x41

    .restart local v0       #mtiByte:B
    goto :goto_61

    .line 991
    .end local p1           #destinationAddress:Ljava/lang/String;
    .end local p4
    .restart local v1       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_cd
    :try_start_cd
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .local p1, userData:[B
    goto :goto_7b

    .line 1000
    .end local p2           #OriginheaderData:Ljava/io/ByteArrayOutputStream;
    :cond_d6
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/16 p4, 0xa0

    if-le p2, p4, :cond_e2

    .line 1001
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1013
    :cond_e2
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1017
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p2, :cond_109

    .line 1018
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1019
    const-string p2, "GSM"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RHS0520] vp = "

    .end local v0           #mtiByte:B
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_109
    const/4 p2, 0x0

    array-length p4, p1

    invoke-virtual {p0, p1, p2, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_10e
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_cd .. :try_end_10e} :catch_99

    .line 1090
    .end local p3
    :goto_10e
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 1091
    goto/16 :goto_5

    .line 1039
    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p3
    :catch_117
    move-exception p0

    .line 1040
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1057
    .end local p3
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .restart local p1       #userData:[B
    :cond_122
    const/16 p2, 0x84

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1062
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p2, :cond_14a

    .line 1063
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1064
    const-string p2, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[RHS0520] vp = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget p4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_14a
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KTF"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_161

    .line 1071
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1086
    :goto_15b
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10e

    .line 1075
    :cond_161
    array-length p2, p5

    add-int/lit8 p2, p2, 0x3

    array-length p3, p1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1077
    array-length p2, p5

    add-int/lit8 p2, p2, 0x3

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    const/16 p2, 0x22

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1080
    array-length p2, p5

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1081
    array-length p2, p5

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    array-length p3, p5

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget-byte p3, p5, p3

    and-int/lit16 p3, p3, 0xf0

    const/16 p4, 0xf0

    if-ne p3, p4, :cond_19b

    const/4 p3, 0x1

    :goto_191
    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1083
    const/4 p2, 0x0

    array-length p3, p5

    invoke-virtual {p0, p5, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15b

    .line 1081
    :cond_19b
    const/4 p3, 0x0

    goto :goto_191
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 1256
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    .line 809
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 810
    :cond_4
    const/4 p0, 0x0

    .line 904
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_5
    return-object p0

    .line 813
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 815
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_25

    const/16 v0, 0x40

    :goto_f
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 816
    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 824
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_16
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 826
    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0xa0

    if-le p3, v0, :cond_27

    .line 828
    .end local v0           #mtiByte:B
    const/4 p0, 0x0

    goto :goto_5

    .line 815
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p3
    :cond_25
    const/4 v0, 0x0

    goto :goto_f

    .line 839
    .end local p3
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_27
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 844
    sget p3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p3, :cond_4e

    .line 845
    sget p3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 846
    const-string p3, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RHS0520] vp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_4e
    const/4 p3, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_53
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_16 .. :try_end_53} :catch_5b

    .line 903
    .end local p2
    .end local p4
    :goto_53
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 904
    goto :goto_5

    .line 852
    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    .restart local p4
    :catch_5b
    move-exception p1

    .line 858
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_5c
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_61} :catch_86

    move-result-object p1

    .line 866
    .local p1, textPart:[B
    if-eqz p4, :cond_91

    .line 868
    array-length p2, p4

    .end local p2
    array-length p3, p1

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [B

    .line 870
    .local p2, userData:[B
    const/4 p3, 0x0

    array-length v0, p4

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 871
    const/4 p3, 0x0

    const/4 v0, 0x1

    array-length v2, p4

    invoke-static {p4, p3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    add-int/lit8 p4, p4, 0x1

    array-length v0, p1

    invoke-static {p1, p3, p2, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 878
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_7f
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_93

    .line 880
    const/4 p0, 0x0

    goto :goto_5

    .line 859
    .end local p1           #userData:[B
    .local p2, message:Ljava/lang/String;
    .restart local p4
    :catch_86
    move-exception p0

    .line 860
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 875
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    .restart local p2       #message:Ljava/lang/String;
    :cond_91
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_7f

    .line 885
    .end local p2           #message:Ljava/lang/String;
    .end local p4
    :cond_93
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 890
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p2, :cond_bb

    .line 891
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 892
    const-string p2, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[RHS0520] vp = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget p4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_bb
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 900
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_53
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 14
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x0

    .line 1275
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 1276
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1277
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 1278
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 1280
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1281
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 1283
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 1285
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_45

    .line 1286
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v5, 0x0

    .line 1314
    :goto_44
    return-object v5

    .line 1291
    :cond_45
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1292
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1299
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1304
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1307
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1308
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1311
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1313
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v5, v2

    .line 1314
    goto :goto_44
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "GSM"

    .line 1391
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1395
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_6c

    .line 1396
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1403
    :goto_10
    if-eqz p3, :cond_1c

    .line 1405
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 1406
    const-string v2, "GSM"

    const-string v2, "SMS status report requested"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_1c
    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v2, :cond_23

    .line 1412
    or-int/lit8 v2, p2, 0x10

    int-to-byte p2, v2

    .line 1414
    :cond_23
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS0520] getSubmitPduHead -mtiByte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1420
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1426
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_73

    .line 1427
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->KTsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1438
    .local v1, daBytes:[B
    :goto_51
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_78

    move v3, v6

    :goto_60
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1442
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1445
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1446
    return-object v0

    .line 1398
    .end local v1           #daBytes:[B
    :cond_6c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_10

    .line 1430
    :cond_73
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1       #daBytes:[B
    goto :goto_51

    :cond_78
    move v3, v5

    .line 1438
    goto :goto_60
.end method

.method private static getSubmitPduHeadKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 12
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1335
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1339
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_41

    .line 1340
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1347
    :goto_e
    if-eqz p3, :cond_1a

    .line 1349
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 1350
    const-string v2, "GSM"

    const-string v3, "SMS status report requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1356
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1360
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1364
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_48

    move v3, v6

    :goto_33
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1368
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1371
    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1372
    return-object v0

    .line 1342
    .end local v1           #daBytes:[B
    :cond_41
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_e

    .restart local v1       #daBytes:[B
    :cond_48
    move v3, v5

    .line 1364
    goto :goto_33
.end method

.method public static getSubmitPduKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 16
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 723
    if-eqz p2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v7, v10

    .line 792
    :goto_7
    return-object v7

    .line 727
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 729
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_27

    const/16 v7, 0x40

    :goto_11
    or-int/lit8 v7, v7, 0x1

    int-to-byte v2, v7

    .line 730
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHeadKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 738
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_18
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 740
    .local v6, userData:[B
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_29

    move-object v7, v10

    .line 742
    goto :goto_7

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v6           #userData:[B
    :cond_27
    move v7, v9

    .line 729
    goto :goto_11

    .line 752
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    .restart local v6       #userData:[B
    :cond_29
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 754
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_18 .. :try_end_32} :catch_3a

    .line 791
    :goto_32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v7, v3

    .line 792
    goto :goto_7

    .line 755
    .end local v6           #userData:[B
    :catch_3a
    move-exception v7

    move-object v1, v7

    .line 761
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3c
    const-string v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_41} :catch_59

    move-result-object v4

    .line 769
    .local v4, textPart:[B
    if-eqz p4, :cond_64

    .line 770
    array-length v7, p4

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 772
    .restart local v6       #userData:[B
    array-length v7, p4

    invoke-static {p4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    array-length v7, p4

    array-length v8, v4

    invoke-static {v4, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    :goto_52
    array-length v7, v6

    const/16 v8, 0x8c

    if-le v7, v8, :cond_66

    move-object v7, v10

    .line 780
    goto :goto_7

    .line 762
    .end local v4           #textPart:[B
    .end local v6           #userData:[B
    :catch_59
    move-exception v7

    move-object v5, v7

    .line 763
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 766
    goto :goto_7

    .line 775
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #textPart:[B
    :cond_64
    move-object v6, v4

    .restart local v6       #userData:[B
    goto :goto_52

    .line 785
    :cond_66
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 787
    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 789
    array-length v7, v6

    invoke-virtual {v0, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_32
.end method

.method public static getSubmitPduSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 1110
    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    .line 1111
    :cond_4
    const/4 p0, 0x0

    .line 1239
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    :goto_5
    return-object p0

    .line 1114
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1116
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_28

    const/16 v0, 0x40

    :goto_f
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 1117
    .local v0, mtiByte:B
    invoke-static {p0, p1, v0, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 1120
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 p1, 0x1

    if-ne p5, p1, :cond_ad

    .line 1125
    .end local p1
    :try_start_19
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 1127
    .local p1, userData:[B
    const/4 p3, 0x0

    aget-byte p3, p1, p3

    .end local p3
    and-int/lit16 p3, p3, 0xff

    const/16 p5, 0xa0

    if-le p3, p5, :cond_2a

    .line 1129
    .end local p5
    const/4 p0, 0x0

    goto :goto_5

    .line 1116
    .end local v0           #mtiByte:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p3
    .restart local p5
    :cond_28
    const/4 v0, 0x0

    goto :goto_f

    .line 1139
    .end local p3
    .end local p5
    .restart local v0       #mtiByte:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, userData:[B
    :cond_2a
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1143
    sget p3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p3, :cond_51

    .line 1144
    sget p3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1145
    const-string p3, "GSM"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RHS0520] vp = "

    .end local v0           #mtiByte:B
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_51
    const/4 p3, 0x0

    array-length p5, p1

    invoke-virtual {p0, p1, p3, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_56
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_19 .. :try_end_56} :catch_5e

    .line 1238
    .end local p2
    .end local p4
    :goto_56
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object p0, v1

    .line 1239
    goto :goto_5

    .line 1149
    .end local p1           #userData:[B
    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    .restart local p4
    :catch_5e
    move-exception p1

    .line 1155
    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_5f
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1156
    .local p1, textPart:[B
    const-string p2, "GSM"

    .end local p2
    const-string p3, "[RHS0919] getSubmitPdu\tutf-16be"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_6c} :catch_88

    .line 1164
    if-eqz p4, :cond_93

    .line 1165
    array-length p2, p4

    array-length p3, p1

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 1167
    .local p2, userData:[B
    const/4 p3, 0x0

    const/4 p5, 0x0

    array-length v0, p4

    invoke-static {p4, p3, p2, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 1173
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_80
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_95

    .line 1175
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1157
    .end local p1           #userData:[B
    .restart local p4
    :catch_88
    move-exception p0

    .line 1158
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1170
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    :cond_93
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_80

    .line 1180
    .end local p4
    :cond_95
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1183
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p2, :cond_a3

    .line 1184
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1188
    :cond_a3
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1190
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_56

    .line 1198
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .local p2, message:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_ad
    :try_start_ad
    const-string p1, "utf-16be"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1199
    .local p1, textPart:[B
    const-string p2, "GSM"

    .end local p2           #message:Ljava/lang/String;
    const-string p3, "[RHS0919]ENCODING_16BIT getSubmitPdu\tutf-16be"

    .end local p3
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ad .. :try_end_ba} :catch_d6

    .line 1207
    if-eqz p4, :cond_e1

    .line 1208
    array-length p2, p4

    array-length p3, p1

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 1210
    .local p2, userData:[B
    const/4 p3, 0x0

    const/4 p5, 0x0

    array-length v0, p4

    .end local v0           #mtiByte:B
    .end local p5
    invoke-static {p4, p3, p2, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    const/4 p3, 0x0

    array-length p4, p4

    .end local p4
    array-length p5, p1

    invoke-static {p1, p3, p2, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 1216
    .end local p2           #userData:[B
    .local p1, userData:[B
    :goto_ce
    array-length p2, p1

    const/16 p3, 0x8c

    if-le p2, p3, :cond_e3

    .line 1218
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1200
    .end local p1           #userData:[B
    .restart local v0       #mtiByte:B
    .restart local p4
    .restart local p5
    :catch_d6
    move-exception p0

    .line 1201
    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 1213
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, textPart:[B
    :cond_e1
    move-object p1, p1

    .local p1, userData:[B
    goto :goto_ce

    .line 1223
    .end local v0           #mtiByte:B
    .end local p4
    .end local p5
    :cond_e3
    const/16 p2, 0xb

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1227
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez p2, :cond_f1

    .line 1228
    sget p2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1232
    :cond_f1
    array-length p2, p1

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1234
    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_56
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 5
    .parameter "pdu"

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 431
    .local v0, len:I
    const/4 v1, 0x0

    .line 433
    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 435
    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method public static newFromCBS([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 6
    .parameter "lines"

    .prologue
    .line 363
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 364
    .local v0, cbsmsg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseCbsPdu([B)V

    .line 365
    const-string v2, "[SmsMessage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newFromCBS()-CBS PDU to BYTES: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2e} :catch_30

    move-object v2, v0

    .line 369
    .end local v0           #cbsmsg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_2f
    return-object v2

    .line 367
    :catch_30
    move-exception v2

    move-object v1, v2

    .line 368
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CBS PDU parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "line"

    .prologue
    .line 341
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 342
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_e

    move-object v2, v1

    .line 346
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_d
    return-object v2

    .line 344
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 345
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 5
    .parameter "lines"

    .prologue
    .line 321
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 322
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_11

    move-object v2, v1

    .line 326
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_10
    return-object v2

    .line 324
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 325
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 3
    .parameter "line"

    .prologue
    .line 334
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .registers 3
    .parameter "p"

    .prologue
    .line 380
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseCbsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;)V
    .registers 7
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const-string v3, "[SmsManager]"

    .line 2840
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isCBMessage:Z

    .line 2842
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getSerialNumber()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->serialNumber:I

    .line 2844
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getGeoScope()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->geoScope:I

    .line 2846
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getMessageCode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageCode:I

    .line 2848
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getUpdateNumber()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->updateNumber:I

    .line 2850
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getMessageId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageIdentifier:Ljava/lang/String;

    .line 2852
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getCBSDataCodingScheme()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    .line 2854
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getPageParameter()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->pageParameter:I

    .line 2856
    iget v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->mCurrentPage:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->currentPageNumber:I

    .line 2858
    iget v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->mTotalPage:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->totalPageNumber:I

    .line 2860
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->pdu:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0x90

    if-ne v1, v2, :cond_117

    move v0, v4

    .line 2863
    .local v0, hasUserDataHeader:Z
    :goto_43
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->serialNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-geoScope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->geoScope:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-messageCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-updateNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->updateNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-message Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-DCS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-Current page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->currentPageNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    const-string v1, "[SmsManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCbsDeliver()-Toatal page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->totalPageNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseCbsUserData(Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;Z)V

    .line 2873
    return-void

    .line 2860
    .end local v0           #hasUserDataHeader:Z
    :cond_117
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_43
.end method

.method private parseCbsPdu([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    .line 2671
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 2673
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;-><init>([B)V

    .line 2675
    .local v0, p:Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseCbsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;)V

    .line 2676
    return-void
.end method

.method private parseCbsUserData(Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;Z)V
    .registers 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/4 v8, 0x1

    const-string v7, "[SmsMessage]"

    .line 3208
    const/4 v3, 0x0

    .line 3209
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 3211
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 3213
    .local v2, encodingType:I
    const/4 v0, 0x1

    .line 3215
    .local v0, cbsDcsLanguage:I
    const-string v5, "[SmsMessage]"

    const-string v5, "parseCbsUserData() START"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    if-nez v5, :cond_103

    .line 3219
    const/4 v2, 0x1

    .line 3221
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_25a

    .line 3482
    :cond_1c
    :goto_1c
    if-ne v2, v8, :cond_242

    move v5, v8

    :goto_1f
    invoke-virtual {p1, p2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->constructUserData(ZZ)I

    move-result v1

    .line 3484
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 3486
    packed-switch v2, :pswitch_data_27e

    .line 3501
    :goto_2c
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->cblanguage:I

    .line 3502
    const-string v5, "[SmsMessage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CBS DCS LANGUAGE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const-string v5, "[SmsMessage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CBS message body (raw): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    return-void

    .line 3224
    .end local v1           #count:I
    :pswitch_61
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language GERMAN"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    const/4 v0, 0x0

    .line 3227
    goto :goto_1c

    .line 3229
    :pswitch_6a
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language ENGLISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/4 v0, 0x1

    .line 3232
    goto :goto_1c

    .line 3234
    :pswitch_73
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language ITALIAN"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    const/4 v0, 0x2

    .line 3237
    goto :goto_1c

    .line 3239
    :pswitch_7c
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language FRENCH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const/4 v0, 0x3

    .line 3242
    goto :goto_1c

    .line 3244
    :pswitch_85
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language SPANISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    const/4 v0, 0x4

    .line 3247
    goto :goto_1c

    .line 3249
    :pswitch_8e
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language DUTCH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const/4 v0, 0x5

    .line 3252
    goto :goto_1c

    .line 3254
    :pswitch_97
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language SWEDISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const/4 v0, 0x6

    .line 3257
    goto/16 :goto_1c

    .line 3259
    :pswitch_a1
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language DANISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const/4 v0, 0x7

    .line 3262
    goto/16 :goto_1c

    .line 3264
    :pswitch_ab
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language PORTUGUESE"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    const/16 v0, 0x8

    .line 3267
    goto/16 :goto_1c

    .line 3269
    :pswitch_b6
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language FINNISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    const/16 v0, 0x9

    .line 3272
    goto/16 :goto_1c

    .line 3274
    :pswitch_c1
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language NORWEGIAN"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    const/16 v0, 0xa

    .line 3277
    goto/16 :goto_1c

    .line 3279
    :pswitch_cc
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language GREEK"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    const/16 v0, 0xb

    .line 3282
    goto/16 :goto_1c

    .line 3284
    :pswitch_d7
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language TURKISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    const/16 v0, 0xc

    .line 3287
    goto/16 :goto_1c

    .line 3289
    :pswitch_e2
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language HUNGARIAN"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const/16 v0, 0xd

    .line 3292
    goto/16 :goto_1c

    .line 3294
    :pswitch_ed
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language POLISH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    const/16 v0, 0xe

    .line 3297
    goto/16 :goto_1c

    .line 3299
    :pswitch_f8
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language UNSPECIFIED"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    const/16 v0, 0xf

    .line 3302
    goto/16 :goto_1c

    .line 3306
    :cond_103
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_11b

    .line 3307
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_28a

    .line 3316
    const/4 v2, 0x1

    .line 3317
    goto/16 :goto_1c

    .line 3310
    :pswitch_115
    const/4 v2, 0x1

    .line 3311
    goto/16 :goto_1c

    .line 3313
    :pswitch_118
    const/4 v2, 0x3

    .line 3314
    goto/16 :goto_1c

    .line 3319
    :cond_11b
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x20

    if-ne v5, v6, :cond_164

    .line 3320
    const/4 v2, 0x1

    .line 3322
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xf

    packed-switch v5, :pswitch_data_292

    goto/16 :goto_1c

    .line 3325
    :pswitch_12d
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language CZECH"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const/16 v0, 0x20

    .line 3328
    goto/16 :goto_1c

    .line 3330
    :pswitch_138
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language HEBREW"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    const/16 v0, 0x21

    .line 3333
    goto/16 :goto_1c

    .line 3335
    :pswitch_143
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language ARABIC"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const/16 v0, 0x22

    .line 3338
    goto/16 :goto_1c

    .line 3340
    :pswitch_14e
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language RUSSIAN"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const/16 v0, 0x23

    .line 3343
    goto/16 :goto_1c

    .line 3345
    :pswitch_159
    const-string v5, "[SmsMessage]"

    const-string v5, "CBS Language ICELANDIC"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    const/16 v0, 0x24

    goto/16 :goto_1c

    .line 3350
    :cond_164
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x30

    if-ne v5, v6, :cond_16f

    .line 3351
    const/4 v2, 0x1

    goto/16 :goto_1c

    .line 3352
    :cond_16f
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x40

    if-lt v5, v6, :cond_1cf

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x70

    if-gt v5, v6, :cond_1cf

    .line 3353
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    sparse-switch v5, :sswitch_data_2a0

    .line 3376
    :goto_186
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2b2

    .line 3391
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 3394
    :goto_191
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xc

    sparse-switch v5, :sswitch_data_2be

    .line 3409
    const/4 v2, 0x1

    .line 3410
    goto/16 :goto_1c

    .line 3356
    :sswitch_19b
    const/4 v3, 0x0

    .line 3357
    const/4 v4, 0x0

    .line 3358
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_186

    .line 3361
    :sswitch_1a2
    const/4 v3, 0x1

    .line 3362
    const/4 v4, 0x0

    .line 3363
    goto :goto_186

    .line 3365
    :sswitch_1a5
    const/4 v3, 0x0

    .line 3366
    const/4 v4, 0x1

    .line 3367
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_186

    .line 3370
    :sswitch_1ac
    const/4 v3, 0x1

    .line 3371
    const/4 v4, 0x1

    .line 3372
    goto :goto_186

    .line 3379
    :pswitch_1af
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_191

    .line 3382
    :pswitch_1b4
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_191

    .line 3385
    :pswitch_1b9
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_191

    .line 3388
    :pswitch_1be
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_191

    .line 3397
    :sswitch_1c3
    const/4 v2, 0x1

    .line 3398
    goto/16 :goto_1c

    .line 3400
    :sswitch_1c6
    const/4 v2, 0x2

    .line 3401
    goto/16 :goto_1c

    .line 3403
    :sswitch_1c9
    const/4 v2, 0x3

    .line 3404
    goto/16 :goto_1c

    .line 3406
    :sswitch_1cc
    const/4 v2, 0x0

    .line 3407
    goto/16 :goto_1c

    .line 3414
    :cond_1cf
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_20c

    .line 3415
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2d0

    .line 3430
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 3433
    :goto_1e2
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xc

    sparse-switch v5, :sswitch_data_2dc

    .line 3448
    const/4 v2, 0x1

    .line 3449
    goto/16 :goto_1c

    .line 3418
    :pswitch_1ec
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_1e2

    .line 3421
    :pswitch_1f1
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_1e2

    .line 3424
    :pswitch_1f6
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_1e2

    .line 3427
    :pswitch_1fb
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_1e2

    .line 3436
    :sswitch_200
    const/4 v2, 0x1

    .line 3437
    goto/16 :goto_1c

    .line 3439
    :sswitch_203
    const/4 v2, 0x2

    .line 3440
    goto/16 :goto_1c

    .line 3442
    :sswitch_206
    const/4 v2, 0x3

    .line 3443
    goto/16 :goto_1c

    .line 3445
    :sswitch_209
    const/4 v2, 0x0

    .line 3446
    goto/16 :goto_1c

    .line 3451
    :cond_20c
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_1c

    .line 3452
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2ee

    .line 3467
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 3470
    :goto_21f
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    and-int/lit8 v5, v5, 0xc

    sparse-switch v5, :sswitch_data_2fa

    goto/16 :goto_1c

    .line 3473
    :sswitch_228
    const/4 v2, 0x1

    .line 3474
    goto/16 :goto_1c

    .line 3455
    :pswitch_22b
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_21f

    .line 3458
    :pswitch_230
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_21f

    .line 3461
    :pswitch_235
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_21f

    .line 3464
    :pswitch_23a
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_21f

    .line 3476
    :sswitch_23f
    const/4 v2, 0x2

    goto/16 :goto_1c

    .line 3482
    :cond_242
    const/4 v5, 0x0

    goto/16 :goto_1f

    .line 3489
    .restart local v1       #count:I
    :pswitch_245
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2c

    .line 3493
    :pswitch_24a
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2c

    .line 3497
    :pswitch_252
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$CbsPduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_2c

    .line 3221
    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_6a
        :pswitch_73
        :pswitch_7c
        :pswitch_85
        :pswitch_8e
        :pswitch_97
        :pswitch_a1
        :pswitch_ab
        :pswitch_b6
        :pswitch_c1
        :pswitch_cc
        :pswitch_d7
        :pswitch_e2
        :pswitch_ed
        :pswitch_f8
    .end packed-switch

    .line 3486
    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_245
        :pswitch_24a
        :pswitch_245
        :pswitch_252
    .end packed-switch

    .line 3307
    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_115
        :pswitch_118
    .end packed-switch

    .line 3322
    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_12d
        :pswitch_138
        :pswitch_143
        :pswitch_14e
        :pswitch_159
    .end packed-switch

    .line 3353
    :sswitch_data_2a0
    .sparse-switch
        0x40 -> :sswitch_19b
        0x50 -> :sswitch_1a2
        0x60 -> :sswitch_1a5
        0x70 -> :sswitch_1ac
    .end sparse-switch

    .line 3376
    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_1b4
        :pswitch_1b9
        :pswitch_1be
    .end packed-switch

    .line 3394
    :sswitch_data_2be
    .sparse-switch
        0x0 -> :sswitch_1c3
        0x4 -> :sswitch_1c6
        0x8 -> :sswitch_1c9
        0xc -> :sswitch_1cc
    .end sparse-switch

    .line 3415
    :pswitch_data_2d0
    .packed-switch 0x0
        :pswitch_1ec
        :pswitch_1f1
        :pswitch_1f6
        :pswitch_1fb
    .end packed-switch

    .line 3433
    :sswitch_data_2dc
    .sparse-switch
        0x0 -> :sswitch_200
        0x4 -> :sswitch_203
        0x8 -> :sswitch_206
        0xc -> :sswitch_209
    .end sparse-switch

    .line 3452
    :pswitch_data_2ee
    .packed-switch 0x0
        :pswitch_22b
        :pswitch_230
        :pswitch_235
        :pswitch_23a
    .end packed-switch

    .line 3470
    :sswitch_data_2fa
    .sparse-switch
        0x0 -> :sswitch_228
        0x4 -> :sswitch_23f
    .end sparse-switch
.end method

.method private parsePdu([B)V
    .registers 7
    .parameter "pdu"

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 2693
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 2695
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    .line 2697
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 2698
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    :cond_2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 2707
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 2708
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_4c

    .line 2726
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2712
    :pswitch_40
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 2728
    :goto_43
    return-void

    .line 2717
    :pswitch_44
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_43

    .line 2722
    :pswitch_48
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_43

    .line 2708
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 11
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "SmsMessage"

    .line 2780
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_fc

    move v1, v7

    :goto_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 2782
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 2784
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_17

    .line 2791
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 2795
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 2802
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 2804
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS SC timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ff

    move v0, v7

    .line 2808
    .local v0, hasUserDataHeader:Z
    :goto_4a
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 2812
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KTF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    if-eqz v0, :cond_fb

    .line 2813
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_71

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x48

    if-eq v1, v2, :cond_71

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_77

    .line 2817
    :cond_71
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getVoiceMessage()Lcom/android/internal/telephony/gsm/SmsVoice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    .line 2820
    :cond_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getReplyAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 2822
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v1, :cond_9d

    .line 2823
    const-string v1, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS originating address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_9d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    if-eqz v1, :cond_fb

    .line 2827
    const-string v1, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice total count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsVoice;->getvoicetotalcount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const-string v1, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice new count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsVoice;->getvoicenewcount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const-string v1, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsVoice;->isVoicemessage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_fb
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_fc
    move v1, v6

    .line 2780
    goto/16 :goto_b

    :cond_ff
    move v0, v6

    .line 2806
    goto/16 :goto_4a
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 10
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2737
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 2740
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_3d

    move v3, v5

    :goto_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 2742
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 2744
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 2746
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 2748
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 2750
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 2753
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2755
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 2756
    .local v0, extraParams:I
    move v2, v0

    .line 2757
    .local v2, moreExtraParams:I
    :goto_34
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_3f

    .line 2761
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_34

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_3d
    move v3, v6

    .line 2740
    goto :goto_9

    .line 2764
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_3f
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_49

    .line 2765
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 2768
    :cond_49
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_53

    .line 2769
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 2772
    :cond_53
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_61

    .line 2773
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_62

    move v1, v5

    .line 2774
    .local v1, hasUserDataHeader:Z
    :goto_5e
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 2777
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_61
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_62
    move v1, v6

    .line 2773
    goto :goto_5e
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 9
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2877
    and-int/lit16 v2, p2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_48

    move v2, v4

    :goto_9
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 2879
    shr-int/lit8 v2, p2, 0x5

    and-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->statusReportReq:I

    .line 2881
    shr-int/lit8 v2, p2, 0x3

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpFormatPresent:I

    .line 2883
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 2886
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 2891
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 2895
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 2898
    const/4 v1, 0x0

    .line 2899
    .local v1, tmp:I
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpFormatPresent:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    .line 2900
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->countVpoctets(I)I

    move-result v1

    .line 2906
    :cond_39
    :goto_39
    sget-wide v2, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 2909
    and-int/lit8 v2, p2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_59

    move v0, v4

    .line 2911
    .local v0, hasUserDataHeader:Z
    :goto_44
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 2912
    return-void

    .end local v0           #hasUserDataHeader:Z
    .end local v1           #tmp:I
    :cond_48
    move v2, v5

    .line 2877
    goto :goto_9

    .line 2901
    .restart local v1       #tmp:I
    :cond_4a
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpFormatPresent:I

    if-eq v2, v4, :cond_53

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpFormatPresent:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_39

    .line 2902
    :cond_53
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->countVpoctets(I)I

    move-result v1

    goto :goto_39

    :cond_59
    move v0, v5

    .line 2909
    goto :goto_44
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 21
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 2924
    const/4 v9, 0x0

    .line 2925
    .local v9, hasMessageClass:Z
    const/4 v14, 0x0

    .line 2927
    .local v14, userDataCompressed:Z
    const/4 v8, 0x0

    .line 2929
    .local v8, encodingType:I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v13

    .line 2933
    .local v13, operator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0x80

    if-nez v15, :cond_15f

    .line 2935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_119

    const/4 v15, 0x1

    :goto_1a
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 2936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_11c

    const/4 v15, 0x1

    move v14, v15

    .line 2937
    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_120

    const/4 v15, 0x1

    move v9, v15

    .line 2939
    :goto_35
    if-eqz v14, :cond_124

    .line 2940
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_5b
    :goto_5b
    const/4 v15, 0x1

    if-ne v8, v15, :cond_2a3

    const/4 v15, 0x1

    :goto_5f
    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v4

    .line 3056
    .local v4, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 3057
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 3062
    const-string v15, "KTF"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_39d

    .line 3064
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    move v15, v0

    if-eqz v15, :cond_2a9

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v15, v0

    if-eqz v15, :cond_2a9

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_9b
    :goto_9b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 3068
    .local v7, element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/4 v12, -0x1

    .line 3070
    .local v12, iei:I
    iget v12, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 3071
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isMwi iei= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const/4 v15, 0x1

    if-ne v12, v15, :cond_9b

    .line 3074
    iget-object v5, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 3075
    .local v5, data:[B
    const/4 v11, -0x1

    .line 3076
    .local v11, ied:I
    const/4 v15, 0x0

    aget-byte v15, v5, v15

    and-int/lit16 v11, v15, 0xff

    .line 3077
    const/16 v15, 0x80

    if-eq v11, v15, :cond_d6

    if-nez v11, :cond_9b

    .line 3078
    :cond_d6
    const/4 v15, 0x1

    aget-byte v15, v5, v15

    and-int/lit16 v15, v15, 0xff

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    .line 3079
    and-int/lit16 v15, v11, 0x80

    if-nez v15, :cond_2a6

    const/4 v15, 0x1

    :goto_e5
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 3080
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isMwi countVM = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mwiDontStore = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 2935
    .end local v4           #count:I
    .end local v5           #data:[B
    .end local v7           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ied:I
    .end local v12           #iei:I
    :cond_119
    const/4 v15, 0x0

    goto/16 :goto_1a

    .line 2936
    :cond_11c
    const/4 v15, 0x0

    move v14, v15

    goto/16 :goto_2a

    .line 2937
    :cond_120
    const/4 v15, 0x0

    move v9, v15

    goto/16 :goto_35

    .line 2943
    :cond_124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    shr-int/lit8 v15, v15, 0x2

    and-int/lit8 v15, v15, 0x3

    packed-switch v15, :pswitch_data_478

    goto/16 :goto_5b

    .line 2945
    :pswitch_132
    const/4 v8, 0x1

    .line 2946
    goto/16 :goto_5b

    .line 2949
    :pswitch_135
    const/4 v8, 0x3

    .line 2950
    goto/16 :goto_5b

    .line 2954
    :pswitch_138
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "1 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    const/4 v8, 0x2

    goto/16 :goto_5b

    .line 2960
    :cond_15f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xf0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_184

    .line 2961
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 2962
    const/4 v9, 0x1

    .line 2963
    const/4 v14, 0x0

    .line 2965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x4

    if-nez v15, :cond_181

    .line 2967
    const/4 v8, 0x1

    goto/16 :goto_5b

    .line 2970
    :cond_181
    const/4 v8, 0x2

    goto/16 :goto_5b

    .line 2972
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xc0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1ae

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xd0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1ae

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xe0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_22b

    .line 2981
    :cond_1ae
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xe0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1f8

    .line 2982
    const/4 v8, 0x3

    .line 2996
    :goto_1bd
    const/4 v14, 0x0

    .line 2997
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x8

    const/16 v16, 0x8

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1fa

    const/4 v15, 0x1

    move v3, v15

    .line 3001
    .local v3, active:Z
    :goto_1ce
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x3

    if-nez v15, :cond_1ff

    .line 3002
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 3003
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 3004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xf0

    const/16 v16, 0xc0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1fd

    const/4 v15, 0x1

    :goto_1f1
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    goto/16 :goto_5b

    .line 2984
    .end local v3           #active:Z
    :cond_1f8
    const/4 v8, 0x1

    goto :goto_1bd

    .line 2997
    :cond_1fa
    const/4 v15, 0x0

    move v3, v15

    goto :goto_1ce

    .line 3004
    .restart local v3       #active:Z
    :cond_1fd
    const/4 v15, 0x0

    goto :goto_1f1

    .line 3006
    :cond_1ff
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 3008
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MWI for fax, email, or other "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 3017
    .end local v3           #active:Z
    :cond_22b
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "3 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const-string v15, "KTF"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5b

    .line 3022
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 3023
    const/4 v9, 0x0

    .line 3024
    const/4 v14, 0x0

    .line 3027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0xc

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_275

    .line 3028
    const/4 v8, 0x2

    goto/16 :goto_5b

    .line 3031
    :cond_275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v6, v15, 0xf0

    .line 3032
    .local v6, dataCodingScheme_byte:I
    const/16 v15, 0x80

    if-eq v6, v15, :cond_284

    const/16 v15, 0x90

    if-ne v6, v15, :cond_298

    .line 3033
    :cond_284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    shr-int/lit8 v15, v15, 0x2

    and-int/lit8 v15, v15, 0x3

    packed-switch v15, :pswitch_data_484

    goto/16 :goto_5b

    .line 3037
    :pswitch_292
    const/4 v8, 0x1

    .line 3038
    goto/16 :goto_5b

    .line 3040
    :pswitch_295
    const/4 v8, 0x2

    goto/16 :goto_5b

    .line 3043
    :cond_298
    const/16 v15, 0xa0

    if-eq v6, v15, :cond_2a0

    const/16 v15, 0xb0

    if-ne v6, v15, :cond_5b

    .line 3044
    :cond_2a0
    const/4 v8, 0x1

    goto/16 :goto_5b

    .line 3054
    .end local v6           #dataCodingScheme_byte:I
    :cond_2a3
    const/4 v15, 0x0

    goto/16 :goto_5f

    .line 3079
    .restart local v4       #count:I
    .restart local v5       #data:[B
    .restart local v7       #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #ied:I
    .restart local v12       #iei:I
    :cond_2a6
    const/4 v15, 0x0

    goto/16 :goto_e5

    .line 3086
    .end local v5           #data:[B
    .end local v7           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ied:I
    .end local v12           #iei:I
    :cond_2a9
    if-eqz p2, :cond_370

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    move v15, v0

    if-nez v15, :cond_370

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit16 v15, v15, 0x80

    if-nez v15, :cond_370

    .line 3087
    const-string v15, "GSM"

    const-string v16, "SMS Class 0 with UDH-VMI"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v15, v0

    if-eqz v15, :cond_370

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_2d4
    :goto_2d4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_370

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 3091
    .restart local v7       #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/4 v12, -0x1

    .line 3093
    .restart local v12       #iei:I
    iget v12, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 3094
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SMS Class 0 with UDH-VMI ID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    const/4 v15, 0x1

    if-ne v12, v15, :cond_2d4

    .line 3097
    iget-object v5, v7, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 3098
    .restart local v5       #data:[B
    const/4 v11, -0x1

    .line 3099
    .restart local v11       #ied:I
    const/4 v15, 0x0

    aget-byte v15, v5, v15

    and-int/lit16 v11, v15, 0xff

    .line 3100
    const/16 v15, 0x80

    if-eq v11, v15, :cond_30f

    if-nez v11, :cond_361

    .line 3101
    :cond_30f
    const/4 v15, 0x1

    aget-byte v15, v5, v15

    and-int/lit16 v15, v15, 0xff

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    .line 3102
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 3103
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 3104
    and-int/lit16 v15, v11, 0x80

    if-nez v15, :cond_35f

    const/4 v15, 0x1

    :goto_32a
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 3105
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SMS Class 0 with UDH-VMI VMI countVM = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mwiDontStore = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d4

    .line 3104
    :cond_35f
    const/4 v15, 0x0

    goto :goto_32a

    .line 3107
    :cond_361
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 3108
    const-string v15, "GSM"

    const-string v16, "SMS Class 0 with UDH-VMI VMI MWI for fax, email, or other "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d4

    .line 3114
    .end local v5           #data:[B
    .end local v7           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ied:I
    .end local v12           #iei:I
    :cond_370
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    move v15, v0

    if-nez v15, :cond_39d

    if-nez v4, :cond_39d

    .line 3115
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    .line 3116
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SMS Class 0 count = 0 mwiDontStore = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_39d
    packed-switch v8, :pswitch_data_490

    .line 3160
    :goto_3a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_3aa

    .line 3161
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 3164
    :cond_3aa
    if-nez v9, :cond_42d

    .line 3165
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 3197
    :goto_3b3
    return-void

    .line 3128
    :pswitch_3b4
    const-string v15, "SmsMessage"

    const-string v16, "ENCODING_UNKNOWN : messageBody is unknown"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_3a0

    .line 3134
    :pswitch_3c2
    const-string v15, "ORG"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3e3

    .line 3135
    const-string v15, "SmsMessage"

    const-string v16, "ENCODING_8BIT : messageBody is ORANGE binary data format"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8Bit(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_3a0

    .line 3138
    :cond_3e3
    const-string v15, "KTF"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_404

    .line 3139
    const-string v15, "SmsMessage"

    const-string v16, "ENCODING_8BIT : messageBody is KT binary data format"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKS5601(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_3a0

    .line 3142
    :cond_404
    const-string v15, "SmsMessage"

    const-string v16, "ENCODING_8BIT : messageBody is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_3a0

    .line 3150
    :pswitch_412
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_3a0

    .line 3154
    :pswitch_41f
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_3a0

    .line 3170
    :cond_42d
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v15

    const-string v16, "KTF"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_447

    .line 3171
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3b3

    .line 3176
    :cond_447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    move v15, v0

    and-int/lit8 v15, v15, 0x3

    packed-switch v15, :pswitch_data_49c

    goto/16 :goto_3b3

    .line 3178
    :pswitch_453
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3b3

    .line 3181
    :pswitch_45c
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3b3

    .line 3184
    :pswitch_465
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3b3

    .line 3187
    :pswitch_46e
    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3b3

    .line 2943
    nop

    :pswitch_data_478
    .packed-switch 0x0
        :pswitch_132
        :pswitch_138
        :pswitch_135
        :pswitch_138
    .end packed-switch

    .line 3033
    :pswitch_data_484
    .packed-switch 0x0
        :pswitch_292
        :pswitch_295
        :pswitch_292
        :pswitch_292
    .end packed-switch

    .line 3125
    :pswitch_data_490
    .packed-switch 0x0
        :pswitch_3b4
        :pswitch_412
        :pswitch_3c2
        :pswitch_41f
    .end packed-switch

    .line 3176
    :pswitch_data_49c
    .packed-switch 0x0
        :pswitch_453
        :pswitch_45c
        :pswitch_465
        :pswitch_46e
    .end packed-switch
.end method

.method public static setTimeforSMSonSIM(J)V
    .registers 2
    .parameter "timemillisec"

    .prologue
    .line 2545
    sput-wide p0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    .line 2546
    return-void
.end method

.method public static setValidityPeriod(I)V
    .registers 4
    .parameter "validityperiod"

    .prologue
    .line 702
    sput p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    .line 703
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RHS0520] SetValidityPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method


# virtual methods
.method public IsVoicemesssagetype()Z
    .registers 2

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    if-nez v0, :cond_6

    .line 2508
    const/4 v0, 0x0

    .line 2510
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsVoice;->isVoicemessage()Z

    move-result v0

    goto :goto_5
.end method

.method public getCBSLanguage()I
    .registers 2

    .prologue
    .line 2390
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->cblanguage:I

    return v0
.end method

.method public getCurrentPageNumber()I
    .registers 2

    .prologue
    .line 2405
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->currentPageNumber:I

    return v0
.end method

.method public getDataCodingScemeCBS()I
    .registers 2

    .prologue
    .line 2382
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme_CBS:I

    return v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-nez v0, :cond_6

    .line 2523
    const/4 v0, 0x0

    .line 2526
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->destinationAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getGeoScope()I
    .registers 2

    .prologue
    .line 2350
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->geoScope:I

    return v0
.end method

.method public getIsCbMessage()Z
    .registers 2

    .prologue
    .line 2334
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isCBMessage:Z

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .registers 2

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageCode()I
    .registers 2

    .prologue
    .line 2358
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageCode:I

    return v0
.end method

.method public getMessageIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginReplyAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    return-object v0
.end method

.method public getOriginReplyAddressNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-nez v0, :cond_7

    .line 2466
    const-string v0, ""

    .line 2469
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replynumber:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getPageParameter()I
    .registers 2

    .prologue
    .line 2397
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->pageParameter:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .registers 2

    .prologue
    .line 2552
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getSerialNumber()I
    .registers 2

    .prologue
    .line 2342
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->serialNumber:I

    return v0
.end method

.method public getSpecialnewCount()I
    .registers 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    if-nez v0, :cond_6

    .line 2486
    const/4 v0, -0x1

    .line 2488
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsVoice;->getvoicenewcount()I

    move-result v0

    goto :goto_5
.end method

.method public getSpecialtotalCount()I
    .registers 2

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    if-nez v0, :cond_6

    .line 2497
    const/4 v0, -0x1

    .line 2499
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->voicenumber:Lcom/android/internal/telephony/gsm/SmsVoice;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsVoice;->getvoicetotalcount()I

    move-result v0

    goto :goto_5
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 2655
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getStatusReportReq()I
    .registers 2

    .prologue
    .line 2535
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->statusReportReq:I

    return v0
.end method

.method public getTotalPageNumber()I
    .registers 2

    .prologue
    .line 2413
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->totalPageNumber:I

    return v0
.end method

.method public getUpdateNumber()I
    .registers 2

    .prologue
    .line 2366
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->updateNumber:I

    return v0
.end method

.method public getcountVM()I
    .registers 2

    .prologue
    .line 2613
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->countVM:I

    return v0
.end method

.method public isCPHSMWIAddress()Z
    .registers 6

    .prologue
    const-string v4, "[SmsMessage]"

    .line 2622
    const/4 v0, 0x0

    .line 2623
    .local v0, isCphsAddr:Z
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWIAddress() START!!: isCphsAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_41

    .line 2625
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    .line 2626
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWIAddress() Suceess : isCphsAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2630
    .end local v0           #isCphsAddr:Z
    .local v1, isCphsAddr:I
    :goto_40
    return v1

    .line 2629
    .end local v1           #isCphsAddr:I
    .restart local v0       #isCphsAddr:Z
    .restart local p0
    :cond_41
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWIAddress() originatingAddress is null : isCphsAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2630
    .restart local v1       #isCphsAddr:I
    goto :goto_40
.end method

.method public isCPHSMWILine1OrLine2()I
    .registers 6

    .prologue
    const-string v4, "[SmsMessage]"

    .line 2640
    const/4 v0, -0x1

    .line 2641
    .local v0, isCphsLine1OrLine2:I
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWILine1OrLine2() START!!: isCphsLine1OrLine2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_41

    .line 2643
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageLine1OrLine2()I

    move-result v0

    .line 2644
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWILine1OrLine2() Suceess : isCphsLine1OrLine2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2648
    .end local v0           #isCphsLine1OrLine2:I
    .local v1, isCphsLine1OrLine2:I
    :goto_40
    return v1

    .line 2647
    .end local v1           #isCphsLine1OrLine2:I
    .restart local v0       #isCphsLine1OrLine2:I
    .restart local p0
    :cond_41
    const-string v2, "[SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCPHSMWILine1OrLine2() originatingAddress is null : isCphsLine1OrLine2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2648
    .end local v0           #isCphsLine1OrLine2:I
    .restart local v1       #isCphsLine1OrLine2:I
    goto :goto_40
.end method

.method public isCphsMwiMessage()Z
    .registers 2

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isMWIClearMessage()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2570
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_b

    move v0, v1

    .line 2574
    .end local p0
    :goto_a
    return v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMWISetMessage()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2580
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-ne v0, v1, :cond_b

    move v0, v1

    .line 2584
    .end local p0
    :goto_a
    return v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMwiDontStore()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2590
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-eqz v0, :cond_b

    move v0, v2

    .line 2604
    :goto_a
    return v0

    .line 2594
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2598
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1d
    move v0, v2

    .line 2601
    goto :goto_a

    .line 2604
    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isReplace()Z
    .registers 3

    .prologue
    .line 2557
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isReplyPathPresent()Z
    .registers 2

    .prologue
    .line 2665
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .registers 2

    .prologue
    .line 2660
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method
