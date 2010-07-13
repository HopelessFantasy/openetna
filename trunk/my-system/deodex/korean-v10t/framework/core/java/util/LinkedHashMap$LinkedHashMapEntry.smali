.class final Ljava/util/LinkedHashMap$LinkedHashMapEntry;
.super Ljava/util/HashMap$Entry;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinkedHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


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
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap$Entry;-><init>(Ljava/lang/Object;I)V

    .line 245
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 246
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 247
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
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    .local p1, theKey:Ljava/lang/Object;,"TK;"
    .local p2, theValue:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 240
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 241
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 253
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 254
    .local v0, entry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 255
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 256
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    check-cast v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 257
    .local v1, lnext:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    if-eqz v1, :cond_1c

    .line 258
    invoke-virtual {v1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    check-cast p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    .line 260
    :cond_1c
    return-object v0
.end method
