.class public Lcom/lge/newbay/client/IMedia$FileHead;
.super Ljava/lang/Object;
.source "IMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileHead"
.end annotation


# instance fields
.field contentLength:J

.field etag:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 4
    .parameter "contentLength"
    .parameter "etag"

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-wide p1, p0, Lcom/lge/newbay/client/IMedia$FileHead;->contentLength:J

    .line 479
    iput p3, p0, Lcom/lge/newbay/client/IMedia$FileHead;->etag:I

    .line 480
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .prologue
    .line 448
    iget-wide v0, p0, Lcom/lge/newbay/client/IMedia$FileHead;->contentLength:J

    return-wide v0
.end method

.method public getEtag()I
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Lcom/lge/newbay/client/IMedia$FileHead;->etag:I

    return v0
.end method

.method public setContentLength(J)V
    .registers 3
    .parameter "contentLength"

    .prologue
    .line 455
    iput-wide p1, p0, Lcom/lge/newbay/client/IMedia$FileHead;->contentLength:J

    .line 456
    return-void
.end method

.method public setEtag(I)V
    .registers 2
    .parameter "etag"

    .prologue
    .line 469
    iput p1, p0, Lcom/lge/newbay/client/IMedia$FileHead;->etag:I

    .line 470
    return-void
.end method
