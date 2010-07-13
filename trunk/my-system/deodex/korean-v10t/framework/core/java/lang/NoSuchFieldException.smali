.class public Ljava/lang/NoSuchFieldException;
.super Ljava/lang/Exception;
.source "NoSuchFieldException.java"


# static fields
.field private static final serialVersionUID:J = -0x5542dc108a04d6d4L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
