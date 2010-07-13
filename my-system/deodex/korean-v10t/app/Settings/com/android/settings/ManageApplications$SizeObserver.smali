.class Lcom/android/settings/ManageApplications$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 2
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/android/settings/ManageApplications$SizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter "packageName"
    .parameter "count"

    .prologue
    .line 1177
    iput-object p2, p0, Lcom/android/settings/ManageApplications$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    .line 1178
    iget-object v0, p0, Lcom/android/settings/ManageApplications$SizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1179
    return-void
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 4
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 1182
    iput-boolean p2, p0, Lcom/android/settings/ManageApplications$SizeObserver;->succeeded:Z

    .line 1183
    iput-object p1, p0, Lcom/android/settings/ManageApplications$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 1184
    iget-object v0, p0, Lcom/android/settings/ManageApplications$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1185
    return-void
.end method
