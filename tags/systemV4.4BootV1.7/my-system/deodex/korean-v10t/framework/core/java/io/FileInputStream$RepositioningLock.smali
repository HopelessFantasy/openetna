.class Ljava/io/FileInputStream$RepositioningLock;
.super Ljava/lang/Object;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepositioningLock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileInputStream$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/FileInputStream$RepositioningLock;-><init>()V

    return-void
.end method
