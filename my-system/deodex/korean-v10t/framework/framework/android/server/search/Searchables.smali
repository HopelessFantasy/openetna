.class public Landroid/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultSearchable:Landroid/server/search/SearchableInfo;

.field private mDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;

.field private mSearchablesForWebSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 60
    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 52
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 53
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchable:Landroid/server/search/SearchableInfo;

    .line 56
    iput-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;

    .line 68
    iput-object p1, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private static getPreferredWebSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 15
    .parameter "context"

    .prologue
    const-string v13, "android.intent.action.WEB_SEARCH"

    .line 332
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 334
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/high16 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 336
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_25

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v12, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 337
    :cond_25
    const-string v11, "Searchables"

    const-string v12, "No preferred activity set for action web search."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x107000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, preferredActivities:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3a
    if-ge v5, v7, :cond_78

    aget-object v3, v0, v5

    .line 345
    .local v3, componentName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 346
    .local v2, component:Landroid/content/ComponentName;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-static {p0, v2, v13}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4c

    move-object v11, v2

    .line 366
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #preferredActivities:[Ljava/lang/String;
    :goto_4b
    return-object v11

    .line 344
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #component:Landroid/content/ComponentName;
    .restart local v3       #componentName:Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #preferredActivities:[Ljava/lang/String;
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 354
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v9           #preferredActivities:[Ljava/lang/String;
    :cond_4f
    new-instance v1, Landroid/content/ComponentName;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 356
    sget-object v11, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 358
    .local v4, enhancedGoogleSearch:Landroid/content/ComponentName;
    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-static {p0, v4, v13}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_78

    move-object v11, v4

    .line 360
    goto :goto_4b

    .line 365
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v4           #enhancedGoogleSearch:Landroid/content/ComponentName;
    :cond_78
    if-nez v10, :cond_7c

    const/4 v11, 0x0

    goto :goto_4b

    .line 366
    :cond_7c
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "component"
    .parameter "action"

    .prologue
    .line 300
    const-string v0, "Searchables"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 304
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 p0, 0x0

    :try_start_1d
    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_20} :catch_5c

    .end local p0
    move-result-object p0

    .line 311
    .local p0, ai:Landroid/content/pm/ActivityInfo;
    new-instance p0, Landroid/content/Intent;

    .end local p0           #ai:Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local p0, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 314
    .local v4, webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    .end local p0           #intent:Landroid/content/Intent;
    new-array v3, p0, [Landroid/content/ComponentName;

    .line 315
    .local v3, set:[Landroid/content/ComponentName;
    const/4 p0, 0x0

    .line 316
    .local p0, bestMatch:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5f

    .line 317
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 318
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v0

    .line 320
    iget v5, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, p0, :cond_59

    iget p0, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 316
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 305
    .end local v0           #i:I
    .end local v2           #ri:Landroid/content/pm/ResolveInfo;
    .end local v3           #set:[Landroid/content/ComponentName;
    .end local v4           #webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local p0           #bestMatch:I
    :catch_5c
    move-exception p0

    .line 306
    .local p0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 p0, 0x0

    .line 327
    .end local p0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local p2
    :goto_5e
    return p0

    .line 323
    .restart local v0       #i:I
    .restart local v3       #set:[Landroid/content/ComponentName;
    .restart local v4       #webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p0, bestMatch:I
    .restart local p2
    :cond_5f
    const-string v0, "Searchables"

    .end local v0           #i:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting preferred web search activity to "

    .end local v4           #webSearchActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, filter:Landroid/content/IntentFilter;
    const-string p2, "android.intent.category.DEFAULT"

    .end local p2
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v0, p0, v3, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 327
    const/4 p0, 0x1

    goto :goto_5e
.end method


# virtual methods
.method public buildSearchableList()V
    .registers 30

    .prologue
    .line 201
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v17, newSearchablesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/server/search/SearchableInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v16, newSearchablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/search/SearchableInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v15, newSearchablesInGlobalSearchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/search/SearchableInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v14, newSearchablesForWebSearchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/search/SearchableInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 214
    .local v18, pm:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v26, "android.intent.action.SEARCH"

    move-object v0, v11

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v11, intent:Landroid/content/Intent;
    const/16 v26, 0x80

    move-object/from16 v0, v18

    move-object v1, v11

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 218
    .local v19, searchList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v24, Landroid/content/Intent;

    const-string v26, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v24, webSearchIntent:Landroid/content/Intent;
    const/16 v26, 0x80

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    .line 222
    .local v23, webSearchInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v19, :cond_4e

    if-eqz v23, :cond_d7

    .line 223
    :cond_4e
    if-nez v19, :cond_bb

    const/16 v26, 0x0

    move/from16 v20, v26

    .line 224
    .local v20, search_count:I
    :goto_54
    if-nez v23, :cond_c2

    const/16 v26, 0x0

    move/from16 v25, v26

    .line 225
    .local v25, web_search_count:I
    :goto_5a
    add-int v5, v20, v25

    .line 226
    .local v5, count:I
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_5d
    if-ge v9, v5, :cond_d7

    .line 228
    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_c9

    move-object/from16 v0, v19

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v10, v3

    .line 231
    .local v10, info:Landroid/content/pm/ResolveInfo;
    :goto_6e
    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 233
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v26, Landroid/content/ComponentName;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_b8

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/server/search/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/server/search/SearchableInfo;

    move-result-object v21

    .line 235
    .local v21, searchable:Landroid/server/search/SearchableInfo;
    if-eqz v21, :cond_b8

    .line 236
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual/range {v21 .. v21}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual/range {v21 .. v21}, Landroid/server/search/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v26

    if-eqz v26, :cond_b8

    .line 239
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v21           #searchable:Landroid/server/search/SearchableInfo;
    :cond_b8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5d

    .line 223
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #count:I
    .end local v9           #ii:I
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v20           #search_count:I
    .end local v25           #web_search_count:I
    :cond_bb
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v20, v26

    goto :goto_54

    .line 224
    .restart local v20       #search_count:I
    :cond_c2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v25, v26

    goto :goto_5a

    .line 228
    .restart local v5       #count:I
    .restart local v9       #ii:I
    .restart local v25       #web_search_count:I
    :cond_c9
    sub-int v26, v9, v20

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v10, v3

    goto :goto_6e

    .line 246
    .end local v5           #count:I
    .end local v9           #ii:I
    .end local v20           #search_count:I
    .end local v25           #web_search_count:I
    :cond_d7
    if-eqz v23, :cond_132

    .line 247
    const/4 v8, 0x0

    .local v8, i:I
    :goto_da
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v26

    move v0, v8

    move/from16 v1, v26

    if-ge v0, v1, :cond_132

    .line 248
    move-object/from16 v0, v23

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 249
    .restart local v3       #ai:Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v4, component:Landroid/content/ComponentName;
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/server/search/SearchableInfo;

    .line 251
    .restart local v21       #searchable:Landroid/server/search/SearchableInfo;
    if-nez v21, :cond_12b

    .line 252
    const-string v26, "Searchables"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "did not find component in searchables: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_128
    add-int/lit8 v8, v8, 0x1

    goto :goto_da

    .line 254
    :cond_12b
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_128

    .line 260
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v4           #component:Landroid/content/ComponentName;
    .end local v8           #i:I
    .end local v21           #searchable:Landroid/server/search/SearchableInfo;
    :cond_132
    new-instance v7, Landroid/content/Intent;

    const-string v26, "android.search.action.GLOBAL_SEARCH"

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v7, globalSearchIntent:Landroid/content/Intent;
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    .line 262
    .local v6, globalSearchActivity:Landroid/content/ComponentName;
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/server/search/SearchableInfo;

    .line 264
    .local v12, newDefaultSearchable:Landroid/server/search/SearchableInfo;
    if-nez v12, :cond_169

    .line 265
    const-string v26, "Searchables"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No searchable info found for new default searchable activity "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/server/search/Searchables;->getPreferredWebSearchActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v22

    .line 271
    .local v22, webSearchActivity:Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 272
    .local v13, newDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;
    if-eqz v22, :cond_180

    .line 273
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #newDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;
    check-cast v13, Landroid/server/search/SearchableInfo;

    .line 275
    .restart local v13       #newDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;
    :cond_180
    if-nez v13, :cond_19e

    .line 276
    const-string v26, "Searchables"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No searchable info found for new default web search activity "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_19e
    monitor-enter p0

    .line 282
    :try_start_19f
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 283
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 284
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 285
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    .line 286
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mDefaultSearchable:Landroid/server/search/SearchableInfo;

    .line 287
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_1c1
    move-exception v26

    monitor-exit p0
    :try_end_1c3
    .catchall {:try_start_19f .. :try_end_1c3} :catchall_1c1

    throw v26
.end method

.method public declared-synchronized getDefaultSearchable()Landroid/server/search/SearchableInfo;
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchable:Landroid/server/search/SearchableInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;
    .registers 2

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchableForWebSearch:Landroid/server/search/SearchableInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/server/search/SearchableInfo;
    .registers 11
    .parameter "activity"

    .prologue
    const-string v7, "android.app.default_searchable"

    .line 101
    monitor-enter p0

    .line 102
    :try_start_3
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/server/search/SearchableInfo;

    .line 103
    .local v6, result:Landroid/server/search/SearchableInfo;
    if-eqz v6, :cond_10

    monitor-exit p0

    move-object v7, v6

    .line 161
    :goto_f
    return-object v7

    .line 104
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_46

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    :try_start_12
    iget-object v7, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 115
    const/4 v4, 0x0

    .line 118
    .local v4, refActivityName:Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 119
    .local v2, md:Landroid/os/Bundle;
    if-eqz v2, :cond_29

    .line 120
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    :cond_29
    if-nez v4, :cond_37

    .line 124
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 125
    if-eqz v2, :cond_37

    .line 126
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_37
    if-eqz v4, :cond_88

    .line 135
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 136
    invoke-virtual {p0}, Landroid/server/search/Searchables;->getDefaultSearchable()Landroid/server/search/SearchableInfo;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_44} :catch_8d

    move-result-object v7

    goto :goto_f

    .line 104
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #md:Landroid/os/Bundle;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v6           #result:Landroid/server/search/SearchableInfo;
    :catchall_46
    move-exception v7

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v7

    .line 138
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v6       #result:Landroid/server/search/SearchableInfo;
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, pkg:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_81

    .line 141
    new-instance v5, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v5, referredActivity:Landroid/content/ComponentName;
    :goto_6c
    monitor-enter p0
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_6d} :catch_8d

    .line 149
    :try_start_6d
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/server/search/SearchableInfo;

    move-object v6, v0

    .line 150
    if-eqz v6, :cond_87

    .line 151
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_8a

    move-object v7, v6

    goto :goto_f

    .line 143
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_81
    :try_start_81
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_81 .. :try_end_86} :catch_8d

    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    goto :goto_6c

    .line 154
    :cond_87
    :try_start_87
    monitor-exit p0

    .line 161
    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_88
    :goto_88
    const/4 v7, 0x0

    goto :goto_f

    .line 154
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v3       #pkg:Ljava/lang/String;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    :catchall_8a
    move-exception v7

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v7
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_8d} :catch_8d

    .line 156
    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :catch_8d
    move-exception v7

    goto :goto_88
.end method

.method public declared-synchronized getSearchablesForWebSearchList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesForWebSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 374
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/search/SearchableInfo;>;"
    monitor-exit p0

    return-object v0

    .line 373
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/server/search/SearchableInfo;>;"
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isDefaultSearchable(Landroid/server/search/SearchableInfo;)Z
    .registers 3
    .parameter "searchable"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/search/Searchables;->mDefaultSearchable:Landroid/server/search/SearchableInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultWebSearch(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "component"

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-static {v0, p1, v1}, Landroid/server/search/Searchables;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 403
    invoke-virtual {p0}, Landroid/server/search/Searchables;->buildSearchableList()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 404
    monitor-exit p0

    return-void

    .line 402
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
