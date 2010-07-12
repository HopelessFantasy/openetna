.class public Lcom/android/internal/telephony/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardStatus$PinState;,
        Lcom/android/internal/telephony/IccCardStatus$CardState;
    }
.end annotation


# static fields
.field static final CARD_MAX_APPS:I = 0x8


# instance fields
.field application:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field public card_state:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field public cdma_subscription_app_index:I

.field public gsm_umts_subscription_app_index:I

.field public num_applications:I

.field public universal_pin_state:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->application:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method CardStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$CardState;
    .registers 6
    .parameter "state"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_26

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_CardState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 71
    .local v0, newState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :goto_1e
    return-object v0

    .line 65
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    goto :goto_1e

    .line 66
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    goto :goto_1e

    .line 63
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;
    .registers 6
    .parameter "state"

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_2e

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized RIL_PinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 88
    .local v0, newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :goto_1e
    return-object v0

    .line 79
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 80
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 81
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 82
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_28
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 83
    .end local v0           #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    :pswitch_2b
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .restart local v0       #newState:Lcom/android/internal/telephony/IccCardStatus$PinState;
    goto :goto_1e

    .line 77
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method
