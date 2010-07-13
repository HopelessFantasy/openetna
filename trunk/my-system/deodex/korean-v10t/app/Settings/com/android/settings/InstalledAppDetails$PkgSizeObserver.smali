.class Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field public idx:I

.field final synthetic this$0:Lcom/android/settings/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/InstalledAppDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 7
    .parameter "pStats"
    .parameter "succeeded"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/InstalledAppDetails;->access$500(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "PackageStats"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/InstalledAppDetails;->access$500(Lcom/android/settings/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method
