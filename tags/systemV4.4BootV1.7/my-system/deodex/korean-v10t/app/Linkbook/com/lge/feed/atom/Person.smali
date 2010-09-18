.class public Lcom/lge/feed/atom/Person;
.super Lcom/lge/feed/ExtendableHelper;
.source "Person.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2d7f9b6670515931L


# instance fields
.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/feed/ExtendableHelper;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "uri"
    .parameter "email"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/feed/ExtendableHelper;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 49
    instance-of v2, p1, Lcom/lge/feed/atom/Person;

    if-eqz v2, :cond_2a

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Person;

    move-object v1, v0

    .line 51
    .local v1, p:Lcom/lge/feed/atom/Person;
    iget-object v2, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 53
    .end local v1           #p:Lcom/lge/feed/atom/Person;
    :goto_27
    return v2

    .line 51
    .restart local v1       #p:Lcom/lge/feed/atom/Person;
    :cond_28
    const/4 v2, 0x0

    goto :goto_27

    .line 53
    .end local v1           #p:Lcom/lge/feed/atom/Person;
    :cond_2a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_27
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lge/feed/atom/Person;->uri:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/feed/atom/Person;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Person;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
