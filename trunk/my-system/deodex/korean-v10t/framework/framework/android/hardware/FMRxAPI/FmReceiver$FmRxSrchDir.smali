.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxSrchDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

.field public static final enum FM_RX_SEARCHDIR_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

.field public static final enum FM_RX_SEARCHDIR_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    const-string v1, "FM_RX_SEARCHDIR_UP"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->FM_RX_SEARCHDIR_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    .line 61
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    const-string v1, "FM_RX_SEARCHDIR_DOWN"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->FM_RX_SEARCHDIR_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->FM_RX_SEARCHDIR_UP:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->FM_RX_SEARCHDIR_DOWN:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;
    .registers 2
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchDir;

    return-object v0
.end method
