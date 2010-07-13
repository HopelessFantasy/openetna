.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12325b6L


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "c"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 43
    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    .line 44
    return-void
.end method


# virtual methods
.method public getCodePoint()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v3, "Code point is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v3, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 65
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_1c

    .line 66
    aget-char v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 68
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
