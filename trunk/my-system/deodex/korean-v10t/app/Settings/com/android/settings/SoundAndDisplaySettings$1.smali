.class Lcom/android/settings/SoundAndDisplaySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundAndDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundAndDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundAndDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundAndDisplaySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/SoundAndDisplaySettings$1;->this$0:Lcom/android/settings/SoundAndDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/SoundAndDisplaySettings$1;->this$0:Lcom/android/settings/SoundAndDisplaySettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SoundAndDisplaySettings;->access$000(Lcom/android/settings/SoundAndDisplaySettings;Z)V

    .line 138
    return-void
.end method
