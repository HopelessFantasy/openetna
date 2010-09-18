.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxSrchListMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field public static final enum FM_RX_SRCHLIST_MODE_PTY:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field public static final enum FM_RX_SRCHLIST_MODE_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field public static final enum FM_RX_SRCHLIST_MODE_STRONGEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field public static final enum FM_RX_SRCHLIST_MODE_WEAKEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

.field public static final enum FM_RX_SRCHLIST_MODE_WEEK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    const-string v1, "FM_RX_SRCHLIST_MODE_STRONG"

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    .line 95
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    const-string v1, "FM_RX_SRCHLIST_MODE_WEEK"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_WEEK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    .line 96
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    const-string v1, "FM_RX_SRCHLIST_MODE_STRONGEST"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_STRONGEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    .line 97
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    const-string v1, "FM_RX_SRCHLIST_MODE_WEAKEST"

    invoke-direct {v0, v1, v5}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_WEAKEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    .line 98
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    const-string v1, "FM_RX_SRCHLIST_MODE_PTY"

    invoke-direct {v0, v1, v6}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_PTY:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_STRONG:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_WEEK:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_STRONGEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_WEAKEST:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->FM_RX_SRCHLIST_MODE_PTY:Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    aput-object v1, v0, v6

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxSrchListMode;

    return-object v0
.end method
