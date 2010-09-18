.class public Lcom/lge/homeselector/HomeSelectorActivity;
.super Landroid/app/Activity;
.source "HomeSelectorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;,
        Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final mOpCode:Ljava/lang/String;


# instance fields
.field public intent:Landroid/content/Intent;

.field public mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

.field public mContext:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mList:Landroid/widget/ListView;

.field public mListCount:I

.field private mPm:Landroid/content/pm/PackageManager;

.field public mSelectedHome:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/homeselector/HomeSelectorActivity;->mOpCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/lge/homeselector/HomeSelectorActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private reorder(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)V
    .registers 10
    .parameter "Adapter"

    .prologue
    const/4 v7, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, i:I
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    .local v0, N:I
    const/4 v2, 0x0

    .line 112
    .local v2, ORG_Info:Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
    const/4 v4, 0x0

    .line 113
    .local v4, temp_Info:Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
    const/4 v1, 0x0

    .line 115
    .local v1, ORG_Index:I
    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_2d

    .line 117
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp_Info:Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
    check-cast v4, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    .line 118
    .restart local v4       #temp_Info:Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;
    iget-object v5, v4, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.orange.zhai.Main"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 120
    move v1, v3

    .line 121
    move-object v2, v4

    .line 115
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 124
    :cond_2d
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    .line 67
    iput-object p0, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/lge/homeselector/HomeSelectorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 69
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/lge/homeselector/HomeSelectorActivity;->setContentView(I)V

    .line 70
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/lge/homeselector/HomeSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->intent:Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance v2, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    iget-object v3, p0, Lcom/lge/homeselector/HomeSelectorActivity;->intent:Landroid/content/Intent;

    invoke-direct {v2, p0, p0, v3}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;-><init>(Lcom/lge/homeselector/HomeSelectorActivity;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    .line 77
    const-string v2, "HomeSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/homeselector/HomeSelectorActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    sget-object v2, Lcom/lge/homeselector/HomeSelectorActivity;->mOpCode:Ljava/lang/String;

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 80
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    invoke-direct {p0, v2}, Lcom/lge/homeselector/HomeSelectorActivity;->reorder(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)V

    .line 81
    :cond_6d
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 82
    .local v0, count:I
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 83
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 84
    .local v1, listParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/lge/homeselector/HomeSelectorActivity$1;

    invoke-direct {v3, p0}, Lcom/lge/homeselector/HomeSelectorActivity$1;-><init>(Lcom/lge/homeselector/HomeSelectorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/homeselector/HomeSelectorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 56
    return-void
.end method

.method public setHomescreen()V
    .registers 31

    .prologue
    .line 345
    const/16 v18, 0x0

    .line 346
    .local v18, j:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homeselector/HomeSelectorActivity;->mListCount:I

    .line 347
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mListCount:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_44

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    const v28, 0x7f070003

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckedTextView;

    .line 350
    .local v9, c:Landroid/widget/CheckedTextView;
    invoke-virtual {v9}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_41

    .line 351
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    .line 347
    :cond_41
    add-int/lit8 v18, v18, 0x1

    goto :goto_12

    .line 353
    .end local v9           #c:Landroid/widget/CheckedTextView;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    move/from16 v27, v0

    if-gez v27, :cond_50

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homeselector/HomeSelectorActivity;->finish()V

    .line 435
    :goto_4f
    return-void

    .line 359
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v25

    .line 360
    .local v25, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mSelectedHome:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v17

    .line 363
    .local v17, intent:Landroid/content/Intent;
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v14, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_85

    .line 366
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    :cond_85
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v11

    .line 369
    .local v11, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_9f

    .line 370
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_8f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 371
    .local v10, cat:Ljava/lang/String;
    invoke-virtual {v14, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_8f

    .line 374
    .end local v10           #cat:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_9f
    const-string v27, "android.intent.category.DEFAULT"

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v27, v0

    const/high16 v28, 0xfff

    and-int v10, v27, v28

    .line 377
    .local v10, cat:I
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 378
    .local v12, data:Landroid/net/Uri;
    const/high16 v27, 0x60

    move v0, v10

    move/from16 v1, v27

    if-ne v0, v1, :cond_14f

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 380
    .local v19, mimeType:Ljava/lang/String;
    if-eqz v19, :cond_d2

    .line 382
    :try_start_cc
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_d2
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_cc .. :try_end_d2} :catch_144

    .line 418
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_d2
    :goto_d2
    if-eqz v14, :cond_1e7

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v5

    .line 420
    .local v5, N:I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v26, v0

    .line 421
    .local v26, set:[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 422
    .local v8, bestMatch:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_e9
    if-ge v15, v5, :cond_1d2

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mAdapter:Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;->access$000(Lcom/lge/homeselector/HomeSelectorActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;

    move-object v0, v6

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v24, v0

    .line 424
    .local v24, r:Landroid/content/pm/ResolveInfo;
    new-instance v27, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v27, v26, v15

    .line 426
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v27, v0

    move/from16 v0, v27

    move v1, v8

    if-le v0, v1, :cond_132

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v8, v0

    .line 427
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    aget-object v28, v26, v15

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 422
    add-int/lit8 v15, v15, 0x1

    goto :goto_e9

    .line 383
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v15           #i:I
    .end local v24           #r:Landroid/content/pm/ResolveInfo;
    .end local v26           #set:[Landroid/content/ComponentName;
    .restart local v19       #mimeType:Ljava/lang/String;
    :catch_144
    move-exception v13

    .line 384
    .local v13, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v27, "ResolverActivity"

    move-object/from16 v0, v27

    move-object v1, v13

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v14, 0x0

    goto :goto_d2

    .line 388
    .end local v13           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_14f
    if-eqz v12, :cond_d2

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_d2

    .line 389
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v27

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 394
    .local v7, aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_195

    .line 395
    :cond_16d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_195

    .line 396
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 397
    .local v6, a:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v27

    if-ltz v27, :cond_16d

    .line 398
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v23

    .line 399
    .local v23, port:I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v27

    if-ltz v23, :cond_1cf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    :goto_18d
    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v23           #port:I
    :cond_195
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v21

    .line 406
    .local v21, pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v21, :cond_d2

    .line 407
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 408
    .local v22, path:Ljava/lang/String;
    :cond_1a5
    if-eqz v22, :cond_d2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d2

    .line 409
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PatternMatcher;

    .line 410
    .local v20, p:Landroid/os/PatternMatcher;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1a5

    .line 411
    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getType()I

    move-result v28

    move-object v0, v14

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_d2

    .line 399
    .end local v20           #p:Landroid/os/PatternMatcher;
    .end local v21           #pIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22           #path:Ljava/lang/String;
    .restart local v6       #a:Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v23       #port:I
    :cond_1cf
    const/16 v28, 0x0

    goto :goto_18d

    .line 430
    .end local v6           #a:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7           #aIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23           #port:I
    .restart local v5       #N:I
    .restart local v8       #bestMatch:I
    .restart local v15       #i:I
    .restart local v26       #set:[Landroid/content/ComponentName;
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homeselector/HomeSelectorActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    move-object/from16 v0, v27

    move-object v1, v14

    move v2, v8

    move-object/from16 v3, v26

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 433
    .end local v5           #N:I
    .end local v8           #bestMatch:I
    .end local v15           #i:I
    .end local v26           #set:[Landroid/content/ComponentName;
    :cond_1e7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/homeselector/HomeSelectorActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homeselector/HomeSelectorActivity;->finish()V

    goto/16 :goto_4f
.end method
