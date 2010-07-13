.class public final Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;
.super Ljava/lang/Object;
.source "CharsetProviderICU.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu4jni/charset/CharsetProviderICU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CharsetIterator"
.end annotation


# instance fields
.field private currentIndex:I

.field private names:[Ljava/lang/String;

.field final synthetic this$0:Lcom/ibm/icu4jni/charset/CharsetProviderICU;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu4jni/charset/CharsetProviderICU;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "strs"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->this$0:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->names:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->currentIndex:I

    .line 90
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public next()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 95
    iget v0, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 96
    iget-object v0, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->this$0:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    iget-object v1, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->names:[Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->currentIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;->currentIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 98
    :cond_18
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
