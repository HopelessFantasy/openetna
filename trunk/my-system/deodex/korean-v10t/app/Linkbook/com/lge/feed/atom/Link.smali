.class public Lcom/lge/feed/atom/Link;
.super Lcom/lge/feed/Tag;
.source "Link.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3db010f44ce03a41L


# instance fields
.field private href:Ljava/lang/String;

.field private hreflang:Ljava/lang/String;

.field private length:J

.field private rel:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 24
    const-string v0, "alternate"

    iput-object v0, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "href"
    .parameter "rel"
    .parameter "type"
    .parameter "hreflang"
    .parameter "title"
    .parameter "length"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 24
    const-string v0, "alternate"

    iput-object v0, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/lge/feed/atom/Link;->type:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/lge/feed/atom/Link;->hreflang:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    .line 48
    iput-wide p6, p0, Lcom/lge/feed/atom/Link;->length:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    .line 59
    instance-of v2, p1, Lcom/lge/feed/atom/Link;

    if-eqz v2, :cond_46

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Link;

    move-object v1, v0

    .line 61
    .local v1, l:Lcom/lge/feed/atom/Link;
    iget-object v2, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/lge/feed/atom/Link;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Link;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/lge/feed/atom/Link;->hreflang:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Link;->hreflang:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-wide v2, p0, Lcom/lge/feed/atom/Link;->length:J

    iget-wide v4, v1, Lcom/lge/feed/atom/Link;->length:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    const/4 v2, 0x1

    .line 64
    .end local v1           #l:Lcom/lge/feed/atom/Link;
    :goto_43
    return v2

    .line 61
    .restart local v1       #l:Lcom/lge/feed/atom/Link;
    :cond_44
    const/4 v2, 0x0

    goto :goto_43

    .line 64
    .end local v1           #l:Lcom/lge/feed/atom/Link;
    :cond_46
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_43
.end method

.method public getHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->hreflang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/lge/feed/atom/Link;->length:J

    return-wide v0
.end method

.method public getRel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHref(Ljava/lang/String;)V
    .registers 2
    .parameter "href"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .registers 2
    .parameter "hreflang"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->hreflang:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setLength(J)V
    .registers 3
    .parameter "length"

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/lge/feed/atom/Link;->length:J

    .line 205
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .registers 2
    .parameter "rel"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->rel:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/feed/atom/Link;->type:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/feed/atom/Link;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
