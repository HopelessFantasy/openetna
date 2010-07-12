.class public final enum Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

.field public static final enum SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

.field public static final enum SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

.field public static final enum SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    const-string v1, "RADIO_OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    const-string v1, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    const-string v1, "SIM_NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    const-string v1, "SIM_LOCKED_OR_ABSENT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;
    .registers 2
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method isAvailable()Z
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isOn()Z
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isSIMReady()Z
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
