.class public Ljava/io/FileNotFoundException;
.super Ljava/io/IOException;
.source "FileNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = -0xc75d4291fde951cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
