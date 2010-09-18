.class Ljava/util/MapEntry;
.super Ljava/lang/Object;
.source "MapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MapEntry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    .local p2, theValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 47
    :goto_4
    return-object v1

    .line 46
    :catch_5
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 63
    :goto_5
    return v2

    .line 56
    :cond_6
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3f

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 58
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    if-nez v2, :cond_24

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    :cond_18
    iget-object v2, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_32

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_30

    :goto_22
    move v2, v5

    goto :goto_5

    :cond_24
    iget-object v2, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_30
    move v2, v4

    goto :goto_5

    :cond_32
    iget-object v2, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_22

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_3f
    move v2, v4

    .line 63
    goto :goto_5
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_d

    move v0, v2

    :goto_6
    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_14
    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    .local p1, object:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    .line 82
    .local v0, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    .line 83
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    .local p0, this:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
