.class public Lcom/android/stk/TonePlayer;
.super Ljava/lang/Object;
.source "TonePlayer.java"


# static fields
.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Tone;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    .line 34
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->DIAL:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->BUSY:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->CONGESTION:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->CALL_WAITING:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->RINGING:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/gsm/stk/Tone;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 50
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 51
    return-void
.end method

.method private getToneId(Lcom/android/internal/telephony/gsm/stk/Tone;)I
    .registers 4
    .parameter "tone"

    .prologue
    .line 71
    const/16 v0, 0x18

    .line 73
    .local v0, toneId:I
    if-eqz p1, :cond_18

    sget-object v1, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 74
    sget-object v1, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    :cond_18
    return v0
.end method


# virtual methods
.method public play(Lcom/android/internal/telephony/gsm/stk/Tone;)V
    .registers 4
    .parameter "tone"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/stk/TonePlayer;->getToneId(Lcom/android/internal/telephony/gsm/stk/Tone;)I

    move-result v0

    .line 55
    .local v0, toneId:I
    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_f

    .line 56
    iget-object v1, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 58
    :cond_f
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 68
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_9

    .line 62
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 64
    :cond_9
    return-void
.end method
