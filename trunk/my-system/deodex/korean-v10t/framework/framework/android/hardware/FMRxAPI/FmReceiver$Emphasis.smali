.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Emphasis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

.field public static final enum FM_DE_EMP50:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

.field public static final enum FM_DE_EMP75:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    const-string v1, "FM_DE_EMP75"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->FM_DE_EMP75:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    .line 52
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    const-string v1, "FM_DE_EMP50"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->FM_DE_EMP50:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->FM_DE_EMP75:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->FM_DE_EMP50:Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;
    .registers 2
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$Emphasis;

    return-object v0
.end method
