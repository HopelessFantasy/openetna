.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$40;
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
    .line 487
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$40;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$40;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->showDialog(I)V

    .line 489
    return-void
.end method
