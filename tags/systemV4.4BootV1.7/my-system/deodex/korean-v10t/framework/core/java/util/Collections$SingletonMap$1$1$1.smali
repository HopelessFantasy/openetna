.class Ljava/util/Collections$SingletonMap$1$1$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap$1$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/Collections$SingletonMap$1$1;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap$1$1;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 365
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    invoke-virtual {v0, p1}, Ljava/util/Collections$SingletonMap$1;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

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
    .line 373
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    iget-object v0, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    if-nez v0, :cond_19

    move v0, v2

    :goto_c
    iget-object v1, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    if-nez v1, :cond_26

    move v1, v2

    :goto_17
    xor-int/2addr v0, v1

    return v0

    :cond_19
    iget-object v0, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v0, v0, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_26
    iget-object v1, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1$1;->this$1:Ljava/util/Collections$SingletonMap$1;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1;->this$0:Ljava/util/Collections$SingletonMap;

    iget-object v1, v1, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_17
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
    .line 383
    .local p0, this:Ljava/util/Collections$SingletonMap$1$1$1;,"Ljava/util/Collections$SingletonMap$1$1.1;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
