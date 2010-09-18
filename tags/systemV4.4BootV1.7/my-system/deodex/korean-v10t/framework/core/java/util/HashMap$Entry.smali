.class Ljava/util/HashMap$Entry;
.super Ljava/util/MapEntry;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
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
.field next:Ljava/util/HashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final origKeyHash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    iput p2, p0, Ljava/util/HashMap$Entry;->origKeyHash:I

    .line 55
    return-void
.end method

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
    .line 58
    .local p0, this:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    .local p2, theValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput v0, p0, Ljava/util/HashMap$Entry;->origKeyHash:I

    .line 60
    return-void

    .line 59
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 65
    .local p0, this:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/MapEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap$Entry;

    .line 66
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    if-eqz v1, :cond_14

    .line 67
    iget-object v1, p0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    invoke-virtual {v1}, Ljava/util/HashMap$Entry;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TK;TV;>;"
    check-cast p0, Ljava/util/HashMap$Entry;

    iput-object p0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    .line 69
    :cond_14
    return-object v0
.end method
