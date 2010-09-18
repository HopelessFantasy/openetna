.class Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplicantStateChangeResult"
.end annotation


# instance fields
.field networkId:I

.field state:Landroid/net/wifi/SupplicantState;


# direct methods
.method constructor <init>(ILandroid/net/wifi/SupplicantState;)V
    .registers 3
    .parameter "networkId"
    .parameter "state"

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 310
    iput p1, p0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    .line 311
    return-void
.end method
