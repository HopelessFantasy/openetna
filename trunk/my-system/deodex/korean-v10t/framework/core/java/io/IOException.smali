.class public Ljava/io/IOException;
.super Ljava/lang/Exception;
.source "IOException.java"


# static fields
.field private static final serialVersionUID:J = 0x6c8073646525f0abL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
