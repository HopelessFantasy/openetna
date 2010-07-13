.class public Lcom/lge/newbay/client/IMedia$MediaFile;
.super Ljava/lang/Object;
.source "IMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFile"
.end annotation


# instance fields
.field created:Ljava/util/Date;

.field size:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;J)V
    .registers 4
    .parameter "created"
    .parameter "size"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->created:Ljava/util/Date;

    .line 81
    iput-wide p2, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->size:J

    .line 82
    return-void
.end method


# virtual methods
.method public getCreated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->size:J

    return-wide v0
.end method

.method public setCreated(Ljava/util/Date;)V
    .registers 2
    .parameter "created"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->created:Ljava/util/Date;

    .line 58
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/lge/newbay/client/IMedia$MediaFile;->size:J

    .line 72
    return-void
.end method
