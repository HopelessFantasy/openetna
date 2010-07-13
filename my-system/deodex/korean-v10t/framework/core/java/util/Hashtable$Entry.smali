.class Ljava/util/Hashtable$Entry;
.super Ljava/util/MapEntry;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hashcode:I

.field next:Ljava/util/Hashtable$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    .local p2, theValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable$Entry;->hashcode:I

    .line 83
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 88
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable$Entry;

    .line 89
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    if-eqz v1, :cond_14

    .line 90
    iget-object v1, p0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    invoke-virtual {v1}, Ljava/util/Hashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    check-cast p0, Ljava/util/Hashtable$Entry;

    iput-object p0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 92
    :cond_14
    return-object v0
.end method

.method public equalsKey(Ljava/lang/Object;I)Z
    .registers 5
    .parameter "aKey"
    .parameter "hash"

    .prologue
    .line 112
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable$Entry;->hashcode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    .end local p0           #this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    .restart local p0       #this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_1a
    iget-object v0, p0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .end local p0           #this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :cond_22
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getKeyHash()I
    .registers 2

    .prologue
    .line 106
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .local p1, object:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_8

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 100
    :cond_8
    iget-object v0, p0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    .line 101
    .local v0, result:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    .local p0, this:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Hashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
