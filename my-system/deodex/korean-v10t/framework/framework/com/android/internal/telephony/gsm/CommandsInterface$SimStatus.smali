.class public final enum Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_CARD_IO_ERROR:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_PIN:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_PREM_BLOCKED:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_PUK:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

.field public static final enum SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PIN:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_PUK"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PUK:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_NETWORK_PERSONALIZATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_CARD_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_CARD_IO_ERROR:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    const-string v1, "SIM_PREM_BLOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PREM_BLOCKED:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_ABSENT:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_NOT_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_READY:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PIN:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PUK:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_CARD_IO_ERROR:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->SIM_PREM_BLOCKED:Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->$VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->$VALUES:[Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;

    return-object v0
.end method
