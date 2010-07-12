.class public final enum Lcom/android/internal/telephony/CommandsInterface$IccStatus;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$IccStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_ABSENT:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_CARD_IO_ERROR:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_NETWORK_SUBSET_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_OTP_FAILED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_PERSONALIZATION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_PIN:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_PREM_BLOCKED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_PUK:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_HRPD_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_NETWORK1_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_NETWORK2_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_RUIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_RUIM_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

.field public static final enum ICC_SIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_ABSENT:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_READY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PIN:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_PUK"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PUK:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_NETWORK_PERSONALIZATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_CARD_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CARD_IO_ERROR:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_NETWORK_SUBSET_PERSONALIZATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_SUBSET_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_CORPORATE_PERSONALIZATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_SERVICE_PROVIDER_PERSONALIZATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_SIM_PERSONALIZATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_NETWORK1_PERSONALIZATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_NETWORK1_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_NETWORK2_PERSONALIZATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_NETWORK2_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_HRPD_PERSONALIZATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_HRPD_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_CORPORATE_PERSONALIZATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_SERVICE_PROVIDER_PERSONALIZATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_RUIM_RUIM_PERSONALIZATION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_RUIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_PERSONALIZATION_NOT_SUPPORTED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PERSONALIZATION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_PREM_BLOCKED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PREM_BLOCKED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    const-string v1, "ICC_OTP_FAILED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_OTP_FAILED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 86
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_ABSENT:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PIN:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PUK:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CARD_IO_ERROR:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_SUBSET_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_NETWORK1_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_NETWORK2_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_HRPD_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_RUIM_RUIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PERSONALIZATION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PREM_BLOCKED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_OTP_FAILED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$IccStatus;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$IccStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/CommandsInterface$IccStatus;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$IccStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    return-object v0
.end method
