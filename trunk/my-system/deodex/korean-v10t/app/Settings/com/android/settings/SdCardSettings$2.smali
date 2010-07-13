.class Lcom/android/settings/SdCardSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SdCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SdCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SdCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SdCardSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/SdCardSettings$2;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/SdCardSettings$2;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-static {v0}, Lcom/android/settings/SdCardSettings;->access$200(Lcom/android/settings/SdCardSettings;)V

    .line 173
    return-void
.end method
