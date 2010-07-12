.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 38
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 42
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 45
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 4
    .parameter "efid"

    .prologue
    const-string v1, "3F007F20"

    .line 59
    sparse-switch p1, :sswitch_data_16

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 61
    :sswitch_a
    const-string v0, "3F007F10"

    goto :goto_9

    .line 73
    :sswitch_d
    const-string v0, "3F007F20"

    move-object v0, v1

    goto :goto_9

    .line 81
    :sswitch_11
    const-string v0, "3F007F20"

    move-object v0, v1

    goto :goto_9

    .line 59
    nop

    :sswitch_data_16
    .sparse-switch
        0x6f11 -> :sswitch_11
        0x6f13 -> :sswitch_11
        0x6f14 -> :sswitch_11
        0x6f16 -> :sswitch_11
        0x6f17 -> :sswitch_11
        0x6f18 -> :sswitch_11
        0x6f38 -> :sswitch_d
        0x6f3c -> :sswitch_a
        0x6f46 -> :sswitch_d
        0x6fad -> :sswitch_d
        0x6fc5 -> :sswitch_d
        0x6fc7 -> :sswitch_d
        0x6fc8 -> :sswitch_d
        0x6fc9 -> :sswitch_d
        0x6fca -> :sswitch_d
        0x6fcb -> :sswitch_d
        0x6fcd -> :sswitch_d
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 53
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 87
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 91
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
