.class public Lcom/lge/sns/UnauthorizatedException;
.super Lcom/lge/sns/InvalidStatusCodeException;
.source "UnauthorizatedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1898f70446c3fbaL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "detailMessage"

    .prologue
    .line 26
    const/16 v0, 0x191

    invoke-direct {p0, v0, p1}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    .line 27
    return-void
.end method
