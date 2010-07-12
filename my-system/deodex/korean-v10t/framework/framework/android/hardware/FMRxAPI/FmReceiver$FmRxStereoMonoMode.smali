.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxStereoMonoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

.field public static final enum FM_RX_MUTEBOTH:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

.field public static final enum FM_RX_MUTELEFT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

.field public static final enum FM_RX_MUTERIGHT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

.field public static final enum FM_RX_NOMUTE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    const-string v1, "FM_RX_NOMUTE"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_NOMUTE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    .line 107
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    const-string v1, "FM_RX_MUTELEFT"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTELEFT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    .line 108
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    const-string v1, "FM_RX_MUTERIGHT"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTERIGHT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    .line 109
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    const-string v1, "FM_RX_MUTEBOTH"

    invoke-direct {v0, v1, v5}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTEBOTH:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_NOMUTE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTELEFT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTERIGHT:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->FM_RX_MUTEBOTH:Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxStereoMonoMode;

    return-object v0
.end method
