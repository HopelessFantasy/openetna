.class public Lorg/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/JSONObject$1;,
        Lorg/json/JSONObject$Null;
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private myHashMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 140
    new-instance v0, Lorg/json/JSONObject$Null;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/json/JSONObject$Null;-><init>(Lorg/json/JSONObject$1;)V

    sput-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    .line 148
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
    .line 246
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter "map"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    .line 234
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 6
    .parameter "jo"
    .parameter "sa"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_15

    .line 162
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 164
    :cond_15
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
    .line 173
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_15

    .line 178
    const-string v2, "A JSONObject text must begin with \'{\'"

    invoke-virtual {p1, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 216
    .local v0, c:C
    .local v1, key:Ljava/lang/String;
    :cond_12
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 181
    .end local v0           #c:C
    .end local v1           #key:Ljava/lang/String;
    :cond_15
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 182
    .restart local v0       #c:C
    sparse-switch v0, :sswitch_data_6c

    .line 188
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 197
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_58

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONTokener;->next()C

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_3a

    .line 199
    invoke-virtual {p1}, Lorg/json/JSONTokener;->back()V

    .line 204
    :cond_3a
    iget-object v2, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v2

    sparse-switch v2, :sswitch_data_76

    .line 221
    const-string v2, "Expected a \',\' or \'}\'"

    invoke-virtual {p1, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 184
    .end local v1           #key:Ljava/lang/String;
    :sswitch_51
    const-string v2, "A JSONObject text must end with \'}\'"

    invoke-virtual {p1, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 201
    .restart local v1       #key:Ljava/lang/String;
    :cond_58
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_3a

    .line 202
    const-string v2, "Expected a \':\' after a key"

    invoke-virtual {p1, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 213
    :sswitch_63
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextClean()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_12

    .line 219
    .end local v1           #key:Ljava/lang/String;
    :sswitch_6b
    return-void

    .line 182
    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_51
        0x7d -> :sswitch_6b
    .end sparse-switch

    .line 210
    :sswitch_data_76
    .sparse-switch
        0x2c -> :sswitch_63
        0x3b -> :sswitch_63
        0x7d -> :sswitch_6b
    .end sparse-switch
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 482
    if-nez p0, :cond_c

    .line 483
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_c
    invoke-static {p0}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, s:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4e

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4e

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4e

    .line 491
    :goto_2b
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 492
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 494
    :cond_3d
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_4e
    return-object v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "string"

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    .line 808
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    .line 809
    :cond_c
    const-string v6, "\"\""

    .line 860
    :goto_e
    return-object v6

    .line 813
    :cond_f
    const/4 v1, 0x0

    .line 815
    .local v1, c:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 816
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 819
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v3, :cond_9b

    .line 821
    move v0, v1

    .line 822
    .local v0, b:C
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 823
    sparse-switch v1, :sswitch_data_a4

    .line 851
    const/16 v6, 0x20

    if-ge v1, v6, :cond_97

    .line 852
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 853
    .local v5, t:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .end local v5           #t:Ljava/lang/String;
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 826
    :sswitch_67
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 830
    :sswitch_6e
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_75

    .line 831
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_75
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 836
    :sswitch_79
    const-string v6, "\\b"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 839
    :sswitch_7f
    const-string v6, "\\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 842
    :sswitch_85
    const-string v6, "\\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 845
    :sswitch_8b
    const-string v6, "\\f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 848
    :sswitch_91
    const-string v6, "\\r"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 855
    :cond_97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 859
    .end local v0           #b:C
    :cond_9b
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e

    .line 823
    :sswitch_data_a4
    .sparse-switch
        0x8 -> :sswitch_79
        0x9 -> :sswitch_7f
        0xa -> :sswitch_85
        0xc -> :sswitch_8b
        0xd -> :sswitch_91
        0x22 -> :sswitch_67
        0x2f -> :sswitch_6e
        0x5c -> :sswitch_67
    .end sparse-switch
.end method

.method static testValidity(Ljava/lang/Object;)V
    .registers 4
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 879
    if-eqz p0, :cond_3e

    .line 880
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_20

    .line 881
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_18

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 882
    :cond_18
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 885
    .restart local p0
    :cond_20
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_3e

    .line 886
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_36

    check-cast p0, Ljava/lang/Float;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 887
    :cond_36
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "JSON does not allow non-finite numbers."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 892
    :cond_3e
    return-void
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1034
    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1035
    :cond_9
    const-string v0, "null"

    .line 1044
    .end local p0
    :goto_b
    return-object v0

    .line 1037
    .restart local p0
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 1038
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1040
    .restart local p0
    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_23

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_23

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_28

    .line 1042
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1044
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .registers 4
    .parameter "value"
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1064
    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1065
    :cond_9
    const-string v0, "null"

    .line 1079
    .end local p0
    :goto_b
    return-object v0

    .line 1067
    .restart local p0
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_17

    .line 1068
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1070
    .restart local p0
    :cond_17
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1073
    :cond_20
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2b

    .line 1074
    check-cast p0, Lorg/json/JSONObject;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1076
    .restart local p0
    :cond_2b
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_36

    .line 1077
    check-cast p0, Lorg/json/JSONArray;

    .end local p0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1079
    .restart local p0
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p2}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 267
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    .end local v0           #o:Ljava/lang/Object;
    :goto_c
    return-object p0

    .line 268
    .restart local v0       #o:Ljava/lang/Object;
    :cond_d
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_17

    .line 269
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    .line 271
    .restart local v0       #o:Ljava/lang/Object;
    :cond_17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_29

    .line 287
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_29
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 304
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

    .line 307
    :cond_1c
    const/4 v2, 0x0

    .line 311
    .end local v1           #o:Ljava/lang/Object;
    :goto_1d
    return v2

    .line 308
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

    .line 311
    :cond_34
    const/4 v2, 0x1

    goto :goto_1d

    .line 313
    :cond_36
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a Boolean."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 328
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

    .line 330
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 331
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONObject["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 348
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
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_e
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_b

    .line 364
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 366
    .restart local v0       #o:Ljava/lang/Object;
    :cond_b
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 382
    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #o:Ljava/lang/Object;
    return-object v0

    .line 384
    .restart local v0       #o:Ljava/lang/Object;
    :cond_b
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 400
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
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    goto :goto_e
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 423
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 435
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public names()Lorg/json/JSONArray;
    .registers 4

    .prologue
    .line 466
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 467
    .local v0, ja:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 468
    .local v1, keys:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 471
    :cond_17
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    :goto_1e
    return-object v2

    :cond_1f
    move-object v2, v0

    goto :goto_1e
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 508
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 536
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 538
    :goto_4
    return v1

    .line 537
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 538
    goto :goto_4
.end method

.method public optDouble(Ljava/lang/String;)D
    .registers 4
    .parameter "key"

    .prologue
    .line 553
    const-wide/high16 v0, 0x7ff8

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .registers 8
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 569
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 570
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Number;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 573
    :goto_e
    return-wide v2

    .line 570
    .restart local v1       #o:Ljava/lang/Object;
    :cond_f
    new-instance v2, Ljava/lang/Double;

    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-wide v2

    goto :goto_e

    .line 572
    :catch_1b
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move-wide v2, p2

    .line 573
    goto :goto_e
.end method

.method public optInt(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 604
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 606
    :goto_4
    return v1

    .line 605
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p2

    .line 606
    goto :goto_4
.end method

.method public optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4
    .parameter "key"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 621
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

.method public optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .parameter "key"

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 635
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

.method public optLong(Ljava/lang/String;)J
    .registers 4
    .parameter "key"

    .prologue
    .line 649
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .registers 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 665
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 667
    :goto_4
    return-wide v1

    .line 666
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p2

    .line 667
    goto :goto_4
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 681
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 695
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

.method public put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 722
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 768
    if-nez p1, :cond_a

    .line 769
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_a
    if-eqz p2, :cond_15

    .line 772
    invoke-static {p2}, Lorg/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :goto_14
    return-object p0

    .line 775
    :cond_15
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 792
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 793
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    :cond_7
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 870
    iget-object v0, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 5
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 904
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 905
    :cond_8
    const/4 v2, 0x0

    .line 911
    :goto_9
    return-object v2

    .line 907
    :cond_a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 908
    .local v1, ja:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 909
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    move-object v2, v1

    .line 911
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 928
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 929
    .local v1, keys:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    .local v3, sb:Ljava/lang/StringBuilder;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 932
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    .line 933
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 935
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 936
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget-object v4, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 942
    .end local v1           #keys:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 943
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :goto_42
    return-object v4

    .line 940
    .restart local v1       #keys:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_43
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_3f

    move-result-object v4

    goto :goto_42
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
    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .registers 14
    .parameter "indentFactor"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    const-string v10, ": "

    .line 980
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 981
    .local v2, n:I
    if-nez v2, :cond_10

    .line 982
    const-string v6, "{}"

    .line 1018
    :goto_f
    return-object v6

    .line 984
    :cond_10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 985
    .local v1, keys:Ljava/util/Iterator;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .local v5, sb:Ljava/lang/StringBuilder;
    add-int v3, p2, p1

    .line 988
    .local v3, newindent:I
    if-ne v2, v7, :cond_67

    .line 989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 990
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string v6, ": "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    iget-object v6, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .end local v4           #o:Ljava/lang/Object;
    :cond_40
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 1005
    .local v0, i:I
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v6, ": "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v6, p0, Lorg/json/JSONObject;->myHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lorg/json/JSONObject;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .end local v0           #i:I
    .end local v4           #o:Ljava/lang/Object;
    :cond_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 996
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 997
    .restart local v4       #o:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_85

    .line 998
    const-string v6, ",\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :goto_7c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7d
    if-ge v0, v3, :cond_4a

    .line 1003
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 1000
    .end local v0           #i:I
    :cond_85
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 1010
    .end local v4           #o:Ljava/lang/Object;
    :cond_89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v7, :cond_40

    .line 1011
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_93
    if-ge v0, p2, :cond_40

    .line 1013
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    add-int/lit8 v0, v0, 0x1

    goto :goto_93
.end method
