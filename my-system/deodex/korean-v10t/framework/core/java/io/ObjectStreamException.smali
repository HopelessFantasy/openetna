.class public abstract Ljava/io/ObjectStreamException;
.super Ljava/io/IOException;
.source "ObjectStreamException.java"


# static fields
.field private static final serialVersionUID:J = 0x64c3e46b8d39fbdfL


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
