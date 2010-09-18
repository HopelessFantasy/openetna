.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$43;
.super Ljava/lang/Object;
.source "WMM_PS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->onCreate(Landroid/os/Bundle;)V
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
    .line 509
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$43;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$43;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->config_update()V

    .line 511
    return-void
.end method
