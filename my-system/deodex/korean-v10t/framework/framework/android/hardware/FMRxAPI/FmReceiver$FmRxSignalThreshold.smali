.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxSignalThreshold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

.field public static final enum FM_RX_SIGNAL_THRESHOLD_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

.field public static final enum FM_RX_SIGNAL_THRESHOLD_VERY_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

.field public static final enum FM_RX_SIGNAL_THRESHOLD_VERY_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

.field public static final enum FM_RX_SIGNAL_THRESHOLD_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    const-string v1, "FM_RX_SIGNAL_THRESHOLD_VERY_WEAK"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_VERY_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    .line 151
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    const-string v1, "FM_RX_SIGNAL_THRESHOLD_WEAK"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    .line 152
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    const-string v1, "FM_RX_SIGNAL_THRESHOLD_STRONG"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    .line 153
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    const-string v1, "FM_RX_SIGNAL_THRESHOLD_VERY_STRONG"

    invoke-direct {v0, v1, v5}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_VERY_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_VERY_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_WEAK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->FM_RX_SIGNAL_THRESHOLD_VERY_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;
    .registers 2
    .parameter "name"

    .prologue
    .line 149
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;
    .registers 1

    .prologue
    .line 149
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSignalThreshold;

    return-object v0
.end method
