.class Lcom/android/settings/ManageApplications$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 2
    .parameter

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeGetSizeInfo(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 2038
    if-nez p1, :cond_3

    .line 2050
    :goto_2
    return-void

    .line 2042
    :cond_3
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    .line 2044
    iget-object v0, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2045
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking getPackageSizeInfo for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_25
    iget-object v0, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_2
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 12
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    const-string v8, "ManageApplications"

    .line 2003
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$3400(Lcom/android/settings/ManageApplications;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2005
    const-wide/16 v5, 0x2710

    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_a4

    .line 2010
    :cond_f
    :goto_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2011
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "p"

    iget-object v6, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const-string v5, "passed"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2014
    if-eqz p2, :cond_9c

    if-eqz p1, :cond_9c

    .line 2015
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2016
    const-string v5, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetStatsCompleted::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_6a
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5, p1}, Lcom/android/settings/ManageApplications;->access$2800(Lcom/android/settings/ManageApplications;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    .line 2023
    .local v3, total:J
    const-string v5, "s"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2025
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5, v3, v4}, Lcom/android/settings/ManageApplications;->access$2900(Lcom/android/settings/ManageApplications;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2026
    .local v2, sizeStr:Ljava/lang/CharSequence;
    const-string v5, "f"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    .end local v2           #sizeStr:Ljava/lang/CharSequence;
    .end local v3           #total:J
    :goto_84
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2033
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2034
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    return-void

    .line 2028
    .end local v1           #msg:Landroid/os/Message;
    :cond_9c
    const-string v5, "ManageApplications"

    const-string v5, "Invalid package stats from PackageManager"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 2006
    .end local v0           #data:Landroid/os/Bundle;
    :catch_a4
    move-exception v5

    goto/16 :goto_f
.end method
