.class public Lcom/lge/feed/atom/Generator;
.super Lcom/lge/feed/Tag;
.source "Generator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f6fcaebda721b6fL


# instance fields
.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "version"
    .parameter "value"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lge/feed/atom/Generator;->url:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/lge/feed/atom/Generator;->version:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 50
    instance-of v2, p1, Lcom/lge/feed/atom/Generator;

    if-eqz v2, :cond_2a

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Generator;

    move-object v1, v0

    .line 52
    .local v1, g:Lcom/lge/feed/atom/Generator;
    iget-object v2, p0, Lcom/lge/feed/atom/Generator;->url:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Generator;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Generator;->version:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Generator;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 55
    .end local v1           #g:Lcom/lge/feed/atom/Generator;
    :goto_27
    return v2

    .line 52
    .restart local v1       #g:Lcom/lge/feed/atom/Generator;
    :cond_28
    const/4 v2, 0x0

    goto :goto_27

    .line 55
    .end local v1           #g:Lcom/lge/feed/atom/Generator;
    :cond_2a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_27
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/feed/atom/Generator;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/feed/atom/Generator;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lge/feed/atom/Generator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lge/feed/atom/Generator;->url:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/feed/atom/Generator;->version:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/feed/atom/Generator;->value:Ljava/lang/String;

    return-object v0
.end method
