.class public Lcom/lge/sns/InvalidStatusCodeException;
.super Lcom/lge/sns/InvalidResponseException;
.source "InvalidStatusCodeException.java"


# static fields
.field private static final serialVersionUID:J = -0x12701508b81e3ee2L


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lge/sns/InvalidResponseException;-><init>()V

    .line 23
    iput p1, p0, Lcom/lge/sns/InvalidStatusCodeException;->statusCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "statusCode"
    .parameter "detailMessage"

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/String;)V

    .line 28
    iput p1, p0, Lcom/lge/sns/InvalidStatusCodeException;->statusCode:I

    .line 29
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/sns/InvalidStatusCodeException;->statusCode:I

    return v0
.end method
