.class public LSQLite/TableResult;
.super Ljava/lang/Object;
.source "TableResult.java"

# interfaces
.implements LSQLite/Callback;


# instance fields
.field public column:[Ljava/lang/String;

.field public ncolumns:I

.field public nrows:I

.field public rows:Ljava/util/Vector;

.field public types:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, LSQLite/TableResult;->clear()V

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, LSQLite/TableResult;->types:[Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    .line 78
    iput v1, p0, LSQLite/TableResult;->nrows:I

    iput v1, p0, LSQLite/TableResult;->ncolumns:I

    .line 79
    return-void
.end method

.method public columns([Ljava/lang/String;)V
    .registers 3
    .parameter "coldata"

    .prologue
    .line 86
    iput-object p1, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    .line 87
    iget-object v0, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, LSQLite/TableResult;->ncolumns:I

    .line 88
    return-void
.end method

.method public newrow([Ljava/lang/String;)Z
    .registers 3
    .parameter "rowdata"

    .prologue
    .line 103
    if-eqz p1, :cond_d

    .line 104
    iget-object v0, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    iget v0, p0, LSQLite/TableResult;->nrows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSQLite/TableResult;->nrows:I

    .line 107
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0xa

    const-string v8, "NULL"

    .line 115
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget v5, p0, LSQLite/TableResult;->ncolumns:I

    if-ge v1, v5, :cond_27

    .line 118
    iget-object v5, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_22

    const-string v5, "NULL"

    move-object v5, v8

    :goto_19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 118
    :cond_22
    iget-object v5, p0, LSQLite/TableResult;->column:[Ljava/lang/String;

    aget-object v5, v5, v1

    goto :goto_19

    .line 121
    :cond_27
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    const/4 v1, 0x0

    :goto_2b
    iget v5, p0, LSQLite/TableResult;->nrows:I

    if-ge v1, v5, :cond_59

    .line 124
    iget-object v5, p0, LSQLite/TableResult;->rows:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 125
    .local v3, row:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_3c
    iget v5, p0, LSQLite/TableResult;->ncolumns:I

    if-ge v2, v5, :cond_53

    .line 126
    aget-object v5, v3, v2

    if-nez v5, :cond_50

    const-string v5, "NULL"

    move-object v5, v8

    :goto_47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 126
    :cond_50
    aget-object v5, v3, v2

    goto :goto_47

    .line 129
    :cond_53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 131
    .end local v2           #k:I
    .end local v3           #row:[Ljava/lang/String;
    :cond_59
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public types([Ljava/lang/String;)V
    .registers 2
    .parameter "types"

    .prologue
    .line 95
    iput-object p1, p0, LSQLite/TableResult;->types:[Ljava/lang/String;

    .line 96
    return-void
.end method
