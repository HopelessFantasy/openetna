.class public Lorg/apache/harmony/text/BidiRun;
.super Ljava/lang/Object;
.source "BidiRun.java"


# instance fields
.field private final level:I

.field private final limit:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "start"
    .parameter "limit"
    .parameter "level"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/apache/harmony/text/BidiRun;->start:I

    .line 32
    iput p2, p0, Lorg/apache/harmony/text/BidiRun;->limit:I

    .line 33
    iput p3, p0, Lorg/apache/harmony/text/BidiRun;->level:I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 50
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/harmony/text/BidiRun;

    if-eq v1, v2, :cond_d

    :cond_b
    move v1, v3

    .end local p1
    :goto_c
    return v1

    .restart local p1
    :cond_d
    iget v2, p0, Lorg/apache/harmony/text/BidiRun;->start:I

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/text/BidiRun;

    move-object v1, v0

    iget v1, v1, Lorg/apache/harmony/text/BidiRun;->start:I

    if-ne v2, v1, :cond_2b

    iget v2, p0, Lorg/apache/harmony/text/BidiRun;->limit:I

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/text/BidiRun;

    move-object v1, v0

    iget v1, v1, Lorg/apache/harmony/text/BidiRun;->limit:I

    if-ne v2, v1, :cond_2b

    iget v1, p0, Lorg/apache/harmony/text/BidiRun;->level:I

    check-cast p1, Lorg/apache/harmony/text/BidiRun;

    .end local p1
    iget v2, p1, Lorg/apache/harmony/text/BidiRun;->level:I

    if-ne v1, v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_c

    :cond_2b
    move v1, v3

    goto :goto_c
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->level:I

    return v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->limit:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/harmony/text/BidiRun;->start:I

    return v0
.end method
