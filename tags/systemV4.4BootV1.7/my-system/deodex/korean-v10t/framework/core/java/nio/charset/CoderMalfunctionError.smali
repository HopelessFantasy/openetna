.class public Ljava/nio/charset/CoderMalfunctionError;
.super Ljava/lang/Error;
.source "CoderMalfunctionError.java"


# static fields
.field private static final serialVersionUID:J = -0xffaa36e1bfbb6fdL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .parameter "ex"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
