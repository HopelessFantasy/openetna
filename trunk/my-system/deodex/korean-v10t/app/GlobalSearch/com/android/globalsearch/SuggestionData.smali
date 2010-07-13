.class public final Lcom/android/globalsearch/SuggestionData;
.super Ljava/lang/Object;
.source "SuggestionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionData$Builder;
    }
.end annotation


# instance fields
.field private final mActionMsgCall:Ljava/lang/String;

.field private final mBackgroundColor:I

.field private final mDescription:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private final mIcon1:Ljava/lang/String;

.field private final mIcon2:Ljava/lang/String;

.field private final mIntentAction:Ljava/lang/String;

.field private final mIntentComponentName:Ljava/lang/String;

.field private final mIntentData:Ljava/lang/String;

.field private final mIntentExtraData:Ljava/lang/String;

.field private final mIntentQuery:Ljava/lang/String;

.field private final mPinToBottom:Z

.field private final mShortcutId:Ljava/lang/String;

.field private final mSource:Landroid/content/ComponentName;

.field private final mSpinnerWhileRefreshing:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 19
    .parameter "source"
    .parameter "format"
    .parameter "title"
    .parameter "description"
    .parameter "icon1"
    .parameter "icon2"
    .parameter "intentAction"
    .parameter "intentData"
    .parameter "intentQuery"
    .parameter "actionMsgCall"
    .parameter "intentExtraData"
    .parameter "intentComponentName"
    .parameter "shortcutId"
    .parameter "backgroundColor"
    .parameter "pinToBottom"
    .parameter "spinnerWhileRefreshing"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    .line 62
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    .line 70
    iput-object p10, p0, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    .line 72
    iput-object p12, p0, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    .line 73
    iput-object p13, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    .line 74
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    .line 75
    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    .line 76
    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    .line 77
    return-void
.end method

.method private static addHashCode(ILjava/lang/String;)I
    .registers 4
    .parameter "old"
    .parameter "str"

    .prologue
    .line 270
    mul-int/lit8 v0, p0, 0x1f

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0

    :cond_a
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static notEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_e
    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_b

    :cond_12
    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method public buildUpon()Lcom/android/globalsearch/SuggestionData$Builder;
    .registers 3

    .prologue
    .line 195
    new-instance v0, Lcom/android/globalsearch/SuggestionData$Builder;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;-><init>(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->format(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->title(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->description(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->icon1(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->icon2(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentAction(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentQuery(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->actionMsgCall(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentExtraData(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->intentComponentName(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->shortcutId(Ljava/lang/String;)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->backgroundColor(I)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->pinToBottom(Z)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionData$Builder;->spinnerWhileRefreshing(Z)Lcom/android/globalsearch/SuggestionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 241
    :goto_5
    return v2

    .line 219
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 220
    goto :goto_5

    .line 223
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/android/globalsearch/SuggestionData;

    move-object v1, v0

    .line 225
    .local v1, that:Lcom/android/globalsearch/SuggestionData;
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    move v2, v4

    goto :goto_5

    .line 226
    :cond_24
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v4

    goto :goto_5

    .line 227
    :cond_30
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v4

    goto :goto_5

    .line 228
    :cond_3c
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    move v2, v4

    goto :goto_5

    .line 229
    :cond_48
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    move v2, v4

    goto :goto_5

    .line 230
    :cond_54
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    move v2, v4

    goto :goto_5

    .line 231
    :cond_60
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    move v2, v4

    goto :goto_5

    .line 232
    :cond_6c
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    move v2, v4

    goto :goto_5

    .line 233
    :cond_78
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    move v2, v4

    goto :goto_5

    .line 234
    :cond_84
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    move v2, v4

    goto/16 :goto_5

    .line 235
    :cond_91
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    move v2, v4

    goto/16 :goto_5

    .line 236
    :cond_9e
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    move v2, v4

    goto/16 :goto_5

    .line 237
    :cond_ab
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/globalsearch/SuggestionData;->notEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    move v2, v4

    goto/16 :goto_5

    .line 238
    :cond_b8
    iget v2, p0, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    iget v3, v1, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    if-eq v2, v3, :cond_c1

    move v2, v4

    goto/16 :goto_5

    .line 239
    :cond_c1
    iget-boolean v2, p0, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    iget-boolean v3, v1, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    if-eq v2, v3, :cond_ca

    move v2, v4

    goto/16 :goto_5

    .line 240
    :cond_ca
    iget-boolean v2, p0, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    iget-boolean v3, v1, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    if-eq v2, v3, :cond_d3

    move v2, v4

    goto/16 :goto_5

    :cond_d3
    move v2, v5

    .line 241
    goto/16 :goto_5
.end method

.method public getActionMsgCall()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentComponentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtraData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    .line 251
    .local v0, result:I
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIcon1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIcon2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mActionMsgCall:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentExtraData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentComponentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 263
    iget v1, p0, Lcom/android/globalsearch/SuggestionData;->mBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 264
    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 265
    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/globalsearch/SuggestionData;->addHashCode(ILjava/lang/String;)I

    move-result v0

    .line 266
    return v0
.end method

.method public isPinToBottom()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    return v0
.end method

.method public isSpinnerWhileRefreshing()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestionData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mSource:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 283
    const-string v1, ", intentAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intentData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_3d
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_54

    .line 288
    const-string v1, ", intent query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mIntentQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_54
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 291
    const-string v1, ", shortcutid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionData;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_63
    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mPinToBottom:Z

    if-eqz v1, :cond_6c

    .line 294
    const-string v1, ", pin to bottom=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_6c
    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionData;->mSpinnerWhileRefreshing:Z

    if-eqz v1, :cond_75

    .line 297
    const-string v1, ", spinner while refreshing=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_75
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
