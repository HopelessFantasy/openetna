.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 5
    .parameter

    .prologue
    .line 1627
    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    .line 1628
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1629
    invoke-static {p1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1631
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 1635
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1637
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$3102(Landroid/media/AudioService;I)I

    .line 1645
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;IZ)V

    .line 1646
    return-void
.end method
