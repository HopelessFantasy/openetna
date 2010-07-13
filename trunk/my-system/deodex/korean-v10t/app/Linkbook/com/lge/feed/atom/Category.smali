.class public Lcom/lge/feed/atom/Category;
.super Lcom/lge/feed/Tag;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x557756be6514ee9dL


# instance fields
.field private label:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "term"
    .parameter "scheme"
    .parameter "label"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 55
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    .line 47
    instance-of v2, p1, Lcom/lge/feed/atom/Category;

    if-eqz v2, :cond_2a

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Category;

    move-object v1, v0

    .line 49
    .local v1, c:Lcom/lge/feed/atom/Category;
    iget-object v2, p0, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/feed/atom/Category;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/feed/atom/Category;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/feed/atom/Category;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    .line 51
    .end local v1           #c:Lcom/lge/feed/atom/Category;
    :goto_27
    return v2

    .line 49
    .restart local v1       #c:Lcom/lge/feed/atom/Category;
    :cond_28
    const/4 v2, 0x0

    goto :goto_27

    .line 51
    .end local v1           #c:Lcom/lge/feed/atom/Category;
    :cond_2a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_27
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lge/feed/atom/Category;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2
    .parameter "scheme"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTerm(Ljava/lang/String;)V
    .registers 2
    .parameter "term"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "/"

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/feed/atom/Category;->term:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Category;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
