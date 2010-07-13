.class public Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlCellEntryGDataSerializer;
.super Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;
.source "XmlCellEntryGDataSerializer.java"


# static fields
.field public static final NAMESPACE_GS:Ljava/lang/String; = "gs"

.field public static final NAMESPACE_GS_URI:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 3
    .parameter "xmlFactory"
    .parameter "entry"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/serializer/xml/XmlEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/data/Entry;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected declareExtraEntryNamespaces(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "gs"

    const-string v1, "http://schemas.google.com/spreadsheets/2006"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected serializeExtraEntryContents(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 15
    .parameter "serializer"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v11, "http://schemas.google.com/spreadsheets/2006"

    const-string v10, "cell"

    const-string v9, ""

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/spreadsheets/serializer/xml/XmlCellEntryGDataSerializer;->getEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;

    .line 57
    .local v1, entry:Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;
    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->getRow()I

    move-result v3

    .line 58
    .local v3, row:I
    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->getCol()I

    move-result v0

    .line 59
    .local v0, col:I
    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->getInputValue()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, inputValue:Ljava/lang/String;
    if-ltz v3, :cond_21

    if-gez v0, :cond_29

    .line 62
    :cond_21
    new-instance v5, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v6, "Negative row or column value"

    invoke-direct {v5, v6}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :cond_29
    const-string v5, "http://schemas.google.com/spreadsheets/2006"

    const-string v5, "cell"

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    const-string v5, "row"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v5, "col"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    if-eqz v2, :cond_67

    .line 71
    const-string v5, "inputValue"

    invoke-interface {p1, v8, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    :cond_67
    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->hasNumericValue()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 74
    const-string v5, "numericValue"

    invoke-virtual {v1}, Lcom/google/wireless/gdata/spreadsheets/data/CellEntry;->getNumericValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    :cond_76
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v5, ""

    move-object v4, v9

    .line 80
    :cond_7f
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string v5, "http://schemas.google.com/spreadsheets/2006"

    const-string v5, "cell"

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    return-void
.end method
