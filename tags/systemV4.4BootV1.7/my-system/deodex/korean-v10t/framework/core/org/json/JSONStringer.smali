.class public Lorg/json/JSONStringer;
.super Ljava/lang/Object;
.source "JSONStringer.java"


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field private mode:C

.field private sb:Ljava/lang/StringBuilder;

.field private stack:[C

.field private top:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    .line 95
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/json/JSONStringer;->stack:[C

    .line 96
    iput v1, p0, Lorg/json/JSONStringer;->top:I

    .line 97
    const/16 v0, 0x69

    iput-char v0, p0, Lorg/json/JSONStringer;->mode:C

    .line 98
    iput-boolean v1, p0, Lorg/json/JSONStringer;->comma:Z

    .line 99
    return-void
.end method

.method private append(Ljava/lang/String;)Lorg/json/JSONStringer;
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    const/16 v1, 0x61

    .line 109
    if-nez p1, :cond_e

    .line 110
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_e
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-eq v0, v2, :cond_16

    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-ne v0, v1, :cond_36

    .line 113
    :cond_16
    iget-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    if-eqz v0, :cond_25

    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-ne v0, v1, :cond_25

    .line 114
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_25
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-ne v0, v2, :cond_32

    .line 118
    const/16 v0, 0x6b

    iput-char v0, p0, Lorg/json/JSONStringer;->mode:C

    .line 120
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    .line 121
    return-object p0

    .line 123
    :cond_36
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end(CC)Lorg/json/JSONStringer;
    .registers 5
    .parameter "m"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-eq v0, p1, :cond_13

    .line 154
    new-instance v0, Lorg/json/JSONException;

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_10

    const-string v1, "Misplaced endObject."

    :goto_c
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v1, "Misplaced endArray."

    goto :goto_c

    .line 157
    :cond_13
    invoke-direct {p0, p1}, Lorg/json/JSONStringer;->pop(C)V

    .line 158
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    .line 160
    return-object p0
.end method

.method private pop(C)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 240
    iget v0, p0, Lorg/json/JSONStringer;->top:I

    if-lez v0, :cond_e

    iget-object v0, p0, Lorg/json/JSONStringer;->stack:[C

    iget v1, p0, Lorg/json/JSONStringer;->top:I

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    if-eq v0, p1, :cond_16

    .line 241
    :cond_e
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_16
    iget v0, p0, Lorg/json/JSONStringer;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/json/JSONStringer;->top:I

    .line 244
    iget v0, p0, Lorg/json/JSONStringer;->top:I

    if-nez v0, :cond_24

    const/16 v0, 0x64

    :goto_21
    iput-char v0, p0, Lorg/json/JSONStringer;->mode:C

    .line 245
    return-void

    .line 244
    :cond_24
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:[C

    iget v1, p0, Lorg/json/JSONStringer;->top:I

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    goto :goto_21
.end method

.method private push(C)V
    .registers 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Lorg/json/JSONStringer;->top:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e

    .line 254
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_e
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:[C

    iget v1, p0, Lorg/json/JSONStringer;->top:I

    aput-char p1, v0, v1

    .line 257
    iput-char p1, p0, Lorg/json/JSONStringer;->mode:C

    .line 258
    iget v0, p0, Lorg/json/JSONStringer;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/json/JSONStringer;->top:I

    .line 259
    return-void
.end method


# virtual methods
.method public array()Lorg/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x61

    .line 136
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_12

    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_12

    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-ne v0, v2, :cond_1e

    .line 137
    :cond_12
    invoke-direct {p0, v2}, Lorg/json/JSONStringer;->push(C)V

    .line 138
    const-string v0, "["

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    .line 140
    return-object p0

    .line 142
    :cond_1e
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lorg/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 170
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONStringer;->end(CC)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lorg/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lorg/json/JSONStringer;->end(CC)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONStringer;
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    if-nez p1, :cond_a

    .line 194
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_a
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_33

    .line 197
    iget-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    if-eqz v0, :cond_1b

    .line 198
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_1b
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    .line 203
    const/16 v0, 0x6f

    iput-char v0, p0, Lorg/json/JSONStringer;->mode:C

    .line 204
    return-object p0

    .line 206
    :cond_33
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object()Lorg/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 220
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    .line 221
    iput-char v2, p0, Lorg/json/JSONStringer;->mode:C

    .line 223
    :cond_a
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    if-eq v0, v2, :cond_14

    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_22

    .line 224
    :cond_14
    const-string v0, "{"

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 225
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->push(C)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONStringer;->comma:Z

    .line 227
    return-object p0

    .line 229
    :cond_22
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    iget-char v0, p0, Lorg/json/JSONStringer;->mode:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/json/JSONStringer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public value(D)Lorg/json/JSONStringer;
    .registers 4
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lorg/json/JSONStringer;
    .registers 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    .registers 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 303
    const-string v0, "null"

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 313
    .end local p1
    :goto_e
    return-object v0

    .line 305
    .restart local p1
    :cond_f
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_21

    .line 306
    invoke-static {p1}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 307
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-static {p1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    goto :goto_e

    .line 309
    .restart local p1
    :cond_21
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_2d

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_36

    .line 311
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    goto :goto_e

    .line 313
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    goto :goto_e
.end method

.method public value(Z)Lorg/json/JSONStringer;
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p1, :cond_9

    const-string v0, "true"

    :goto_4
    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->append(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "false"

    goto :goto_4
.end method
