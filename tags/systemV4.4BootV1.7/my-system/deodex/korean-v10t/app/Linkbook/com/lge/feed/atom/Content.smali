.class public Lcom/lge/feed/atom/Content;
.super Lcom/lge/feed/Tag;
.source "Content.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BASE64:Ljava/lang/String; = "base64"

.field public static final ESCAPED:Ljava/lang/String; = "escaped"

.field public static final HTML:Ljava/lang/String; = "html"

.field private static final MODES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final XHTML:Ljava/lang/String; = "xhtml"

.field public static final XML:Ljava/lang/String; = "xml"

.field private static final serialVersionUID:J = -0x60f9bd965616c1e7L


# instance fields
.field private mode:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lge/feed/atom/Content;->MODES:Ljava/util/Set;

    .line 50
    sget-object v0, Lcom/lge/feed/atom/Content;->MODES:Ljava/util/Set;

    const-string v1, "xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/lge/feed/atom/Content;->MODES:Ljava/util/Set;

    const-string v1, "base64"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/lge/feed/atom/Content;->MODES:Ljava/util/Set;

    const-string v1, "escaped"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "mode"
    .parameter "type"
    .parameter "value"
    .parameter "src"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lge/feed/Tag;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 80
    instance-of v2, p1, Lcom/lge/feed/atom/Content;

    if-eqz v2, :cond_34

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/lge/feed/atom/Content;

    move-object v1, v0

    .line 82
    .local v1, c:Lcom/lge/feed/atom/Content;
    iget-object v2, p0, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    iget-object v3, v1, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lge/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    .line 85
    .end local v1           #c:Lcom/lge/feed/atom/Content;
    :goto_31
    return v2

    .line 82
    .restart local v1       #c:Lcom/lge/feed/atom/Content;
    :cond_32
    const/4 v2, 0x0

    goto :goto_31

    .line 85
    .end local v1           #c:Lcom/lge/feed/atom/Content;
    :cond_34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_31
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/lge/feed/atom/Content;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .parameter "src"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "/"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/feed/atom/Content;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Content;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Content;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/feed/atom/Content;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
