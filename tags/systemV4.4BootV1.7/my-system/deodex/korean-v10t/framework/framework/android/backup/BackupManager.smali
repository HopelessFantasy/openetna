.class public Landroid/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field public static final EVEN_THINK_ABOUT_DOING_RESTORE:Z = false

.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private static checkServiceBinder()V
    .registers 1

    .prologue
    .line 52
    sget-object v0, Landroid/backup/BackupManager;->sService:Landroid/backup/IBackupManager;

    if-nez v0, :cond_10

    .line 53
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/backup/BackupManager;->sService:Landroid/backup/IBackupManager;

    .line 56
    :cond_10
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .registers 1
    .parameter "packageName"

    .prologue
    .line 99
    return-void
.end method


# virtual methods
.method public beginRestoreSession(Ljava/lang/String;)Landroid/backup/IRestoreSession;
    .registers 3
    .parameter "transport"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataChanged()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method
