.class public Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "SpreadsheetEntry.java"


# instance fields
.field private worksheetsUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;->worksheetsUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWorksheetFeedUri()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/GDataException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;->worksheetsUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 24
    new-instance v0, Lcom/google/wireless/gdata/GDataException;

    const-string v1, "worksheet URI is not set"

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/GDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_10
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;->worksheetsUri:Ljava/lang/String;

    return-object v0
.end method

.method public setWorksheetFeedUri(Ljava/lang/String;)V
    .registers 2
    .parameter "href"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/wireless/gdata/spreadsheets/data/SpreadsheetEntry;->worksheetsUri:Ljava/lang/String;

    .line 37
    return-void
.end method
