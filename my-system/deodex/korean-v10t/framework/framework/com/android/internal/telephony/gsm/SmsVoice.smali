.class Lcom/android/internal/telephony/gsm/SmsVoice;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# static fields
.field static final VOICEMESSAGE:I = 0x1

.field static final VTMESSAGE:I = 0x2


# instance fields
.field messagetype:I

.field newcount:I

.field totalcount:I

.field voicebytes:[B


# direct methods
.method constructor <init>([BIIII)V
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "count"
    .parameter "type"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->voicebytes:[B

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->voicebytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput p4, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->totalcount:I

    .line 102
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->newcount:I

    .line 104
    iput p5, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->messagetype:I

    .line 105
    return-void
.end method


# virtual methods
.method public getvoicenewcount()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->newcount:I

    return v0
.end method

.method public getvoicetotalcount()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->totalcount:I

    return v0
.end method

.method public isVTmessage()Z
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->messagetype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isVoicemessage()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 116
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsVoice;->messagetype:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
