.class Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/InstalledAppDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/InstalledAppDetails;->access$500(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_1a

    const/4 v1, 0x1

    :goto_e
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 165
    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails$ClearCacheObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/InstalledAppDetails;->access$500(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void

    .line 164
    :cond_1a
    const/4 v1, 0x2

    goto :goto_e
.end method
