.class public Lcom/lge/newbay/client/IMedia$Batch;
.super Ljava/lang/Object;
.source "IMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Batch"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field id:Ljava/lang/String;

.field status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter "id"
    .parameter "status"
    .parameter "error"

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$Batch;->id:Ljava/lang/String;

    .line 369
    iput p2, p0, Lcom/lge/newbay/client/IMedia$Batch;->status:I

    .line 370
    iput-object p3, p0, Lcom/lge/newbay/client/IMedia$Batch;->error:Ljava/lang/String;

    .line 371
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$Batch;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/newbay/client/IMedia$Batch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/lge/newbay/client/IMedia$Batch;->status:I

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$Batch;->error:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lge/newbay/client/IMedia$Batch;->id:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 344
    iput p1, p0, Lcom/lge/newbay/client/IMedia$Batch;->status:I

    .line 345
    return-void
.end method
