.class public Lcom/google/android/gdata/client/QueryParamsImpl;
.super Lcom/google/wireless/gdata/client/QueryParams;
.source "QueryParamsImpl.java"


# instance fields
.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/wireless/gdata/client/QueryParams;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gdata/client/QueryParamsImpl;->setEntryId(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    return-void
.end method

.method public generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "feedUrl"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gdata/client/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    move-object v8, p1

    .line 84
    :goto_13
    return-object v8

    .line 44
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gdata/client/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 45
    iget-object v8, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 46
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot set both an entry ID and other query paramters."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 49
    :cond_2e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/gdata/client/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    .line 53
    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v8, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 56
    .local v4, params:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 57
    .local v1, first:Z
    const-string v8, "?"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 58
    const/4 v1, 0x0

    .line 62
    :goto_62
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    .local v3, param:Ljava/lang/String;
    if-eqz v1, :cond_96

    .line 64
    const/4 v1, 0x0

    .line 68
    :goto_75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-object v8, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 71
    .local v7, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, encodedValue:Ljava/lang/String;
    :try_start_86
    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_8b} :catch_9c

    move-result-object v0

    .line 82
    :goto_8c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 60
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #param:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_90
    const/16 v8, 0x3f

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 66
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #param:Ljava/lang/String;
    :cond_96
    const/16 v8, 0x26

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 75
    .restart local v0       #encodedValue:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :catch_9c
    move-exception v8

    move-object v6, v8

    .line 77
    .local v6, uee:Ljava/io/UnsupportedEncodingException;
    const-string v8, "QueryParamsImpl"

    const-string v9, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    .line 84
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v3           #param:Ljava/lang/String;
    .end local v6           #uee:Ljava/io/UnsupportedEncodingException;
    .end local v7           #value:Ljava/lang/String;
    :cond_aa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_13
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "param"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 90
    const/4 v0, 0x0

    .line 92
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_9
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gdata/client/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
