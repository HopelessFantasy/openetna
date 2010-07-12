.class Landroid/backup/BackupHelperDispatcher$Header;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/backup/BackupHelperDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field chunkSize:I

.field keyPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/backup/BackupHelperDispatcher$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/backup/BackupHelperDispatcher$Header;-><init>()V

    return-void
.end method
