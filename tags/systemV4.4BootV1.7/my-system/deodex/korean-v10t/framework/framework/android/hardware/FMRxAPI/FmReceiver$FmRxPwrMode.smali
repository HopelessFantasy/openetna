.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxPwrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

.field public static final enum FM_RX_LOW_POWER_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

.field public static final enum FM_RX_NORMAL_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    const-string v1, "FM_RX_NORMAL_MODE"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->FM_RX_NORMAL_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    .line 162
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    const-string v1, "FM_RX_LOW_POWER_MODE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->FM_RX_LOW_POWER_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->FM_RX_NORMAL_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->FM_RX_LOW_POWER_MODE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 160
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxPwrMode;

    return-object v0
.end method
