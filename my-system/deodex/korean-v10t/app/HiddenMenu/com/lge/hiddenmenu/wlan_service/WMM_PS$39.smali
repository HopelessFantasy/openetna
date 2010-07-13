.class Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;
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
    .line 465
    iput-object p1, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 466
    const-string v1, "/data/misc/wifi/config"

    .line 467
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, aFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 469
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 470
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    .line 472
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 474
    :cond_23
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->config_create()V

    .line 475
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->config_parsing()V

    .line 482
    .end local v2           #parentDir:Ljava/io/File;
    :goto_2d
    return-void

    .line 479
    :cond_2e
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->config_create()V

    .line 480
    iget-object v3, p0, Lcom/lge/hiddenmenu/wlan_service/WMM_PS$39;->this$0:Lcom/lge/hiddenmenu/wlan_service/WMM_PS;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/wlan_service/WMM_PS;->config_parsing()V

    goto :goto_2d
.end method
