.class public Lcom/android/googlesearch/GoogleSearch;
.super Landroid/app/Activity;
.source "GoogleSearch.java"


# static fields
.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "GoogleSearch"


# instance fields
.field private googleSearchUrlBase:Ljava/lang/String;

.field private mLocationUtils:Lcom/android/googlesearch/LocationUtils;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/googlesearch/GoogleSearch;->googleSearchUrlBase:Ljava/lang/String;

    return-void
.end method

.method private getLocationData()[B
    .registers 9

    .prologue
    const-string v6, "network"

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, postData:[B
    invoke-virtual {p0}, Lcom/android/googlesearch/GoogleSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/googlesearch/GoogleSearch;->mLocationUtils:Lcom/android/googlesearch/LocationUtils;

    invoke-virtual {v5}, Lcom/android/googlesearch/LocationUtils;->systemHasGoogleSettingsProvider()Z

    move-result v5

    if-nez v5, :cond_11

    move-object v3, v2

    .line 155
    .end local v2           #postData:[B
    .end local p0
    .local v3, postData:[B
    :goto_10
    return-object v3

    .line 140
    .end local v3           #postData:[B
    .restart local v2       #postData:[B
    .restart local p0
    :cond_11
    iget-object v5, p0, Lcom/android/googlesearch/GoogleSearch;->mLocationUtils:Lcom/android/googlesearch/LocationUtils;

    invoke-virtual {v5}, Lcom/android/googlesearch/LocationUtils;->userRespondedToLocationOptIn()Z

    move-result v5

    if-nez v5, :cond_20

    .line 143
    iget-object v5, p0, Lcom/android/googlesearch/GoogleSearch;->mLocationUtils:Lcom/android/googlesearch/LocationUtils;

    invoke-virtual {v5}, Lcom/android/googlesearch/LocationUtils;->showLocationOptIn()V

    .end local p0
    :cond_1e
    :goto_1e
    move-object v3, v2

    .line 155
    .end local v2           #postData:[B
    .restart local v3       #postData:[B
    goto :goto_10

    .line 144
    .end local v3           #postData:[B
    .restart local v2       #postData:[B
    .restart local p0
    :cond_20
    iget-object v5, p0, Lcom/android/googlesearch/GoogleSearch;->mLocationUtils:Lcom/android/googlesearch/LocationUtils;

    invoke-virtual {v5}, Lcom/android/googlesearch/LocationUtils;->userAcceptedLocationOptIn()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "network"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 146
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lcom/android/googlesearch/GoogleSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {p0, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 149
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_1e

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action=devloc&sll="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v4, str:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_1e
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)V
    .registers 19
    .parameter "intent"

    .prologue
    .line 73
    const-string v12, "query"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, query:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 75
    const-string v12, "GoogleSearch"

    const-string v13, "Got search intent with no query."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_16
    return-void

    .line 79
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/googlesearch/GoogleSearch;->googleSearchUrlBase:Ljava/lang/String;

    move-object v12, v0

    if-nez v12, :cond_7c

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 81
    .local v6, l:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, country:Ljava/lang/String;
    const-string v12, "zh"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 85
    const-string v12, "cn"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_fb

    .line 86
    const-string v7, "zh-CN"

    .line 97
    :cond_40
    :goto_40
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/googlesearch/GoogleSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f040007

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "client=ms-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/googlesearch/GoogleSearch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "client_id"

    invoke-static {v13, v14}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/googlesearch/GoogleSearch;->googleSearchUrlBase:Ljava/lang/String;

    .line 104
    .end local v4           #country:Ljava/lang/String;
    .end local v6           #l:Ljava/util/Locale;
    .end local v7           #language:Ljava/lang/String;
    :cond_7c
    const-string v12, "app_data"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 105
    .local v2, appSearchData:Landroid/os/Bundle;
    const-string v11, "unknown"

    .line 106
    .local v11, source:Ljava/lang/String;
    if-eqz v2, :cond_8f

    .line 107
    const-string v12, "source"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    :cond_8f
    const-string v12, "com.android.browser.application_id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, applicationId:Ljava/lang/String;
    if-nez v3, :cond_9e

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/googlesearch/GoogleSearch;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_9e
    :try_start_9e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/googlesearch/GoogleSearch;->googleSearchUrlBase:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&source=android-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v9, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, searchUri:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v8, launchUriIntent:Landroid/content/Intent;
    const-string v12, "com.android.browser.application_id"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v12, "com.android.browser.post_data"

    invoke-direct/range {p0 .. p0}, Lcom/android/googlesearch/GoogleSearch;->getLocationData()[B

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 126
    const/high16 v12, 0x1000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/googlesearch/GoogleSearch;->startActivity(Landroid/content/Intent;)V
    :try_end_ee
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9e .. :try_end_ee} :catch_f0

    goto/16 :goto_16

    .line 128
    .end local v8           #launchUriIntent:Landroid/content/Intent;
    .end local v10           #searchUri:Ljava/lang/String;
    :catch_f0
    move-exception v12

    move-object v5, v12

    .line 129
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GoogleSearch"

    const-string v13, "Error"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 87
    .end local v2           #appSearchData:Landroid/os/Bundle;
    .end local v3           #applicationId:Ljava/lang/String;
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    .end local v11           #source:Ljava/lang/String;
    .restart local v4       #country:Ljava/lang/String;
    .restart local v6       #l:Ljava/util/Locale;
    .restart local v7       #language:Ljava/lang/String;
    :cond_fb
    const-string v12, "tw"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 88
    const-string v7, "zh-TW"

    goto/16 :goto_40

    .line 90
    :cond_107
    const-string v12, "pt"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 91
    const-string v12, "br"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11b

    .line 92
    const-string v7, "pt-BR"

    goto/16 :goto_40

    .line 93
    :cond_11b
    const-string v12, "pt"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 94
    const-string v7, "pt-PT"

    goto/16 :goto_40
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/android/googlesearch/LocationUtils;->getLocationUtils(Landroid/content/Context;)Lcom/android/googlesearch/LocationUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/android/googlesearch/GoogleSearch;->mLocationUtils:Lcom/android/googlesearch/LocationUtils;

    .line 59
    invoke-virtual {p0}, Lcom/android/googlesearch/GoogleSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 61
    .local v0, action:Ljava/lang/String;
    :goto_14
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 62
    :cond_24
    invoke-direct {p0, v1}, Lcom/android/googlesearch/GoogleSearch;->handleWebSearchIntent(Landroid/content/Intent;)V

    .line 64
    :cond_27
    invoke-virtual {p0}, Lcom/android/googlesearch/GoogleSearch;->finish()V

    .line 65
    return-void

    .line 60
    .end local v0           #action:Ljava/lang/String;
    :cond_2b
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_14
.end method
