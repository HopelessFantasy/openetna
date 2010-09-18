.class public Ljava/lang/AssertionError;
.super Ljava/lang/Error;
.source "AssertionError.java"


# static fields
.field private static final serialVersionUID:J = -0x4592d15402bec21aL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(C)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .parameter "detailMessage"

    .prologue
    .line 124
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .parameter "detailMessage"

    .prologue
    .line 100
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter "detailMessage"

    .prologue
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    check-cast p1, Ljava/lang/Throwable;

    .end local p1
    move-object v1, p1

    :goto_b
    invoke-direct {p0, v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void

    .line 50
    .restart local p1
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
