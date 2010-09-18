.class Lcom/android/server/BackupManagerService$PerformRestoreThread$RestoreRequest;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformRestoreThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreRequest"
.end annotation


# instance fields
.field public app:Landroid/content/pm/PackageInfo;

.field public storedAppVersion:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformRestoreThread;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformRestoreThread;Landroid/content/pm/PackageInfo;I)V
    .registers 4
    .parameter
    .parameter "_app"
    .parameter "_version"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread$RestoreRequest;->this$1:Lcom/android/server/BackupManagerService$PerformRestoreThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread$RestoreRequest;->app:Landroid/content/pm/PackageInfo;

    .line 890
    iput p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread$RestoreRequest;->storedAppVersion:I

    .line 891
    return-void
.end method
