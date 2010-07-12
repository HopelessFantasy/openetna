.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final RESULT_ERROR_FDN_FAILURE:I = 0x5

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static mEncodingtype:I

.field private static sConcatenatedRef:I

.field private static sInstance:Landroid/telephony/SmsManager;

.field static vp:I


# instance fields
.field private countryCode:Ljava/lang/String;

.field private operatorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 68
    sput v0, Landroid/telephony/SmsManager;->vp:I

    .line 74
    sput v0, Landroid/telephony/SmsManager;->mEncodingtype:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsManager;->operatorCode:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsManager;->countryCode:Ljava/lang/String;

    .line 698
    return-void
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_26

    .line 1176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1177
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_26

    .line 1178
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1180
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_23

    .line 1181
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1182
    .local v4, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1186
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_26
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .registers 2

    .prologue
    .line 685
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    if-nez v0, :cond_18

    .line 686
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 689
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Landroid/telephony/SmsManager;->sConcatenatedRef:I

    .line 693
    :cond_18
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 633
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 634
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_f

    .line 635
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 640
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_f
    :goto_f
    return-void

    .line 637
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method private sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 668
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 669
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_f

    .line 670
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 675
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_f
    :goto_f
    return-void

    .line 672
    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public broadcastActivation(I)Z
    .registers 7
    .parameter "prefMode"

    .prologue
    .line 1064
    const/4 v1, 0x0

    .line 1065
    .local v1, success:Z
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIAN] SmsManager: broadcastActivation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :try_start_19
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1069
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_29

    .line 1070
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->broadcastActivation(I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result v1

    .line 1075
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_29
    :goto_29
    return v1

    .line 1072
    :catch_2a
    move-exception v2

    goto :goto_29
.end method

.method public copyMessageToIcc([B[BI)Z
    .registers 7
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 717
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 718
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 719
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 725
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 721
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public deleteMessageFromIcc(I)Z
    .registers 6
    .parameter "messageIndex"

    .prologue
    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 742
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 745
    :try_start_9
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 746
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1a

    .line 747
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1b

    move-result v2

    .line 753
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1a
    :goto_1a
    return v2

    .line 749
    :catch_1b
    move-exception v3

    goto :goto_1a
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v13, "KTF"

    .line 261
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 262
    .local v0, activePhone:I
    const/4 v9, 0x2

    if-ne v9, v0, :cond_14

    .line 263
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 327
    :goto_13
    return-object v9

    .line 267
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 270
    .local v7, size:I
    const/4 v5, 0x0

    .line 271
    .local v5, params:[I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KTF"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_58

    .line 272
    invoke-static {p1, v12}, Landroid/telephony/SmsMessage;->calculateKTSendingLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v5

    .line 284
    :goto_29
    aget v4, v5, v12

    .line 285
    .local v4, messageCount:I
    const/4 v9, 0x3

    aget v1, v5, v9

    .line 287
    .local v1, encodingType:I
    sput v1, Landroid/telephony/SmsManager;->mEncodingtype:I

    .line 289
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 295
    .local v8, start:I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KTF"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_6b

    .line 296
    if-le v4, v11, :cond_61

    .line 297
    if-ne v1, v11, :cond_5d

    const/16 v9, 0x79

    move v3, v9

    .line 319
    .local v3, limit:I
    :goto_49
    if-ge v8, v7, :cond_82

    .line 320
    :try_start_4b
    invoke-static {p1, v8, v3, v1}, Lcom/android/internal/telephony/GsmAlphabet;->findLimitIndex(Ljava/lang/String;III)I

    move-result v2

    .line 321
    .local v2, end:I
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4b .. :try_end_56} :catch_81

    .line 322
    move v8, v2

    .line 323
    goto :goto_49

    .line 274
    .end local v1           #encodingType:I
    .end local v2           #end:I
    .end local v3           #limit:I
    .end local v4           #messageCount:I
    .end local v6           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #start:I
    :cond_58
    invoke-static {p1, v12}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    goto :goto_29

    .line 297
    .restart local v1       #encodingType:I
    .restart local v4       #messageCount:I
    .restart local v6       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #start:I
    :cond_5d
    const/16 v9, 0x54

    move v3, v9

    goto :goto_49

    .line 301
    :cond_61
    if-ne v1, v11, :cond_67

    const/16 v9, 0x80

    move v3, v9

    .restart local v3       #limit:I
    :goto_66
    goto :goto_49

    .end local v3           #limit:I
    :cond_67
    const/16 v9, 0x5a

    move v3, v9

    goto :goto_66

    .line 306
    :cond_6b
    if-le v4, v11, :cond_77

    .line 307
    if-ne v1, v11, :cond_73

    const/16 v9, 0x99

    move v3, v9

    .restart local v3       #limit:I
    :goto_72
    goto :goto_49

    .end local v3           #limit:I
    :cond_73
    const/16 v9, 0x86

    move v3, v9

    goto :goto_72

    .line 311
    :cond_77
    if-ne v1, v11, :cond_7d

    const/16 v9, 0xa0

    move v3, v9

    .restart local v3       #limit:I
    :goto_7c
    goto :goto_49

    .end local v3           #limit:I
    :cond_7d
    const/16 v9, 0x8c

    move v3, v9

    goto :goto_7c

    .line 324
    .restart local v3       #limit:I
    :catch_81
    move-exception v9

    :cond_82
    move-object v9, v6

    .line 327
    goto :goto_13
.end method

.method public divideSimMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/16 v10, 0x79

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 342
    .local v6, size:I
    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateKTSimLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 349
    .local v4, params:[I
    aget v3, v4, v8

    .line 350
    .local v3, messageCount:I
    const/4 v8, 0x3

    aget v0, v4, v8

    .line 352
    .local v0, encodingType:I
    sput v0, Landroid/telephony/SmsManager;->mEncodingtype:I

    .line 354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 370
    .local v7, start:I
    if-le v3, v9, :cond_31

    .line 371
    if-ne v0, v9, :cond_2f

    move v2, v10

    .line 381
    .local v2, limit:I
    :goto_20
    if-ge v7, v6, :cond_38

    .line 382
    :try_start_22
    invoke-static {p1, v7, v2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->findLimitIndex(Ljava/lang/String;III)I

    move-result v1

    .line 383
    .local v1, end:I
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_22 .. :try_end_2d} :catch_37

    .line 384
    move v7, v1

    .line 385
    goto :goto_20

    .end local v1           #end:I
    .end local v2           #limit:I
    :cond_2f
    move v2, v10

    .line 371
    goto :goto_20

    .line 375
    :cond_31
    if-ne v0, v9, :cond_35

    move v2, v11

    .restart local v2       #limit:I
    :goto_34
    goto :goto_20

    .end local v2           #limit:I
    :cond_35
    move v2, v11

    goto :goto_34

    .line 386
    .restart local v2       #limit:I
    :catch_37
    move-exception v8

    .line 389
    :cond_38
    return-object v5
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    const/4 v1, 0x0

    .line 798
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 799
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 800
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_16

    move-result-object v1

    .line 806
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 802
    :catch_16
    move-exception v2

    goto :goto_11
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 943
    const-string v1, ""

    .line 945
    .local v1, tmpIMEI:Ljava/lang/String;
    :try_start_2
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 946
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_12

    .line 947
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getDeviceId()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_2b

    move-result-object v1

    .line 952
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_12
    :goto_12
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIAN] getDeviceId(): tmpIMEI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-object v1

    .line 949
    :catch_2b
    move-exception v2

    goto :goto_12
.end method

.method public getEncodingType()I
    .registers 2

    .prologue
    .line 559
    const/4 v0, -0x1

    .line 560
    .local v0, tmpencodingg:I
    sget v0, Landroid/telephony/SmsManager;->mEncodingtype:I

    .line 562
    return v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 6

    .prologue
    .line 922
    const-string v1, ""

    .line 924
    .local v1, tmpICCID:Ljava/lang/String;
    :try_start_2
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 925
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_12

    .line 926
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSimSerialNumber()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_2b

    move-result-object v1

    .line 931
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_12
    :goto_12
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIAN] getSimSerialNumber(): tmpICCID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-object v1

    .line 928
    :catch_2b
    move-exception v2

    goto :goto_12
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 901
    const-string v1, ""

    .line 903
    .local v1, tmpIMSI:Ljava/lang/String;
    :try_start_2
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 904
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_12

    .line 905
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSubscriberId()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_2b

    move-result-object v1

    .line 910
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_12
    :goto_12
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIAN] getSubscriberId(): tmpIMSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-object v1

    .line 907
    :catch_2b
    move-exception v2

    goto :goto_12
.end method

.method public readSCAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 879
    const-string v1, ""

    .line 881
    .local v1, tmpscaddr:Ljava/lang/String;
    :try_start_2
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 882
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_12

    .line 883
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->readSCAddress()Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_13

    move-result-object v1

    .line 888
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_12
    :goto_12
    return-object v1

    .line 885
    :catch_13
    move-exception v2

    goto :goto_12
.end method

.method public readValidityPeriod()I
    .registers 6

    .prologue
    .line 853
    const/4 v1, -0x1

    .line 855
    .local v1, tmpvp:I
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 856
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 857
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->readValidityPeriod()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_2c

    move-result v1

    .line 863
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    sput v1, Landroid/telephony/SmsManager;->vp:I

    .line 865
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RHS0520] SmsManager: readValidityPeriod"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v1

    .line 859
    :catch_2c
    move-exception v2

    goto :goto_11
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 595
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_e
    if-eqz p4, :cond_13

    array-length v1, p4

    if-nez v1, :cond_1b

    .line 599
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_1b
    if-eqz p6, :cond_2a

    const/4 v1, 0x1

    :goto_1e
    invoke-static {p2, p1, p3, p4, v1}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 605
    .local v0, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    iget-object v1, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {p0, v1, v2, p5, p6}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 606
    return-void

    .line 602
    .end local v0           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_10
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_20

    .line 430
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :cond_20
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_44

    .line 435
    :try_start_26
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 436
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_43

    .line 439
    sget v1, Landroid/telephony/SmsManager;->vp:I

    if-lez v1, :cond_3b

    .line 440
    sget v1, Landroid/telephony/SmsManager;->vp:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->setMultipartTextValidityPeriod(I)V

    :cond_3b
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 443
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_43} :catch_6f

    .line 461
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_43
    :goto_43
    return-void

    .line 450
    :cond_44
    const/4 v5, 0x0

    .line 451
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 452
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_54

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 453
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 455
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_54
    if-eqz p5, :cond_62

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_62

    .line 456
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 458
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_62
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_43

    .line 446
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_6f
    move-exception v1

    goto :goto_43
.end method

.method public sendMultipartTextMessageSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 27
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 498
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid destinationAddress"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    :cond_e
    if-eqz p3, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1f

    .line 501
    :cond_17
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid message body"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 503
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_c6

    .line 504
    const/4 v9, 0x0

    .line 505
    .local v9, sentIntent:Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 506
    .local v10, deliveryIntent:Landroid/app/PendingIntent;
    sget v5, Landroid/telephony/SmsManager;->sConcatenatedRef:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Landroid/telephony/SmsManager;->sConcatenatedRef:I

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 507
    .local v17, ref:I
    const/4 v15, 0x0

    .local v15, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, count:I
    :goto_38
    if-ge v15, v11, :cond_ff

    .line 509
    const/4 v5, 0x3

    new-array v12, v5, [B

    .line 510
    .local v12, data:[B
    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-byte v0, v0

    move v6, v0

    aput-byte v6, v12, v5

    .line 511
    const/4 v5, 0x1

    int-to-byte v6, v11

    aput-byte v6, v12, v5

    .line 512
    const/4 v5, 0x2

    add-int/lit8 v6, v15, 0x1

    int-to-byte v6, v6

    aput-byte v6, v12, v5

    .line 513
    new-instance v14, Lcom/android/internal/telephony/gsm/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/gsm/SmsHeader;-><init>()V

    .line 514
    .local v14, header:Lcom/android/internal/telephony/gsm/SmsHeader;
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsHeader$Element;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v12}, Lcom/android/internal/telephony/gsm/SmsHeader$Element;-><init>(I[B)V

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/gsm/SmsHeader;->add(Lcom/android/internal/telephony/gsm/SmsHeader$Element;)V

    .line 516
    if-eqz p4, :cond_105

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_105

    .line 517
    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    move-object/from16 v18, v9

    .line 519
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .local v18, sentIntent:Landroid/app/PendingIntent;
    :goto_6f
    if-eqz p5, :cond_102

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_102

    .line 520
    move-object/from16 v0, p5

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    move-object v13, v10

    .line 523
    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    .local v13, deliveryIntent:Landroid/app/PendingIntent;
    :goto_81
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v13, :cond_c3

    const/4 v5, 0x1

    move v8, v5

    :goto_8e
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/SmsHeader;->toByteArray()[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Landroid/telephony/SmsMessage;->getSubmitPduSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 527
    .local v16, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :try_start_9c
    const-string v5, "isms"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v19

    .line 528
    .local v19, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v19, :cond_bc

    .line 529
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    move-object v4, v13

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms;->sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_bc} :catch_100

    .line 507
    .end local v19           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_bc
    :goto_bc
    add-int/lit8 v15, v15, 0x1

    move-object v10, v13

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    move-object/from16 v9, v18

    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_38

    .line 523
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :cond_c3
    const/4 v5, 0x0

    move v8, v5

    goto :goto_8e

    .line 536
    .end local v11           #count:I
    .end local v12           #data:[B
    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v14           #header:Lcom/android/internal/telephony/gsm/SmsHeader;
    .end local v15           #i:I
    .end local v17           #ref:I
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    :cond_c6
    const/4 v9, 0x0

    .line 537
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 538
    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_da

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_da

    .line 539
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 541
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    :cond_da
    if-eqz p5, :cond_ec

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ec

    .line 542
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 544
    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_ec
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 547
    :cond_ff
    return-void

    .line 531
    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v11       #count:I
    .restart local v12       #data:[B
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v14       #header:Lcom/android/internal/telephony/gsm/SmsHeader;
    .restart local v15       #i:I
    .restart local v16       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    .restart local v17       #ref:I
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    :catch_100
    move-exception v5

    goto :goto_bc

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_102
    move-object v13, v10

    .end local v10           #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    goto/16 :goto_81

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v18           #sentIntent:Landroid/app/PendingIntent;
    .restart local v9       #sentIntent:Landroid/app/PendingIntent;
    .restart local v10       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_105
    move-object/from16 v18, v9

    .end local v9           #sentIntent:Landroid/app/PendingIntent;
    .restart local v18       #sentIntent:Landroid/app/PendingIntent;
    goto/16 :goto_6f
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v2, "GSM"

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_20
    iget-object v0, p0, Landroid/telephony/SmsManager;->operatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/telephony/SmsManager;->countryCode:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 126
    const-string v0, "GSM"

    const-string v0, "[sendTextMessage] KTF Case for Replay address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/provider/Settings;->getnumberResource()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_51

    move v4, v3

    :goto_42
    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 143
    .local v6, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :goto_49
    iget-object v0, v6, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v1, v6, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {p0, v0, v1, p4, p5}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 144
    return-void

    .end local v6           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_51
    move v4, v5

    .line 128
    goto :goto_42

    .line 136
    :cond_53
    const-string v0, "GSM"

    const-string v0, "[sendTextMessage] Normal Case for Replay address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz p5, :cond_62

    move v0, v3

    :goto_5d
    invoke-static {p2, p1, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v6

    .restart local v6       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    goto :goto_49

    .end local v6           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_62
    move v0, v5

    goto :goto_5d
.end method

.method public sendTextMessageKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1c
    if-eqz p5, :cond_2c

    const/4 v1, 0x1

    :goto_1f
    const/4 v2, 0x0

    invoke-static {p2, p1, p3, v1, v2}, Landroid/telephony/SmsMessage;->getSubmitPduKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 242
    .local v0, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    iget-object v1, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v2, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {p0, v1, v2, p4, p5}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 243
    return-void

    .line 239
    .end local v0           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_2c
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public sendTextMessageSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v2, "GSM"

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_20
    iget-object v0, p0, Landroid/telephony/SmsManager;->operatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/telephony/SmsManager;->countryCode:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 185
    const-string v0, "GSM"

    const-string v0, "[sendTextMessageSync] KTF Case for Replay address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Landroid/provider/Settings;->getnumberResource()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_51

    move v4, v3

    :goto_42
    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v6

    .line 200
    .local v6, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :goto_49
    iget-object v0, v6, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v1, v6, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {p0, v0, v1, p4, p5}, Landroid/telephony/SmsManager;->sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 201
    return-void

    .end local v6           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_51
    move v4, v5

    .line 186
    goto :goto_42

    .line 195
    :cond_53
    const-string v0, "GSM"

    const-string v0, "[sendTextMessageSync] Normal Case for Replay address"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p5, :cond_62

    move v0, v3

    :goto_5d
    invoke-static {p2, p1, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v6

    .restart local v6       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    goto :goto_49

    .end local v6           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_62
    move v0, v5

    goto :goto_5d
.end method

.method public setBroadcastConfig(I[I)Z
    .registers 8
    .parameter "size"
    .parameter "entries"

    .prologue
    .line 1117
    const/4 v1, 0x0

    .line 1119
    .local v1, success:Z
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setBroadcastConfig] entry numbers :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :try_start_19
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1123
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_29

    .line 1124
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setBroadcastConfig(I[I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result v1

    .line 1129
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_29
    :goto_29
    return v1

    .line 1126
    :catch_2a
    move-exception v2

    goto :goto_29
.end method

.method public setGWDomainPref(I)Z
    .registers 5
    .parameter "domainPref"

    .prologue
    .line 1148
    const/4 v1, 0x0

    .line 1153
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1154
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 1155
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setGWDomainPref(I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1160
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 1157
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public setMEMemoryFull(Z)Z
    .registers 5
    .parameter "bFull"

    .prologue
    .line 990
    const/4 v1, 0x0

    .line 993
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 994
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_14

    .line 995
    if-eqz p1, :cond_15

    .line 996
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISms;->setMEMemoryFull(I)Z

    move-result v1

    .line 1003
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_14
    :goto_14
    return v1

    .line 998
    .restart local v0       #simISms:Lcom/android/internal/telephony/ISms;
    :cond_15
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISms;->setMEMemoryFull(I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_14

    .line 1000
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :catch_1b
    move-exception v2

    goto :goto_14
.end method

.method public setOTAMode(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 966
    .local v0, returnValue:I
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 967
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_11

    .line 968
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setOTAMode(ILandroid/os/Message;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_2a

    move-result v0

    .line 973
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    const-string v2, "[SmsManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RIAN] setOTAMode(): returnValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return v0

    .line 970
    :catch_2a
    move-exception v2

    goto :goto_11
.end method

.method public setSendingMultiSMS(Z)Z
    .registers 5
    .parameter "bFull"

    .prologue
    .line 1041
    const/4 v1, 0x0

    .line 1043
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1044
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 1045
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setSendingMultiSMS(Z)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1050
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 1047
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public setValidityPeriod(I)V
    .registers 5
    .parameter "validityperiod"

    .prologue
    .line 818
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RHS0429] SmsManager: setValidityPeriod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-static {p1}, Landroid/telephony/SmsMessage;->setValidityPeriod(I)V

    .line 820
    return-void
.end method

.method public updateCBMIToSim([B)Z
    .registers 6
    .parameter "cbchannel_byte"

    .prologue
    .line 1090
    const/4 v1, 0x0

    .line 1092
    .local v1, success:Z
    const-string v2, "[SmsManager]"

    const-string v3, "[updateCBMIToSim] CB Channel value: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :try_start_8
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1096
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_18

    .line 1097
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->updateCBMIToSim([B)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    move-result v1

    .line 1102
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_18
    :goto_18
    return v1

    .line 1099
    :catch_19
    move-exception v2

    goto :goto_18
.end method

.method public updateMessageOnIcc(II[B)Z
    .registers 7
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 771
    const/4 v1, 0x0

    .line 774
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 775
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 776
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 782
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 778
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public updateSCAddress(Ljava/lang/String;)Z
    .registers 5
    .parameter "smsc"

    .prologue
    .line 1017
    const/4 v1, 0x0

    .line 1020
    .local v1, success:Z
    :try_start_1
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1021
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 1022
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->updateSCAddress(Ljava/lang/String;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1027
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_11
    :goto_11
    return v1

    .line 1024
    :catch_12
    move-exception v2

    goto :goto_11
.end method

.method public updateValidityPeriod(I)Z
    .registers 7
    .parameter "validityperiod"

    .prologue
    .line 831
    const/4 v1, 0x0

    .line 832
    .local v1, success:Z
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RHS0520] SmsManager: updateValidityPeriod"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :try_start_19
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 836
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_29

    .line 837
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->updateValidityPeriod(I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result v1

    .line 842
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_29
    :goto_29
    return v1

    .line 839
    :catch_2a
    move-exception v2

    goto :goto_29
.end method
