.class public Lcom/android/globalsearch/SuggestionData$Builder;
.super Ljava/lang/Object;
.source "SuggestionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SuggestionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActionMsgCall:Ljava/lang/String;

.field private mBackgroundColor:I

.field private mDescription:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentComponentName:Ljava/lang/String;

.field private mIntentData:Ljava/lang/String;

.field private mIntentExtraData:Ljava/lang/String;

.field private mIntentQuery:Ljava/lang/String;

.field private mPinToBottom:Z

.field private mShortcutId:Ljava/lang/String;

.field private mSource:Landroid/content/ComponentName;

.field private mSpinnerWhileRefreshing:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mSource:Landroid/content/ComponentName;

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mBackgroundColor:I

    .line 334
    return-void
.end method


# virtual methods
.method public actionMsgCall(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "actionMsgCall"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mActionMsgCall:Ljava/lang/String;

    .line 442
    return-object p0
.end method

.method public backgroundColor(I)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "backgroundColor"

    .prologue
    .line 473
    iput p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mBackgroundColor:I

    .line 474
    return-object p0
.end method

.method public build()Lcom/android/globalsearch/SuggestionData;
    .registers 19

    .prologue
    .line 340
    new-instance v1, Lcom/android/globalsearch/SuggestionData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mSource:Landroid/content/ComponentName;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mFormat:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mTitle:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mDescription:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIcon1:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIcon2:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentAction:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentData:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentQuery:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mActionMsgCall:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentExtraData:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentComponentName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mShortcutId:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mBackgroundColor:I

    move v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mPinToBottom:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/globalsearch/SuggestionData$Builder;->mSpinnerWhileRefreshing:Z

    move/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/android/globalsearch/SuggestionData;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v1
.end method

.method public description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "description"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mDescription:Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "format"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mFormat:Ljava/lang/String;

    .line 364
    return-object p0
.end method

.method public icon1(I)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 3
    .parameter "icon1"

    .prologue
    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "icon1"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIcon1:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public icon2(I)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 3
    .parameter "icon2"

    .prologue
    .line 410
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "icon2"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIcon2:Ljava/lang/String;

    .line 403
    return-object p0
.end method

.method public intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "intentAction"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentAction:Ljava/lang/String;

    .line 418
    return-object p0
.end method

.method public intentComponentName(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "intentComponentName"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentComponentName:Ljava/lang/String;

    .line 458
    return-object p0
.end method

.method public intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "intentData"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentData:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public intentExtraData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "intentExtraData"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentExtraData:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "intentQuery"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mIntentQuery:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public pinToBottom(Z)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "pinToBottom"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mPinToBottom:Z

    .line 482
    return-object p0
.end method

.method public shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "shortcutId"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mShortcutId:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public spinnerWhileRefreshing(Z)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "spinnerWhileRefreshing"

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mSpinnerWhileRefreshing:Z

    .line 490
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 2
    .parameter "title"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData$Builder;->mTitle:Ljava/lang/String;

    .line 372
    return-object p0
.end method
