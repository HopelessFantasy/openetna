.class public Lcom/android/internal/backup/SystemBackupAgent;
.super Landroid/backup/BackupHelperAgent;
.source "SystemBackupAgent.java"


# instance fields
.field mFiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/backup/BackupHelperAgent;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/backup/SystemBackupAgent;->mFiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 33
    const-string v0, "system_files"

    new-instance v1, Landroid/backup/AbsoluteFileBackupHelper;

    iget-object v2, p0, Lcom/android/internal/backup/SystemBackupAgent;->mFiles:[Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/backup/BackupHelper;)V

    .line 34
    return-void
.end method
