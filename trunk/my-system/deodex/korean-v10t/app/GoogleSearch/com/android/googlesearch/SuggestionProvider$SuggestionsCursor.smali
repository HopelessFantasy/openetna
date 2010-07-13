.class Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/googlesearch/SuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field final mPopularity:Lorg/json/JSONArray;

.field final mSuggestions:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 3
    .parameter "suggestions"
    .parameter "popularity"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 207
    iput-object p2, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPopularity:Lorg/json/JSONArray;

    .line 208
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lcom/android/googlesearch/SuggestionProvider;->access$000()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 264
    if-nez p1, :cond_6

    .line 265
    iget v0, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 267
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 8
    .parameter "column"

    .prologue
    const/4 v4, 0x0

    const-string v5, "GoogleSearch"

    .line 222
    iget v1, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    move-object v1, v4

    .line 242
    :goto_9
    return-object v1

    .line 224
    :cond_a
    packed-switch p1, :pswitch_data_62

    .line 237
    :try_start_d
    const-string v1, "GoogleSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 238
    goto :goto_9

    .line 226
    :pswitch_27
    iget v1, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 229
    :pswitch_2e
    iget-object v1, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 231
    :pswitch_37
    iget-object v1, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPopularity:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 233
    :pswitch_40
    const-string v1, "android.resource://com.android.googlesearch/2130837506"
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_42} :catch_45

    goto :goto_9

    :pswitch_43
    move-object v1, v4

    .line 235
    goto :goto_9

    .line 240
    :catch_45
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "GoogleSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 242
    goto :goto_9

    .line 224
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2e
        :pswitch_37
        :pswitch_40
        :pswitch_43
        :pswitch_2e
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
