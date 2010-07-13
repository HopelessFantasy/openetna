.class public Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "WorksheetEntry.java"


# instance fields
.field private cellsUri:Ljava/lang/String;

.field private colCount:I

.field private listUri:Ljava/lang/String;

.field private rowCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->cellsUri:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->colCount:I

    .line 19
    iput-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->listUri:Ljava/lang/String;

    .line 22
    iput v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->rowCount:I

    return-void
.end method


# virtual methods
.method public getCellFeedUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->cellsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getColCount()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->colCount:I

    return v0
.end method

.method public getListFeedUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->listUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRowCount()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->rowCount:I

    return v0
.end method

.method public setCellFeedUri(Ljava/lang/String;)V
    .registers 2
    .parameter "href"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->cellsUri:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setColCount(I)V
    .registers 2
    .parameter "colCount"

    .prologue
    .line 76
    iput p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->colCount:I

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setListFeedUri(Ljava/lang/String;)V
    .registers 2
    .parameter "href"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->listUri:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRowCount(I)V
    .registers 2
    .parameter "rowCount"

    .prologue
    .line 103
    iput p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/WorksheetEntry;->rowCount:I

    .line 104
    return-void
.end method
