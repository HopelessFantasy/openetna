.class public Lcom/lge/feed/ExtendableHelper;
.super Lcom/lge/feed/Tag;
.source "ExtendableHelper.java"

# interfaces
.implements Lcom/lge/feed/Extendable;


# instance fields
.field private foreignMarkup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    return-void
.end method


# virtual methods
.method public getKnownMarkup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/feed/ExtendableHelper;->foreignMarkup:Ljava/util/List;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/ExtendableHelper;->foreignMarkup:Ljava/util/List;

    .line 32
    :cond_b
    iget-object v0, p0, Lcom/lge/feed/ExtendableHelper;->foreignMarkup:Ljava/util/List;

    return-object v0
.end method

.method public setUnknownMarkup(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/Markup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, foreignMarkup:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/Markup;>;"
    iput-object p1, p0, Lcom/lge/feed/ExtendableHelper;->foreignMarkup:Ljava/util/List;

    .line 43
    return-void
.end method
