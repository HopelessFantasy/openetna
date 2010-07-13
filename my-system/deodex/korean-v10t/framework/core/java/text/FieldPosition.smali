.class public Ljava/text/FieldPosition;
.super Ljava/lang/Object;
.source "FieldPosition.java"


# instance fields
.field private beginIndex:I

.field private endIndex:I

.field private myAttribute:Ljava/text/Format$Field;

.field private myField:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "field"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljava/text/FieldPosition;->myField:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;)V
    .registers 3
    .parameter "attribute"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/FieldPosition;->myField:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .registers 3
    .parameter "attribute"
    .parameter "field"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    .line 78
    iput p2, p0, Ljava/text/FieldPosition;->myField:I

    .line 79
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/FieldPosition;->endIndex:I

    iput v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 83
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 99
    instance-of v2, p1, Ljava/text/FieldPosition;

    if-nez v2, :cond_7

    move v2, v4

    .line 103
    :goto_6
    return v2

    .line 102
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/text/FieldPosition;

    move-object v1, v0

    .line 103
    .local v1, pos:Ljava/text/FieldPosition;
    iget v2, p0, Ljava/text/FieldPosition;->myField:I

    iget v3, v1, Ljava/text/FieldPosition;->myField:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    iget-object v3, v1, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    if-ne v2, v3, :cond_25

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->beginIndex:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    iget v3, v1, Ljava/text/FieldPosition;->endIndex:I

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    move v2, v4

    goto :goto_6
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Ljava/text/FieldPosition;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Ljava/text/FieldPosition;->endIndex:I

    return v0
.end method

.method public getField()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Ljava/text/FieldPosition;->myField:I

    return v0
.end method

.method public getFieldAttribute()Ljava/text/Format$Field;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    move v0, v1

    .line 150
    .local v0, attributeHash:I
    :goto_6
    iget v1, p0, Ljava/text/FieldPosition;->myField:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    iget v2, p0, Ljava/text/FieldPosition;->beginIndex:I

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget v2, p0, Ljava/text/FieldPosition;->endIndex:I

    add-int/2addr v1, v2

    return v1

    .line 149
    .end local v0           #attributeHash:I
    :cond_14
    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    invoke-virtual {v1}, Ljava/text/Format$Field;->hashCode()I

    move-result v1

    move v0, v1

    goto :goto_6
.end method

.method public setBeginIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 161
    iput p1, p0, Ljava/text/FieldPosition;->beginIndex:I

    .line 162
    return-void
.end method

.method public setEndIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 172
    iput p1, p0, Ljava/text/FieldPosition;->endIndex:I

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/FieldPosition;->myAttribute:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->myField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beginIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/FieldPosition;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
