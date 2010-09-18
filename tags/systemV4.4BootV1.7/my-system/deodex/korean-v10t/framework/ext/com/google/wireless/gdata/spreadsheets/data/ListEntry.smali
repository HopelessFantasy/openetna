.class public Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "ListEntry.java"


# instance fields
.field private names:Ljava/util/Vector;

.field private values:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->values:Ljava/util/Hashtable;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNames()Ljava/util/Vector;
    .registers 4

    .prologue
    .line 27
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    if-eqz v1, :cond_7

    .line 28
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    .line 35
    :goto_6
    return-object v1

    .line 30
    :cond_7
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    .line 31
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->values:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 32
    .local v0, e:Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 33
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 35
    :cond_24
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->names:Ljava/util/Vector;

    goto :goto_6
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p2

    .line 65
    :goto_7
    return-object v1

    .line 61
    :cond_8
    iget-object v1, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->values:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_14

    move-object v1, p2

    .line 63
    goto :goto_7

    :cond_14
    move-object v1, v0

    .line 65
    goto :goto_7
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/wireless/gdata/spreadsheets/data/ListEntry;->values:Ljava/util/Hashtable;

    if-nez p2, :cond_a

    const-string v1, ""

    :goto_6
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void

    :cond_a
    move-object v1, p2

    .line 75
    goto :goto_6
.end method
