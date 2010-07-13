.class public Ljava/net/ProtocolException;
.super Ljava/io/IOException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x54a20b74e2cecb70L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
