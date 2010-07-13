.class Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;
.super Ljava/lang/Object;
.source "FTM_Test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/wlan_service/FTM_Test;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->CloseDUT_HiddenMenu(Z)Z

    .line 61
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    iget-object v1, v1, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->OpenDUT_HiddenMenu(Z)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 62
    const-string v1, "FTM_Test"

    const-string v2, "[dongp.kim] OpenDUT_HiddenMenu(FTM Test) Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/lge/hiddenmenu/wlan_service/FTM_Test$1;->this$0:Lcom/lge/hiddenmenu/wlan_service/FTM_Test;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/wlan_service/FTM_Test;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OpenDUT fail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 64
    .local v0, warningMessage:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    .end local v0           #warningMessage:Landroid/widget/Toast;
    :cond_2a
    return-void
.end method
