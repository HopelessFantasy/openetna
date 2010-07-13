.class Lcom/android/packageinstaller/PackageInstallerActivity$1;
.super Landroid/os/Handler;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 103
    :goto_5
    return-void

    .line 93
    :pswitch_6
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageInstallerActivity;->mClearCacheReceiver:Lcom/android/packageinstaller/PackageInstallerActivity$ClearCacheReceiver;

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 95
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    goto :goto_5

    .line 97
    :cond_1a
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$100(Lcom/android/packageinstaller/PackageInstallerActivity;I)V

    goto :goto_5

    .line 91
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
