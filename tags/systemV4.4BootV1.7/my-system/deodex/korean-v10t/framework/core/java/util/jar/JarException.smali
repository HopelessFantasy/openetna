.class public Ljava/util/jar/JarException;
.super Ljava/util/zip/ZipException;
.source "JarException.java"


# static fields
.field private static final serialVersionUID:J = 0x635ca48583f88729L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/zip/ZipException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
