.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxSrchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

.field public static final enum FM_RX_SRCH_MODE_SCAN_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

.field public static final enum FM_RX_SRCH_MODE_SCAN_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

.field public static final enum FM_RX_SRCH_MODE_SEEK_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

.field public static final enum FM_RX_SRCH_MODE_SEEK_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    const-string v1, "FM_RX_SRCH_MODE_SEEK_UP"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SEEK_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    .line 119
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    const-string v1, "FM_RX_SRCH_MODE_SEEK_DOWN"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SEEK_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    .line 120
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    const-string v1, "FM_RX_SRCH_MODE_SCAN_UP"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SCAN_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    .line 121
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    const-string v1, "FM_RX_SRCH_MODE_SCAN_DOWN"

    invoke-direct {v0, v1, v5}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SCAN_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SEEK_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SEEK_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SCAN_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->FM_RX_SRCH_MODE_SCAN_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    aput-object v1, v0, v5

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 117
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchMode;

    return-object v0
.end method
