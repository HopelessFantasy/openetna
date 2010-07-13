.class Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearCacheReceiver"
.end annotation


# static fields
.field public static final INTENT_CLEAR_CACHE:Ljava/lang/String; = "com.android.packageinstaller.CLEAR_CACHE"


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$400(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;->getResultCode()I

    move-result v1

    if-ne v1, v2, :cond_1e

    move v1, v2

    :goto_12
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 253
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$400(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void

    .line 252
    :cond_1e
    const/4 v1, 0x0

    goto :goto_12
.end method
