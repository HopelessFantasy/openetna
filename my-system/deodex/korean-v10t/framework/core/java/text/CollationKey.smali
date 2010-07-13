.class public final Ljava/text/CollationKey;
.super Ljava/lang/Object;
.source "CollationKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/text/CollationKey;",
        ">;"
    }
.end annotation


# instance fields
.field private icuKey:Lcom/ibm/icu4jni/text/CollationKey;

.field private source:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu4jni/text/CollationKey;)V
    .registers 3
    .parameter "source"
    .parameter "key"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    .line 108
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Ljava/text/CollationKey;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/text/CollationKey;)I
    .registers 4
    .parameter "value"

    .prologue
    .line 122
    iget-object v0, p0, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    iget-object v1, p1, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/text/CollationKey;->compareTo(Lcom/ibm/icu4jni/text/CollationKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    .line 140
    instance-of v2, p1, Ljava/text/CollationKey;

    if-nez v2, :cond_6

    .line 141
    const/4 v2, 0x0

    .line 144
    :goto_5
    return v2

    .line 143
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/text/CollationKey;

    move-object v1, v0

    .line 144
    .local v1, collationKey:Ljava/text/CollationKey;
    iget-object v2, p0, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    iget-object v3, v1, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    invoke-virtual {v2, v3}, Lcom/ibm/icu4jni/text/CollationKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public getSourceString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ljava/text/CollationKey;->source:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Ljava/text/CollationKey;->icuKey:Lcom/ibm/icu4jni/text/CollationKey;

    invoke-virtual {v0}, Lcom/ibm/icu4jni/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
