.class public Ljava/lang/NoSuchMethodError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "NoSuchMethodError.java"


# static fields
.field private static final serialVersionUID:J = -0x3441d1cd1ebfc867L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
