.class Ljava/io/RandomAccessFile$RepositionLock;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/RandomAccessFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepositionLock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/RandomAccessFile$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/io/RandomAccessFile$RepositionLock;-><init>()V

    return-void
.end method
