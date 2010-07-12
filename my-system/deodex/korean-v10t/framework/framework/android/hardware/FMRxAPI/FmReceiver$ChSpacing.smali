.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChSpacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

.field public static final enum FM_CHSPACE_100_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

.field public static final enum FM_CHSPACE_200_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

.field public static final enum FM_CHSPACE_50_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    const-string v1, "FM_CHSPACE_200_KHZ"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_200_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    .line 182
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    const-string v1, "FM_CHSPACE_100_KHZ"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_100_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    .line 183
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    const-string v1, "FM_CHSPACE_50_KHZ"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_50_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    .line 180
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_200_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_100_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->FM_CHSPACE_50_KHZ:Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;
    .registers 2
    .parameter "name"

    .prologue
    .line 180
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;
    .registers 1

    .prologue
    .line 180
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$ChSpacing;

    return-object v0
.end method
