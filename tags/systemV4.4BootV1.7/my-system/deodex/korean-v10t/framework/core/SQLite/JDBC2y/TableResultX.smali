.class public LSQLite/JDBC2y/TableResultX;
.super LSQLite/TableResult;
.source "TableResultX.java"


# instance fields
.field public sql_type:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 10
    invoke-direct {p0}, LSQLite/TableResult;-><init>()V

    .line 11
    iget v1, p0, LSQLite/JDBC2y/TableResultX;->ncolumns:I

    new-array v1, v1, [I

    iput-object v1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    .line 12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, LSQLite/JDBC2y/TableResultX;->ncolumns:I

    if-ge v0, v1, :cond_17

    .line 13
    iget-object v1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 15
    :cond_17
    return-void
.end method

.method public constructor <init>(LSQLite/TableResult;)V
    .registers 5
    .parameter "tr"

    .prologue
    .line 17
    invoke-direct {p0}, LSQLite/TableResult;-><init>()V

    .line 18
    iget-object v1, p1, LSQLite/TableResult;->column:[Ljava/lang/String;

    iput-object v1, p0, LSQLite/JDBC2y/TableResultX;->column:[Ljava/lang/String;

    .line 19
    iget-object v1, p1, LSQLite/TableResult;->rows:Ljava/util/Vector;

    iput-object v1, p0, LSQLite/JDBC2y/TableResultX;->rows:Ljava/util/Vector;

    .line 20
    iget v1, p1, LSQLite/TableResult;->ncolumns:I

    iput v1, p0, LSQLite/JDBC2y/TableResultX;->ncolumns:I

    .line 21
    iget v1, p1, LSQLite/TableResult;->nrows:I

    iput v1, p0, LSQLite/JDBC2y/TableResultX;->nrows:I

    .line 22
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    iput-object v1, p0, LSQLite/JDBC2y/TableResultX;->types:[Ljava/lang/String;

    .line 23
    iget v1, p1, LSQLite/TableResult;->ncolumns:I

    new-array v1, v1, [I

    iput-object v1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    .line 24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget v1, p0, LSQLite/JDBC2y/TableResultX;->ncolumns:I

    if-ge v0, v1, :cond_2b

    .line 25
    iget-object v1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    const/16 v2, 0xc

    aput v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 27
    :cond_2b
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 28
    const/4 v0, 0x0

    :goto_30
    iget-object v1, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_44

    .line 29
    iget-object v1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    iget-object v2, p1, LSQLite/TableResult;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, LSQLite/JDBC2y/JDBCDatabaseMetaData;->mapSqlType(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 32
    :cond_44
    return-void
.end method


# virtual methods
.method sql_types([I)V
    .registers 2
    .parameter "types"

    .prologue
    .line 35
    iput-object p1, p0, LSQLite/JDBC2y/TableResultX;->sql_type:[I

    .line 36
    return-void
.end method
