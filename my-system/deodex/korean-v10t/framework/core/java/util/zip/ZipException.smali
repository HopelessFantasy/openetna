.class public Ljava/util/zip/ZipException;
.super Ljava/io/IOException;
.source "ZipException.java"


# static fields
.field private static final serialVersionUID:J = 0x6f0668a23bc0d4cfL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
