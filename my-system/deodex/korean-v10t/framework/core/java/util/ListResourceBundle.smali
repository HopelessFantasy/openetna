.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 39
    return-void
.end method

.method private declared-synchronized initializeTable()V
    .registers 7

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    if-nez v2, :cond_2f

    .line 119
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, contents:[[Ljava/lang/Object;
    new-instance v2, Ljava/util/Hashtable;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 122
    iget-object v3, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    aget-object v2, v0, v1

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/String;

    aget-object v4, v0, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_31

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 125
    .end local v0           #contents:[[Ljava/lang/Object;
    .end local v1           #i:I
    :cond_2f
    monitor-exit p0

    return-void

    .line 118
    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 61
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    .line 63
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_12

    .line 64
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 66
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/util/ListResourceBundle$1;

    invoke-direct {v0, p0}, Ljava/util/ListResourceBundle$1;-><init>(Ljava/util/ListResourceBundle;)V

    goto :goto_11
.end method

.method public final handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 111
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 112
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    .line 114
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
