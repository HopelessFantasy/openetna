.class public Ljava/io/NotSerializableException;
.super Ljava/io/ObjectStreamException;
.source "NotSerializableException.java"


# static fields
.field private static final serialVersionUID:J = 0x28567800e7861635L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/ObjectStreamException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
