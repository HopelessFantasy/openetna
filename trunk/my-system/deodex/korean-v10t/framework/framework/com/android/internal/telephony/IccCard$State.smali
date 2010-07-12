.class public final enum Lcom/android/internal/telephony/IccCard$State;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "CARD_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NETWORK_SUBSET_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "CORPORATE_LOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "SIM_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_NETWORK1_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_NETWORK2_LOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_HRPD_LOCKED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_CORPORATE_LOCKED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "RUIM_RUIM_LOCKED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PREM_BLOCKED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 80
    const-class v0, Lcom/android/internal/telephony/IccCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/IccCard$State;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/IccCard$State;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method


# virtual methods
.method public isPinLocked()Z
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
