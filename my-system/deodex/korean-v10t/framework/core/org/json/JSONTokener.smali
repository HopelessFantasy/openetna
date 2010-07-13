.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private myIndex:I

.field private mySource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 55
    iput-object p1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static dehexchar(C)I
    .registers 3
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 79
    if-lt p0, v1, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 80
    sub-int v0, p0, v1

    .line 88
    :goto_a
    return v0

    .line 82
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 83
    const/16 v0, 0x37

    sub-int v0, p0, v0

    goto :goto_a

    .line 85
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 86
    const/16 v0, 0x57

    sub-int v0, p0, v0

    goto :goto_a

    .line 88
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 65
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    if-lez v0, :cond_a

    .line 66
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 68
    :cond_a
    return-void
.end method

.method public more()Z
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()C
    .registers 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/json/JSONTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 109
    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, c:C
    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->myIndex:I

    move v1, v0

    .line 113
    .end local v0           #c:C
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public next(C)C
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 126
    .local v0, n:C
    if-eq v0, p1, :cond_2e

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 130
    :cond_2e
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .registers 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 145
    .local v0, i:I
    add-int v1, v0, p1

    .line 146
    .local v1, j:I
    iget-object v2, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_13

    .line 147
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 149
    :cond_13
    iget v2, p0, Lorg/json/JSONTokener;->myIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 150
    iget-object v2, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextClean()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x2f

    .line 162
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 163
    .local v0, c:C
    if-ne v0, v2, :cond_3e

    .line 164
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    sparse-switch v1, :sswitch_data_56

    .line 185
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    move v1, v2

    .line 193
    :goto_17
    return v1

    .line 167
    :cond_18
    :sswitch_18
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 168
    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_6

    if-nez v0, :cond_18

    goto :goto_6

    .line 180
    :cond_23
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 172
    :cond_26
    :sswitch_26
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 173
    if-nez v0, :cond_33

    .line 174
    const-string v1, "Unclosed comment."

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 176
    :cond_33
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_26

    .line 177
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-ne v1, v2, :cond_23

    goto :goto_6

    .line 188
    :cond_3e
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4d

    .line 190
    :cond_42
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 191
    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_6

    if-nez v0, :cond_42

    goto :goto_6

    .line 192
    :cond_4d
    if-eqz v0, :cond_53

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    :cond_53
    move v1, v0

    .line 193
    goto :goto_17

    .line 164
    nop

    :sswitch_data_56
    .sparse-switch
        0x2a -> :sswitch_26
        0x2f -> :sswitch_18
    .end sparse-switch
.end method

.method public nextString(C)Ljava/lang/String;
    .registers 6
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 215
    .local v0, c:C
    sparse-switch v0, :sswitch_data_66

    .line 249
    if-ne v0, p1, :cond_61

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 219
    :sswitch_15
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 221
    :sswitch_1c
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 222
    sparse-switch v0, :sswitch_data_78

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 224
    :sswitch_27
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 227
    :sswitch_2d
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 230
    :sswitch_33
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 233
    :sswitch_39
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 236
    :sswitch_3f
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 239
    :sswitch_45
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 242
    :sswitch_53
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 252
    :cond_61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 215
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_15
        0xd -> :sswitch_15
        0x5c -> :sswitch_1c
    .end sparse-switch

    .line 222
    :sswitch_data_78
    .sparse-switch
        0x62 -> :sswitch_27
        0x66 -> :sswitch_39
        0x6e -> :sswitch_33
        0x72 -> :sswitch_3f
        0x74 -> :sswitch_2d
        0x75 -> :sswitch_45
        0x78 -> :sswitch_53
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .registers 5
    .parameter "d"

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 268
    .local v0, c:C
    if-eq v0, p1, :cond_15

    if-eqz v0, :cond_15

    const/16 v2, 0xa

    if-eq v0, v2, :cond_15

    const/16 v2, 0xd

    if-ne v0, v2, :cond_23

    .line 269
    :cond_15
    if-eqz v0, :cond_1a

    .line 270
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 272
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 274
    :cond_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "delimiters"

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 290
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_19

    if-eqz v0, :cond_19

    const/16 v2, 0xa

    if-eq v0, v2, :cond_19

    const/16 v2, 0xd

    if-ne v0, v2, :cond_27

    .line 292
    :cond_19
    if-eqz v0, :cond_1e

    .line 293
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 295
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    :cond_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 310
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v1

    .line 313
    .local v1, c:C
    sparse-switch v1, :sswitch_data_e4

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v6, sb:Ljava/lang/StringBuilder;
    move v0, v1

    .line 336
    .local v0, b:C
    :goto_11
    const/16 v7, 0x20

    if-lt v1, v7, :cond_3c

    const-string v7, ",:]}/\\\"[{;=#"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_3c

    .line 337
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    goto :goto_11

    .line 316
    .end local v0           #b:C
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :sswitch_25
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v7

    .line 400
    :goto_29
    return-object v7

    .line 318
    :sswitch_2a
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 319
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_29

    .line 321
    :sswitch_33
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 322
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_29

    .line 340
    .restart local v0       #b:C
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_3c
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, s:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 348
    const-string v7, "Missing value."

    invoke-virtual {p0, v7}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v7

    throw v7

    .line 350
    :cond_56
    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 351
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_29

    .line 353
    :cond_61
    const-string v7, "false"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 354
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_29

    .line 356
    :cond_6c
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 357
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_29

    .line 368
    :cond_77
    if-lt v0, v10, :cond_7d

    const/16 v7, 0x39

    if-le v0, v7, :cond_89

    :cond_7d
    const/16 v7, 0x2e

    if-eq v0, v7, :cond_89

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_89

    const/16 v7, 0x2b

    if-ne v0, v7, :cond_e1

    .line 369
    :cond_89
    if-ne v0, v10, :cond_b4

    .line 370
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_d2

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    if-eq v7, v8, :cond_a1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x58

    if-ne v7, v8, :cond_d2

    .line 373
    :cond_a1
    :try_start_a1
    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b1} :catch_b3

    goto/16 :goto_29

    .line 375
    :catch_b3
    move-exception v7

    .line 387
    :cond_b4
    :goto_b4
    :try_start_b4
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_bb

    goto/16 :goto_29

    .line 388
    :catch_bb
    move-exception v7

    move-object v2, v7

    .line 390
    .local v2, e:Ljava/lang/Exception;
    :try_start_bd
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_c4

    goto/16 :goto_29

    .line 391
    :catch_c4
    move-exception v7

    move-object v3, v7

    .line 393
    .local v3, f:Ljava/lang/Exception;
    :try_start_c6
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_cd

    goto/16 :goto_29

    .line 394
    :catch_cd
    move-exception v7

    move-object v4, v7

    .local v4, g:Ljava/lang/Exception;
    move-object v7, v5

    .line 395
    goto/16 :goto_29

    .line 380
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #f:Ljava/lang/Exception;
    .end local v4           #g:Ljava/lang/Exception;
    :cond_d2
    :try_start_d2
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x8

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_dd} :catch_df

    goto/16 :goto_29

    .line 381
    :catch_df
    move-exception v7

    goto :goto_b4

    :cond_e1
    move-object v7, v5

    .line 400
    goto/16 :goto_29

    .line 313
    :sswitch_data_e4
    .sparse-switch
        0x22 -> :sswitch_25
        0x27 -> :sswitch_25
        0x5b -> :sswitch_33
        0x7b -> :sswitch_2a
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 4
    .parameter "to"

    .prologue
    .line 432
    iget-object v0, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 433
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    if-gez v0, :cond_17

    .line 434
    iget-object v0, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 438
    :goto_16
    return-void

    .line 436
    :cond_17
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    goto :goto_16
.end method

.method public skipTo(C)C
    .registers 4
    .parameter "to"

    .prologue
    .line 413
    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 415
    .local v1, index:I
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 416
    .local v0, c:C
    if-nez v0, :cond_b

    .line 417
    iput v1, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 422
    :goto_a
    return v0

    .line 420
    :cond_b
    if-ne v0, p1, :cond_2

    .line 421
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    goto :goto_a
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .registers 5
    .parameter "message"

    .prologue
    .line 448
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
