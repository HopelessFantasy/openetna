.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public cid:Ljava/lang/String;

.field public clazz:Ljava/lang/String;

.field public control:I

.field public cookies:Ljava/lang/String;

.field public currentBytes:I

.field public destination:I

.field public etag:Ljava/lang/String;

.field public externalControl:Z

.field public extras:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public volatile hasActiveThread:Z

.field public hint:Ljava/lang/String;

.field public id:I

.field public lastMod:J

.field public mediaScanned:Z

.field public mimetype:Ljava/lang/String;

.field public noIntegrity:Z

.field public numFailed:I

.field public pckg:Ljava/lang/String;

.field public redirectCount:I

.field public referer:Ljava/lang/String;

.field public retryAfter:I

.field public status:I

.field public totalBytes:I

.field public uri:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;

.field public visibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZLjava/lang/String;)V
    .registers 31
    .parameter "id"
    .parameter "uri"
    .parameter "noIntegrity"
    .parameter "hint"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "destination"
    .parameter "visibility"
    .parameter "control"
    .parameter "status"
    .parameter "numFailed"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "lastMod"
    .parameter "pckg"
    .parameter "clazz"
    .parameter "extras"
    .parameter "cookies"
    .parameter "userAgent"
    .parameter "referer"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "etag"
    .parameter "mediaScanned"
    .parameter "externalControl"
    .parameter "cid"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/providers/downloads/DownloadInfo;->id:I

    .line 71
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->uri:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/android/providers/downloads/DownloadInfo;->noIntegrity:Z

    .line 73
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadInfo;->hint:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/android/providers/downloads/DownloadInfo;->filename:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/android/providers/downloads/DownloadInfo;->mimetype:Ljava/lang/String;

    .line 76
    iput p7, p0, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    .line 77
    iput p8, p0, Lcom/android/providers/downloads/DownloadInfo;->visibility:I

    .line 78
    iput p9, p0, Lcom/android/providers/downloads/DownloadInfo;->control:I

    .line 79
    iput p10, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    .line 80
    iput p11, p0, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    .line 81
    iput p12, p0, Lcom/android/providers/downloads/DownloadInfo;->retryAfter:I

    .line 82
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/android/providers/downloads/DownloadInfo;->redirectCount:I

    .line 83
    move-wide/from16 v0, p14

    move-object v2, p0

    iput-wide v0, v2, Lcom/android/providers/downloads/DownloadInfo;->lastMod:J

    .line 84
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->extras:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->cookies:Ljava/lang/String;

    .line 88
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->userAgent:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->referer:Ljava/lang/String;

    .line 90
    move/from16 v0, p22

    move-object v1, p0

    iput v0, v1, Lcom/android/providers/downloads/DownloadInfo;->totalBytes:I

    .line 91
    move/from16 v0, p23

    move-object v1, p0

    iput v0, v1, Lcom/android/providers/downloads/DownloadInfo;->currentBytes:I

    .line 92
    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->etag:Ljava/lang/String;

    .line 93
    move/from16 v0, p25

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mediaScanned:Z

    .line 95
    move/from16 v0, p26

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/providers/downloads/DownloadInfo;->externalControl:Z

    .line 96
    move-object/from16 v0, p27

    move-object v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->cid:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public canUseNetwork(ZZ)Z
    .registers 7
    .parameter "available"
    .parameter "roaming"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    if-nez p1, :cond_6

    move v0, v2

    .line 221
    :goto_5
    return v0

    .line 218
    :cond_6
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->destination:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 219
    if-nez p2, :cond_f

    move v0, v3

    goto :goto_5

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_11
    move v0, v3

    .line 221
    goto :goto_5
.end method

.method public hasCompletionNotification()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    invoke-static {v0}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 208
    :goto_b
    return v0

    .line 205
    :cond_c
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->visibility:I

    if-ne v0, v2, :cond_12

    move v0, v2

    .line 206
    goto :goto_b

    :cond_12
    move v0, v1

    .line 208
    goto :goto_b
.end method

.method public isReadyToRestart(J)Z
    .registers 7
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->control:I

    if-ne v0, v2, :cond_8

    move v0, v3

    .line 194
    :goto_7
    return v0

    .line 176
    :cond_8
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    if-nez v0, :cond_e

    move v0, v2

    .line 178
    goto :goto_7

    .line 180
    :cond_e
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v1, 0xbe

    if-ne v0, v1, :cond_16

    move v0, v2

    .line 182
    goto :goto_7

    .line 184
    :cond_16
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_2c

    .line 185
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    if-nez v0, :cond_22

    move v0, v2

    .line 187
    goto :goto_7

    .line 189
    :cond_22
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->restartTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2c

    move v0, v2

    .line 191
    goto :goto_7

    :cond_2c
    move v0, v3

    .line 194
    goto :goto_7
.end method

.method public isReadyToStart(J)Z
    .registers 7
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->control:I

    if-ne v0, v2, :cond_8

    move v0, v3

    .line 160
    :goto_7
    return v0

    .line 137
    :cond_8
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    if-nez v0, :cond_e

    move v0, v2

    .line 139
    goto :goto_7

    .line 141
    :cond_e
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v1, 0xbe

    if-ne v0, v1, :cond_16

    move v0, v2

    .line 143
    goto :goto_7

    .line 145
    :cond_16
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1e

    move v0, v2

    .line 148
    goto :goto_7

    .line 150
    :cond_1e
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->status:I

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_34

    .line 151
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    if-nez v0, :cond_2a

    move v0, v2

    .line 153
    goto :goto_7

    .line 155
    :cond_2a
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->restartTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_34

    move v0, v2

    .line 157
    goto :goto_7

    :cond_34
    move v0, v3

    .line 160
    goto :goto_7
.end method

.method public restartTime()J
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 120
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->retryAfter:I

    if-lez v0, :cond_c

    .line 121
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->lastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->retryAfter:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 123
    :goto_b
    return-wide v0

    :cond_c
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->lastMod:J

    sget-object v2, Lcom/android/providers/downloads/Helpers;->rnd:Ljava/util/Random;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    iget v3, p0, Lcom/android/providers/downloads/DownloadInfo;->numFailed:I

    sub-int/2addr v3, v4

    shl-int v3, v4, v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_b
.end method

.method public sendIntentIfRequested(Landroid/net/Uri;Landroid/content/Context;)V
    .registers 6
    .parameter "contentUri"
    .parameter "context"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->pckg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->clazz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->extras:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 105
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->extras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    return-void
.end method
