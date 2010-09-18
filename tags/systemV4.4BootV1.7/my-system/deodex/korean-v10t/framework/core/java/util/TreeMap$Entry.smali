.class Ljava/util/TreeMap$Entry;
.super Ljava/util/MapEntry;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field color:Z

.field left:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
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
    .line 57
    .local p0, this:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;)V

    .line 58
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
    .line 61
    .local p0, this:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method clone(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p1, parent:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap$Entry;

    .line 67
    .local v0, clone:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iput-object p1, v0, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 68
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_14

    .line 69
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Entry;->clone(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Entry;->left:Ljava/util/TreeMap$Entry;

    .line 71
    :cond_14
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    if-eqz v1, :cond_20

    .line 72
    iget-object v1, p0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Entry;->clone(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 74
    :cond_20
    return-object v0
.end method
