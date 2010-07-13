.class public Lcom/lge/feed/atom/Entry;
.super Lcom/lge/feed/ExtendableHelper;
.source "Entry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x42b45e545fa4142dL


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

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Content;",
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

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

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

.field private published:Ljava/util/Date;

.field private rights:Ljava/lang/String;

.field private source:Lcom/lge/feed/atom/AtomFeed;

.field private summary:Lcom/lge/feed/atom/Content;

.field private title:Lcom/lge/feed/atom/Content;

.field private updated:Ljava/util/Date;

.field private xmlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/feed/ExtendableHelper;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/lge/feed/atom/AtomFeed;Lcom/lge/feed/atom/Content;Lcom/lge/feed/atom/Content;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/Date;)V
    .registers 16
    .parameter "xmlBase"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "id"
    .parameter "published"
    .parameter "rights"
    .parameter "source"
    .parameter "summary"
    .parameter "title"
    .parameter "updated"
    .parameter
    .parameter
    .parameter "created"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Person;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Category;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Content;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Lcom/lge/feed/atom/AtomFeed;",
            "Lcom/lge/feed/atom/Content;",
            "Lcom/lge/feed/atom/Content;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Link;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    .local p3, contributors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    .local p4, categories:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Category;>;"
    .local p5, contents:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Content;>;"
    .local p13, alternateLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    .local p14, otherLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    invoke-direct {p0}, Lcom/lge/feed/ExtendableHelper;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    .line 59
    iput-object p4, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    .line 60
    iput-object p5, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    .line 61
    iput-object p6, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    .line 63
    iput-object p8, p0, Lcom/lge/feed/atom/Entry;->rights:Ljava/lang/String;

    .line 64
    iput-object p9, p0, Lcom/lge/feed/atom/Entry;->source:Lcom/lge/feed/atom/AtomFeed;

    .line 65
    iput-object p10, p0, Lcom/lge/feed/atom/Entry;->summary:Lcom/lge/feed/atom/Content;

    .line 66
    iput-object p11, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    .line 67
    iput-object p12, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    .line 68
    iput-object p13, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    .line 69
    iput-object p14, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    .line 70
    iput-object p15, p0, Lcom/lge/feed/atom/Entry;->created:Ljava/util/Date;

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 81
    instance-of v2, p1, Lcom/lge/feed/atom/Entry;

    if-eqz v2, :cond_a2

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Entry;

    move-object v1, v0

    .line 83
    .local v1, e:Lcom/lge/feed/atom/Entry;
    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->rights:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->rights:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->source:Lcom/lge/feed/atom/AtomFeed;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->source:Lcom/lge/feed/atom/AtomFeed;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->summary:Lcom/lge/feed/atom/Content;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->summary:Lcom/lge/feed/atom/Content;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/lge/feed/atom/Entry;->created:Ljava/util/Date;

    iget-object v3, v1, Lcom/lge/feed/atom/Entry;->created:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x1

    .line 92
    .end local v1           #e:Lcom/lge/feed/atom/Entry;
    :goto_9f
    return v2

    .line 83
    .restart local v1       #e:Lcom/lge/feed/atom/Entry;
    :cond_a0
    const/4 v2, 0x0

    goto :goto_9f

    .line 92
    .end local v1           #e:Lcom/lge/feed/atom/Entry;
    :cond_a2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9f
.end method

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
    .line 165
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

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
    .line 205
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

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
    .line 439
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    goto :goto_b
.end method

.method public getContents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

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
    .line 226
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    goto :goto_b
.end method

.method public getCreated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIssued()Ljava/util/Date;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

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
    .line 185
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    goto :goto_b
.end method

.method public getPublished()Ljava/util/Date;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    return-object v0
.end method

.method public getRights()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->rights:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/lge/feed/atom/AtomFeed;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->source:Lcom/lge/feed/atom/AtomFeed;

    return-object v0
.end method

.method public getSummary()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->summary:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getTitle()Lcom/lge/feed/atom/Content;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    return-object v0
.end method

.method public getTitleValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    invoke-virtual {v0}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUpdated()Ljava/util/Date;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getXmlBase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMediaEntry()Z
    .registers 7

    .prologue
    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, mediaEntry:Z
    invoke-virtual {p0}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v2

    .line 481
    .local v2, links:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Link;

    .line 482
    .local v1, link:Lcom/lge/feed/atom/Link;
    const-string v4, "edit-media"

    invoke-virtual {v1}, Lcom/lge/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 483
    const/4 v3, 0x1

    .line 487
    .end local v1           #link:Lcom/lge/feed/atom/Link;
    :cond_22
    return v3
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
    .line 175
    .local p1, alternateLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    .line 176
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
    .line 215
    .local p1, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->authors:Ljava/util/List;

    .line 216
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
    .line 450
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Category;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->categories:Ljava/util/List;

    .line 451
    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/feed/atom/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, contents:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Content;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->contents:Ljava/util/List;

    .line 352
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
    .line 237
    .local p1, contributors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->contributors:Ljava/util/List;

    .line 238
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .registers 2
    .parameter "created"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->created:Ljava/util/Date;

    .line 312
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setIssued(Ljava/util/Date;)V
    .registers 2
    .parameter "issued"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    .line 294
    return-void
.end method

.method public setModified(Ljava/util/Date;)V
    .registers 2
    .parameter "modified"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    .line 276
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
    .line 195
    .local p1, otherLinks:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->otherLinks:Ljava/util/List;

    .line 196
    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .registers 2
    .parameter "published"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->published:Ljava/util/Date;

    .line 372
    return-void
.end method

.method public setRights(Ljava/lang/String;)V
    .registers 2
    .parameter "rights"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->rights:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setSource(Lcom/lge/feed/atom/AtomFeed;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->source:Lcom/lge/feed/atom/AtomFeed;

    .line 410
    return-void
.end method

.method public setSummary(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "summary"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->summary:Lcom/lge/feed/atom/Content;

    .line 332
    return-void
.end method

.method public setTitle(Lcom/lge/feed/atom/Content;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    .line 157
    return-void
.end method

.method public setTitleValue(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    if-nez v0, :cond_b

    new-instance v0, Lcom/lge/feed/atom/Content;

    invoke-direct {v0}, Lcom/lge/feed/atom/Content;-><init>()V

    iput-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->title:Lcom/lge/feed/atom/Content;

    invoke-virtual {v0, p1}, Lcom/lge/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->updated:Ljava/util/Date;

    .line 430
    return-void
.end method

.method public setXmlBase(Ljava/lang/String;)V
    .registers 2
    .parameter "xmlBase"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/lge/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/feed/atom/Entry;->id:Ljava/lang/String;

    return-object v0
.end method
