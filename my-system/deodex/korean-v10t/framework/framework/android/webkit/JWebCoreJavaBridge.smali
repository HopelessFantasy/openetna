.class final Landroid/webkit/JWebCoreJavaBridge;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# static fields
.field private static final FUNCPTR_MESSAGE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit-timers"

.field private static final TIMER_MESSAGE:I = 0x1


# instance fields
.field private mHasInstantTimer:Z

.field private mNativeBridge:I

.field private mPauseTimerRefCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    .line 46
    return-void
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 144
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .registers 2

    .prologue
    .line 151
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/CertTool;->getSupportedKeyStrenghs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "index"
    .parameter "challenge"
    .parameter "url"

    .prologue
    .line 196
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/security/CertTool;->generateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "url"
    .parameter "docUrl"
    .parameter "value"

    .prologue
    const/4 v7, -0x1

    .line 115
    const-string v6, "\r"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 117
    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 118
    .local v5, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 120
    .local v1, i:I
    :goto_1b
    if-eq v1, v7, :cond_4d

    if-ge v1, v5, :cond_4d

    .line 121
    const/16 v6, 0xd

    invoke-virtual {p3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 122
    .local v3, ir:I
    const/16 v6, 0xa

    invoke-virtual {p3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 123
    .local v2, in:I
    if-ne v3, v7, :cond_3a

    move v4, v2

    .line 125
    .local v4, newi:I
    :goto_2e
    if-le v4, v1, :cond_44

    .line 126
    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 131
    :cond_37
    add-int/lit8 v1, v4, 0x1

    .line 132
    goto :goto_1b

    .line 123
    .end local v4           #newi:I
    :cond_3a
    if-ne v2, v7, :cond_3e

    move v4, v3

    goto :goto_2e

    :cond_3e
    if-ge v3, v2, :cond_42

    move v4, v3

    goto :goto_2e

    :cond_42
    move v4, v2

    goto :goto_2e

    .line 127
    .restart local v4       #newi:I
    :cond_44
    if-ne v4, v7, :cond_37

    .line 128
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 133
    .end local v2           #in:I
    .end local v3           #ir:I
    .end local v4           #newi:I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 135
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_51
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private native setDeferringTimers(Z)V
.end method

.method private setSharedTimer(J)V
    .registers 7
    .parameter "timemillis"

    .prologue
    const/4 v3, 0x1

    .line 161
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_16

    .line 166
    iget-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    if-eqz v1, :cond_c

    .line 177
    :goto_b
    return-void

    .line 169
    :cond_c
    iput-boolean v3, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 170
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 171
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 174
    .end local v0           #msg:Landroid/os/Message;
    :cond_16
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 175
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .registers 3

    .prologue
    .line 78
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method

.method private stopSharedTimer()V
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->removeMessages(I)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 188
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    .line 51
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    .line 74
    :goto_5
    return-void

    .line 63
    :pswitch_6
    new-instance v0, Landroid/webkit/PerfChecker;

    invoke-direct {v0}, Landroid/webkit/PerfChecker;-><init>()V

    .line 65
    .local v0, checker:Landroid/webkit/PerfChecker;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    .line 66
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    .line 67
    const-string v1, "sharedTimer"

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_5

    .line 71
    .end local v0           #checker:Landroid/webkit/PerfChecker;
    :pswitch_17
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_5

    .line 61
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_17
    .end packed-switch
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 88
    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    if-nez v0, :cond_b

    .line 89
    invoke-direct {p0, v1}, Landroid/webkit/JWebCoreJavaBridge;->setDeferringTimers(Z)V

    .line 91
    :cond_b
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 97
    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->setDeferringTimers(Z)V

    .line 100
    :cond_d
    return-void
.end method

.method public native setCacheSize(I)V
.end method

.method public native setNetworkOnLine(Z)V
.end method
