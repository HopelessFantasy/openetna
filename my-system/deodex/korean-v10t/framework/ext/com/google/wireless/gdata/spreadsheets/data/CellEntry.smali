.class public Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "CellEntry.java"


# instance fields
.field private col:I

.field private inputValue:Ljava/lang/String;

.field private numericValue:Ljava/lang/String;

.field private row:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 11
    iput v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->col:I

    .line 14
    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->inputValue:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->numericValue:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->row:I

    .line 23
    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCol()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->col:I

    return v0
.end method

.method public getInputValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->inputValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNumericValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->numericValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->row:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasNumericValue()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->numericValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setCol(I)V
    .registers 2
    .parameter "col"

    .prologue
    .line 94
    iput p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->col:I

    .line 95
    return-void
.end method

.method public setInputValue(Ljava/lang/String;)V
    .registers 2
    .parameter "inputValue"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->inputValue:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setNumericValue(Ljava/lang/String;)V
    .registers 2
    .parameter "numericValue"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->numericValue:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setRow(I)V
    .registers 2
    .parameter "row"

    .prologue
    .line 123
    iput p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->row:I

    .line 124
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->value:Ljava/lang/String;

    .line 133
    return-void
.end method
