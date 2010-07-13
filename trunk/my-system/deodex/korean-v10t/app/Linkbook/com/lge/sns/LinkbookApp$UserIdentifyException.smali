.class public Lcom/lge/sns/LinkbookApp$UserIdentifyException;
.super Lcom/lge/sns/SnsException;
.source "LinkbookApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/LinkbookApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserIdentifyException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x621f135d5ca02089L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/sns/SnsException;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "throwable"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
