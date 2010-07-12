.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$DisconnectCause;
    }
.end annotation


# static fields
.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I


# instance fields
.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 28
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public abstract cancelPostDial()V
.end method

.method public clearUserData()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public abstract disableRinger()V
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getCallRejected()Z
.end method

.method public abstract getCnap()Ljava/lang/String;
.end method

.method public getCnapName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getConnectTime()J
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
.end method

.method public abstract getDisconnectTime()J
.end method

.method public abstract getDurationMillis()J
.end method

.method public abstract getForwarded()Z
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public abstract getLine()I
.end method

.method public abstract getName()[B
.end method

.method public abstract getNameByte()I
.end method

.method public abstract getNamePresentation()I
.end method

.method public abstract getNameSeptet()I
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigDialString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 173
    .local v0, c:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_9

    .line 174
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 176
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_8
.end method

.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public abstract isEmergency()Z
.end method

.method public abstract isIncoming()Z
.end method

.method public abstract isRingerDisable()Z
.end method

.method public isRinging()Z
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract setCallRejected()V
.end method

.method public abstract setForwarded(Z)V
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 2
    .parameter "userdata"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->userData:Ljava/lang/Object;

    .line 213
    return-void
.end method
