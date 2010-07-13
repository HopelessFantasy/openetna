.class public Lcom/lge/newbay/client/ICommunity$SnsFeatures;
.super Ljava/lang/Object;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ICommunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsFeatures"
.end annotation


# instance fields
.field activated:Z

.field features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "id"
    .parameter "activated"
    .parameter "name"
    .parameter "type"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p6, features:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Feature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->id:Ljava/lang/String;

    .line 449
    iput-boolean p2, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->activated:Z

    .line 450
    iput-object p3, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->name:Ljava/lang/String;

    .line 451
    iput p4, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->type:I

    .line 452
    iput-object p5, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->url:Ljava/lang/String;

    .line 453
    iput-object p6, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->features:Ljava/util/List;

    .line 454
    return-void
.end method


# virtual methods
.method public getFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->features:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->activated:Z

    return v0
.end method

.method public setActivated(Z)V
    .registers 2
    .parameter "activated"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->activated:Z

    .line 373
    return-void
.end method

.method public setFeatures(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, features:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Feature;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->features:Ljava/util/List;

    .line 429
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->id:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->name:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 400
    iput p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->type:I

    .line 401
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsFeatures;->url:Ljava/lang/String;

    .line 415
    return-void
.end method
