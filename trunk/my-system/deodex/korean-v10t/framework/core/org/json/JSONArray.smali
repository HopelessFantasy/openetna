.class public Lorg/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter "collection"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .registers 6
    .parameter "x"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5d

    .line 102
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 103
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_15

    .line 104
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 106
    :cond_15
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 128
    :goto_1b
    :sswitch_1b
    return-void

    .line 109
    :cond_1c
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 111
    :goto_1f
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3d

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 113
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_2f
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 130
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 115
    :cond_3d
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 116
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 121
    :sswitch_4a
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_56

    .line 122
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 125
    :cond_56
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    goto :goto_1f

    .line 118
    :sswitch_data_5a
    .sparse-switch
        0x2c -> :sswitch_4a
        0x3b -> :sswitch_4a
        0x5d -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 137
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 138
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    iget-object v1, p1, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_25

    .line 173
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_25
    return-object v0
.end method

.method public getBoolean(I)Z
    .registers 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, o:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 193
    :cond_1c
    const/4 v2, 0x0

    .line 197
    .end local v1           #o:Ljava/lang/Object;
    :goto_1d
    return v2

    .line 194
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_36

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 197
    :cond_34
    const/4 v2, 0x1

    goto :goto_1d

    .line 199
    :cond_36
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a Boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(I)D
    .registers 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, o:Ljava/lang/Object;
    :try_start_4
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    :goto_e
    return-wide v2

    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-wide v2

    goto :goto_e

    .line 216
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 217
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .registers 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_e
    return v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_f
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_e
.end method

.method public getJSONArray(I)Lorg/json/JSONArray;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_b

    .line 249
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 251
    .restart local v0       #o:Ljava/lang/Object;
    :cond_b
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Lorg/json/JSONObject;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 266
    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 268
    .restart local v0       #o:Ljava/lang/Object;
    :cond_b
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .registers 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/Number;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :goto_e
    return-wide v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_f
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_e
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .registers 4
    .parameter "index"

    .prologue
    .line 305
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "separator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 319
    .local v1, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_21

    .line 322
    if-lez v0, :cond_11

    .line 323
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_11
    iget-object v3, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 327
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public length()I
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"

    .prologue
    .line 348
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public optBoolean(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .registers 5
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 377
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 379
    :goto_4
    return v1

    .line 378
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 379
    goto :goto_4
.end method

.method public optDouble(I)D
    .registers 4
    .parameter "index"

    .prologue
    .line 393
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .registers 7
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 410
    :goto_4
    return-wide v1

    .line 409
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 410
    goto :goto_4
.end method

.method public optInt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .registers 5
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 438
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 440
    :goto_4
    return v1

    .line 439
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 440
    goto :goto_4
.end method

.method public optJSONArray(I)Lorg/json/JSONArray;
    .registers 4
    .parameter "index"

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_c

    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_b
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public optJSONObject(I)Lorg/json/JSONObject;
    .registers 4
    .parameter "index"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    :goto_b
    return-object v1

    .restart local v0       #o:Ljava/lang/Object;
    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public optLong(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 480
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .registers 7
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 494
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 496
    :goto_4
    return-wide v1

    .line 495
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 496
    goto :goto_4
.end method

.method public optString(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 510
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, o:Ljava/lang/Object;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    move-object v1, p2

    goto :goto_a
.end method

.method public put(D)Lorg/json/JSONArray;
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 549
    .local v0, d:Ljava/lang/Double;
    invoke-static {v0}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 550
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 551
    return-object p0
.end method

.method public put(I)Lorg/json/JSONArray;
    .registers 3
    .parameter "value"

    .prologue
    .line 562
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 563
    return-object p0
.end method

.method public put(ID)Lorg/json/JSONArray;
    .registers 5
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 619
    return-object p0
.end method

.method public put(II)Lorg/json/JSONArray;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 634
    return-object p0
.end method

.method public put(IJ)Lorg/json/JSONArray;
    .registers 5
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 649
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .registers 6
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p2}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 665
    if-gez p1, :cond_24

    .line 666
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_24
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_30

    .line 669
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    :goto_2f
    return-object p0

    .line 671
    :cond_30
    :goto_30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_30

    .line 674
    :cond_3b
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2f
.end method

.method public put(IZ)Lorg/json/JSONArray;
    .registers 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 603
    return-object p0
.end method

.method public put(J)Lorg/json/JSONArray;
    .registers 4
    .parameter "value"

    .prologue
    .line 574
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 575
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 3
    .parameter "value"

    .prologue
    .line 587
    iget-object v0, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-object p0
.end method

.method public put(Z)Lorg/json/JSONArray;
    .registers 3
    .parameter "value"

    .prologue
    .line 535
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 536
    return-object p0
.end method

.method public toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 6
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 690
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 691
    :cond_e
    const/4 v2, 0x0

    .line 697
    :goto_f
    return-object v2

    .line 693
    :cond_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 694
    .local v1, jo:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 695
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2a
    move-object v2, v1

    .line 697
    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 714
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v1

    .line 716
    :goto_1f
    return-object v1

    .line 715
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 716
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .registers 11
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 748
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 749
    .local v2, len:I
    if-nez v2, :cond_d

    .line 750
    const-string v5, "[]"

    .line 776
    :goto_c
    return-object v5

    .line 753
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2f

    .line 755
    iget-object v5, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_25
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 758
    :cond_2f
    add-int v3, p2, p1

    .line 759
    .local v3, newindent:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    if-ge v0, v2, :cond_57

    .line 761
    if-lez v0, :cond_3e

    .line 762
    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_3e
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3f
    if-ge v1, v3, :cond_47

    .line 765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 767
    :cond_47
    iget-object v5, p0, Lorg/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 770
    .end local v1           #j:I
    :cond_57
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    const/4 v0, 0x0

    :goto_5b
    if-ge v0, p2, :cond_25

    .line 772
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b
.end method
