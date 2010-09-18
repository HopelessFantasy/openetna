.class public Lcom/lge/newbay/client/ICommunity$Feature;
.super Ljava/lang/Object;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ICommunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field alertable:Z

.field code:Ljava/lang/String;

.field featureProtected:Z

.field name:Ljava/lang/String;

.field restrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->code:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->name:Ljava/lang/String;

    .line 210
    iput-boolean v1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->alertable:Z

    .line 214
    iput-boolean v1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->featureProtected:Z

    .line 218
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->restrictions:Ljava/util/List;

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;)V
    .registers 8
    .parameter "code"
    .parameter "name"
    .parameter "alertable"
    .parameter "featureProtected"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, restrictions:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->code:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->name:Ljava/lang/String;

    .line 210
    iput-boolean v1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->alertable:Z

    .line 214
    iput-boolean v1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->featureProtected:Z

    .line 218
    iput-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->restrictions:Ljava/util/List;

    .line 300
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->code:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lcom/lge/newbay/client/ICommunity$Feature;->name:Ljava/lang/String;

    .line 302
    iput-boolean p3, p0, Lcom/lge/newbay/client/ICommunity$Feature;->alertable:Z

    .line 303
    iput-boolean p4, p0, Lcom/lge/newbay/client/ICommunity$Feature;->featureProtected:Z

    .line 304
    iput-object p5, p0, Lcom/lge/newbay/client/ICommunity$Feature;->restrictions:Ljava/util/List;

    .line 305
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->restrictions:Ljava/util/List;

    return-object v0
.end method

.method public isAlertable()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->alertable:Z

    return v0
.end method

.method public isFeatureProtected()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/lge/newbay/client/ICommunity$Feature;->featureProtected:Z

    return v0
.end method

.method public setAlertable(Z)V
    .registers 2
    .parameter "alertable"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->alertable:Z

    .line 260
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .parameter "code"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->code:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setFeatureProtected(Z)V
    .registers 2
    .parameter "featureProtected"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->featureProtected:Z

    .line 274
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->name:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setRestrictions(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, restrictions:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Feature;->restrictions:Ljava/util/List;

    .line 288
    return-void
.end method
