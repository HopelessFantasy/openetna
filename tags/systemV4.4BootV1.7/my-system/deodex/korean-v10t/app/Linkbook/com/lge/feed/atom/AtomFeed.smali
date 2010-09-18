.class public Lcom/lge/feed/atom/AtomFeed;
.super Lcom/lge/feed/Feed;
.source "AtomFeed.java"


# static fields
.field private static final serialVersionUID:J = 0x5e9d9b11f71a6757L


# instance fields
.field private alternateLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;"
        }
    .end annotation
.end field

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;"
        }
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Category;",
            ">;"
        }
    .end annotation
.end field

.field private contributors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;"
        }
    .end annotation
.end field

.field private copyrights:Ljava/lang/String;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private generator:Lcom/lge/feed/atom/Generator;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Lcom/lge/feed/atom/Content;

.field private language:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private modified:Ljava/util/Date;

.field private otherLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Lcom/lge/feed/atom/Content;

.field private title:Lcom/lge/feed/atom/Content;

.field private xmlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/feed/Feed;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/lge/feed/Feed;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    .line 59
    return-void
.end method

.method public static findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;
    .registers 6
    .parameter
    .parameter "rel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lge/feed/atom/Link;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz p0, :cond_1e

    .line 481
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 482
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1e

    .line 483
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Link;

    .line 484
    .local v2, link:Lcom/lge/feed/atom/Link;
    invoke-virtual {v2}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v3, v2

    .line 489
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    :goto_1a
    return-object v3

    .line 482
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #link:Lcom/lge/feed/atom/Link;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 489
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #link:Lcom/lge/feed/atom/Link;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public getAlternateLinks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    goto :goto_b
.end method

.method public getAuthors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    goto :goto_b
.end method

.method public getCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    goto :goto_b
.end method

.method public getContributors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    goto :goto_b
.end method

.method public getCopyright()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->copyrights:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    goto :goto_b
.end method

.method public getGenerator()Lcom/lge/feed/atom/Generator;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->generator:Lcom/lge/feed/atom/Generator;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->info:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getOtherLinks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    goto :goto_b
.end method

.method public getRights()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->copyrights:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->subtitle:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getTagline()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->subtitle:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getTitle()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getTitleValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    invoke-virtual {v0}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->modified:Ljava/util/Date;

    return-object v0
.end method

.method public getXmlBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->xmlBase:Ljava/lang/String;

    return-object v0
.end method

.method public setAlternateLinks(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, alternateLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->alternateLinks:Ljava/util/List;

    .line 141
    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->authors:Ljava/util/List;

    .line 181
    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Category;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->categories:Ljava/util/List;

    .line 357
    return-void
.end method

.method public setContributors(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, contributors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->contributors:Ljava/util/List;

    .line 203
    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .registers 2
    .parameter "copyright"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->copyrights:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->entries:Ljava/util/List;

    .line 337
    return-void
.end method

.method public setGenerator(Lcom/lge/feed/atom/Generator;)V
    .registers 2
    .parameter "generator"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->generator:Lcom/lge/feed/atom/Generator;

    .line 261
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->icon:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->id:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setInfo(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->info:Lcom/lge/feed/atom/Content;

    .line 297
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2
    .parameter "language"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->language:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .registers 2
    .parameter "logo"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->logo:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setModified(Ljava/util/Date;)V
    .registers 2
    .parameter "modified"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->modified:Ljava/util/Date;

    .line 315
    return-void
.end method

.method public setOtherLinks(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, otherLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->otherLinks:Ljava/util/List;

    .line 161
    return-void
.end method

.method public setRights(Ljava/lang/String;)V
    .registers 2
    .parameter "rights"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->copyrights:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setSubtitle(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "subtitle"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->subtitle:Lcom/lge/feed/atom/Content;

    .line 437
    return-void
.end method

.method public setTagline(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "tagline"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->subtitle:Lcom/lge/feed/atom/Content;

    .line 221
    return-void
.end method

.method public setTitle(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    .line 121
    return-void
.end method

.method public setTitleValue(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    if-nez v0, :cond_b

    new-instance v0, Lcom/lge/feed/atom/Content;

    invoke-direct {v0}, Lcom/lge/feed/atom/Content;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    .line 100
    :cond_b
    iget-object v0, p0, Lcom/lge/feed/atom/AtomFeed;->title:Lcom/lge/feed/atom/Content;

    invoke-virtual {v0, p1}, Lcom/lge/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->modified:Ljava/util/Date;

    .line 457
    return-void
.end method

.method public setXmlBase(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlBase"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lge/feed/atom/AtomFeed;->xmlBase:Ljava/lang/String;

    .line 477
    return-void
.end method
