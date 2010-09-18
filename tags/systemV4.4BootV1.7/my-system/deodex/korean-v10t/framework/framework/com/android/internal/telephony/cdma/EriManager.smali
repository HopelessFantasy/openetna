.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .registers 5
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 94
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 95
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 96
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .registers 13
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const v9, 0x104004e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "CDMA"

    .line 249
    packed-switch p1, :pswitch_data_252

    .line 346
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v3, :cond_198

    .line 348
    const-string v3, "CDMA"

    const-string v3, "ERI File not loaded"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-le p2, v8, :cond_14a

    .line 350
    const-string v3, "CDMA"

    const-string v3, "ERI defRoamInd > 2 ...flashing"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040050

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v8, v7, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 421
    .local v2, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_31
    const-string v3, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying ERI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v2

    .line 252
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v5, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 256
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_31

    .line 259
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104004f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 263
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_31

    .line 266
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_71
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040050

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v8, v7, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 270
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_31

    .line 275
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_84
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040051

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 279
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_31

    .line 282
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_97
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040052

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 286
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_31

    .line 289
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_aa
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040053

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 293
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 296
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_be
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040054

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 300
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 303
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 307
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 310
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e6
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 314
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 317
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_fa
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 321
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 324
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_10e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040058

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 328
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 331
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_122
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040059

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 335
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 338
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_136
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104005a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 342
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 357
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_14a
    const-string v3, "CDMA"

    const-string v3, "ERI defRoamInd <= 2"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    packed-switch p2, :pswitch_data_270

    .line 384
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, "ERI text"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 360
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_15f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v5, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 365
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 368
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_170
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104004f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v7, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 373
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 376
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_184
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040050

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v8, v7, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 381
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 389
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_198
    const-string v3, "CDMA"

    const-string v3, "ERI File loaded"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 391
    .local v1, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 392
    .local v0, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_227

    .line 393
    const-string v3, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERI roamInd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in ERI file ...using defRoamInd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-nez v0, :cond_1fc

    .line 396
    const-string v3, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERI defRoamInd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in ERI file ...on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v5, v5, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 405
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1fc
    const-string v3, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERI defRoamInd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in ERI file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 412
    .end local v2           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_227
    const-string v3, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERI roamInd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in ERI file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v3, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_31

    .line 249
    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_5e
        :pswitch_71
        :pswitch_84
        :pswitch_97
        :pswitch_aa
        :pswitch_be
        :pswitch_d2
        :pswitch_e6
        :pswitch_fa
        :pswitch_10e
        :pswitch_122
        :pswitch_136
    .end packed-switch

    .line 358
    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_15f
        :pswitch_170
        :pswitch_184
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .registers 4
    .parameter "roamingIndicator"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object v0, p0

    .line 239
    :goto_1d
    return-object v0

    .restart local p0
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private loadEriFileFromFileSystem()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method private loadEriFileFromModem()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method private loadEriFileFromXml()V
    .registers 15

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 147
    .local v12, r:Landroid/content/res/Resources;
    const v0, 0x10b0002

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 149
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    :try_start_d
    const-string v0, "EriFile"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v1, 0x0

    const-string v2, "VersionNumber"

    invoke-interface {v11, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v1, 0x0

    const-string v2, "NumberOfEriEntries"

    invoke-interface {v11, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v1, 0x0

    const-string v2, "EriFileType"

    invoke-interface {v11, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 157
    const/4 v10, 0x0

    .line 159
    .local v10, parsedEriEntries:I
    :cond_40
    :goto_40
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 160
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, name:Ljava/lang/String;
    if-nez v9, :cond_82

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v10, v0, :cond_7b

    .line 163
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Parsing ERI file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defined, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parsed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_7b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_7e
    .catchall {:try_start_d .. :try_end_7e} :catchall_b2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_7e} :catch_a8

    .line 195
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parsedEriEntries:I
    :goto_7e
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 197
    return-void

    .line 166
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parsedEriEntries:I
    :cond_82
    :try_start_82
    const-string v0, "CallPromptId"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 167
    const/4 v0, 0x0

    const-string v1, "Id"

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 168
    .local v8, id:I
    const/4 v0, 0x0

    const-string v1, "CallPromptText"

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, text:Ljava/lang/String;
    if-ltz v8, :cond_b7

    const/4 v0, 0x2

    if-gt v8, v0, :cond_b7

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v13, v0, v8
    :try_end_a7
    .catchall {:try_start_82 .. :try_end_a7} :catchall_b2
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_a7} :catch_a8

    goto :goto_40

    .line 192
    .end local v8           #id:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parsedEriEntries:I
    .end local v13           #text:Ljava/lang/String;
    :catch_a8
    move-exception v0

    move-object v7, v0

    .line 193
    .local v7, e:Ljava/lang/Exception;
    :try_start_aa
    const-string v0, "CDMA"

    const-string v1, "Got exception while loading ERI file."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b2

    goto :goto_7e

    .line 195
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_b2
    move-exception v0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    .line 172
    .restart local v8       #id:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #parsedEriEntries:I
    .restart local v13       #text:Ljava/lang/String;
    :cond_b7
    :try_start_b7
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Parsing ERI file: found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CallPromptId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 175
    .end local v8           #id:I
    .end local v13           #text:Ljava/lang/String;
    :cond_d7
    const-string v0, "EriInfo"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 176
    const/4 v0, 0x0

    const-string v1, "RoamingIndicator"

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, roamingIndicator:I
    const/4 v0, 0x0

    const-string v2, "IconIndex"

    invoke-interface {v11, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, iconIndex:I
    const/4 v0, 0x0

    const-string v3, "IconMode"

    invoke-interface {v11, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, iconMode:I
    const/4 v0, 0x0

    const-string v4, "EriText"

    invoke-interface {v11, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, eriText:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v5, "CallPromptId"

    invoke-interface {v11, v0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 183
    .local v5, callPromptId:I
    const/4 v0, 0x0

    const-string v6, "AlertId"

    invoke-interface {v11, v0, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 184
    .local v6, alertId:I
    add-int/lit8 v10, v10, 0x1

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12f
    .catchall {:try_start_b7 .. :try_end_12f} :catchall_b2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_12f} :catch_a8

    goto/16 :goto_40
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 99
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 101
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .registers 4
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_12

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 119
    :goto_8
    return-void

    .line 107
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_8

    .line 111
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_8

    .line 105
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
