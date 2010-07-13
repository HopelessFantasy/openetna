.class public Lcom/android/googlesearch/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COL_ICON_1:I = 0x3

.field private static final COL_ICON_2:I = 0x4

.field private static final COL_ID:I = 0x0

.field private static final COL_QUERY:I = 0x5

.field private static final COL_TEXT_1:I = 0x1

.field private static final COL_TEXT_2:I = 0x2

.field private static final HTTP_TIMEOUT:Ljava/lang/String; = "http.conn-manager.timeout"

.field private static final HTTP_TIMEOUT_MS:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "GoogleSearch"

.field private static final SUGGESTION_ICON:Ljava/lang/String; = "android.resource://com.android.googlesearch/2130837506"

.field private static final USER_AGENT:Ljava/lang/String; = "Android/1.0"


# instance fields
.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mSuggestUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/googlesearch/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/googlesearch/SuggestionProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/googlesearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_10

    .line 191
    const/4 v1, 0x0

    .line 193
    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_f
.end method

.method private isNetworkConnected()Z
    .registers 3

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/googlesearch/SuggestionProvider;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 184
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 104
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 88
    new-instance v1, Lcom/google/android/net/GoogleHttpClient;

    invoke-virtual {p0}, Lcom/android/googlesearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Android/1.0"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/net/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/googlesearch/SuggestionProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 89
    iget-object v1, p0, Lcom/android/googlesearch/SuggestionProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 90
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.conn-manager.timeout"

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/googlesearch/SuggestionProvider;->mSuggestUri:Ljava/lang/String;

    .line 95
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 114
    const/4 v13, 0x0

    aget-object v9, p4, v13

    .line 115
    .local v9, query:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 116
    const/4 v13, 0x0

    .line 179
    :goto_a
    return-object v13

    .line 118
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/googlesearch/SuggestionProvider;->isNetworkConnected()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 119
    const-string v13, "GoogleSearch"

    const-string v14, "Not connected to network."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v13, 0x0

    goto :goto_a

    .line 123
    :cond_1a
    :try_start_1a
    const-string v13, "UTF-8"

    invoke-static {v9, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/googlesearch/SuggestionProvider;->mSuggestUri:Ljava/lang/String;

    move-object v13, v0

    if-nez v13, :cond_80

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 134
    .local v5, l:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, language:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, country:Ljava/lang/String;
    const-string v13, "zh"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 138
    const-string v13, "cn"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e4

    .line 139
    const-string v6, "zh-CN"

    .line 150
    :cond_49
    :goto_49
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/googlesearch/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f040008

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "json=true&q="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/googlesearch/SuggestionProvider;->mSuggestUri:Ljava/lang/String;

    .line 156
    .end local v3           #country:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    :cond_80
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/googlesearch/SuggestionProvider;->mSuggestUri:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, method:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v13, ""

    invoke-direct {v2, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, content:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v7, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/googlesearch/SuggestionProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object v13, v0

    invoke-interface {v13, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 160
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_e1

    .line 167
    new-instance v11, Lorg/json/JSONArray;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 168
    .local v11, results:Lorg/json/JSONArray;
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v12

    .line 169
    .local v12, suggestions:Lorg/json/JSONArray;
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 170
    .local v8, popularity:Lorg/json/JSONArray;
    new-instance v13, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;

    invoke-direct {v13, v12, v8}, Lcom/android/googlesearch/SuggestionProvider$SuggestionsCursor;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_d6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_d6} :catch_d8
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_d6} :catch_110
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_d6} :catch_11a

    goto/16 :goto_a

    .line 172
    .end local v2           #content:Lorg/apache/http/entity/StringEntity;
    .end local v7           #method:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #popularity:Lorg/json/JSONArray;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #results:Lorg/json/JSONArray;
    .end local v12           #suggestions:Lorg/json/JSONArray;
    :catch_d8
    move-exception v13

    move-object v4, v13

    .line 173
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v13, "GoogleSearch"

    const-string v14, "Error"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :cond_e1
    :goto_e1
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 140
    .restart local v3       #country:Ljava/lang/String;
    .restart local v5       #l:Ljava/util/Locale;
    .restart local v6       #language:Ljava/lang/String;
    :cond_e4
    :try_start_e4
    const-string v13, "tw"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 141
    const-string v6, "zh-TW"

    goto/16 :goto_49

    .line 143
    :cond_f0
    const-string v13, "pt"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 144
    const-string v13, "br"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_104

    .line 145
    const-string v6, "pt-BR"

    goto/16 :goto_49

    .line 146
    :cond_104
    const-string v13, "pt"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 147
    const-string v6, "pt-PT"
    :try_end_10e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e4 .. :try_end_10e} :catch_d8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_10e} :catch_110
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_10e} :catch_11a

    goto/16 :goto_49

    .line 174
    .end local v3           #country:Ljava/lang/String;
    .end local v5           #l:Ljava/util/Locale;
    .end local v6           #language:Ljava/lang/String;
    :catch_110
    move-exception v13

    move-object v4, v13

    .line 175
    .local v4, e:Ljava/io/IOException;
    const-string v13, "GoogleSearch"

    const-string v14, "Error"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e1

    .line 176
    .end local v4           #e:Ljava/io/IOException;
    :catch_11a
    move-exception v13

    move-object v4, v13

    .line 177
    .local v4, e:Lorg/json/JSONException;
    const-string v13, "GoogleSearch"

    const-string v14, "Error"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
