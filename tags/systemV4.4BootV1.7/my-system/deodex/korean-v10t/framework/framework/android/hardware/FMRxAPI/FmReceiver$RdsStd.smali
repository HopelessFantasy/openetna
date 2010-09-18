.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RdsStd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

.field public static final enum FM_RDS_STD_NONE:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

.field public static final enum FM_RDS_STD_RBDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

.field public static final enum FM_RDS_STD_RDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    const-string v1, "FM_RDS_STD_RBDS"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_RBDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    .line 130
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    const-string v1, "FM_RDS_STD_RDS"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_RDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    .line 131
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    const-string v1, "FM_RDS_STD_NONE"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_NONE:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_RBDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_RDS:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->FM_RDS_STD_NONE:Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;
    .registers 2
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$RdsStd;

    return-object v0
.end method
