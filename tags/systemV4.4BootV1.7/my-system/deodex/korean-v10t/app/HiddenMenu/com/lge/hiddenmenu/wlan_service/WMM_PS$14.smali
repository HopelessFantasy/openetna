.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;
.super Ljava/lang/Object;
.source "WMM_PS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/WMM_PS;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 208
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v0, v0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v2, v2, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    const-wide/high16 v3, 0x4008

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v3, v3, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v6, v7, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v3, v3, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const-wide/high16 v4, 0x3ff0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$14;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    iget-object v3, v3, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->qos_info:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 213
    return-void
.end method
