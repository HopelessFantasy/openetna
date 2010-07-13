.class public Lcom/lge/sns/LinkbookApp$SimStateException;
.super Lcom/lge/sns/SnsException;
.source "LinkbookApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/LinkbookApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimStateException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2b7bb463dd67cd58L


# instance fields
.field final simState:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/sns/SnsException;-><init>()V

    .line 45
    iput p1, p0, Lcom/lge/sns/LinkbookApp$SimStateException;->simState:I

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "simState"
    .parameter "detailMessage"

    .prologue
    .line 49
    invoke-direct {p0, p2}, Lcom/lge/sns/SnsException;-><init>(Ljava/lang/String;)V

    .line 50
    iput p1, p0, Lcom/lge/sns/LinkbookApp$SimStateException;->simState:I

    .line 51
    return-void
.end method
