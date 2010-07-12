.class public final Landroid/server/search/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/search/SearchableInfo$ActionKeyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/server/search/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static VOICE_SEARCH_LAUNCH_RECOGNIZER:I

.field private static VOICE_SEARCH_LAUNCH_WEB_SEARCH:I

.field private static VOICE_SEARCH_SHOW_BUTTON:I


# instance fields
.field private mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/server/search/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoUrlDetect:Z

.field private final mHintId:I

.field private final mIconId:I

.field private final mIncludeInGlobalSearch:Z

.field private final mLabelId:I

.field private final mQueryAfterZeroResults:Z

.field public mSearchActivity:Landroid/content/ComponentName;

.field private final mSearchButtonText:I

.field private final mSearchImeOptions:I

.field private final mSearchInputType:I

.field private final mSearchMode:I

.field private final mSettingsDescription:Ljava/lang/String;

.field private final mSuggestAuthority:Ljava/lang/String;

.field private final mSuggestIntentAction:Ljava/lang/String;

.field private final mSuggestIntentData:Ljava/lang/String;

.field private final mSuggestPath:Ljava/lang/String;

.field private final mSuggestProviderPackage:Ljava/lang/String;

.field private final mSuggestSelection:Ljava/lang/String;

.field private final mSuggestThreshold:I

.field private final mVoiceLanguageId:I

.field private final mVoiceLanguageModeId:I

.field private final mVoiceMaxResults:I

.field private final mVoicePromptTextId:I

.field private final mVoiceSearchMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x1

    sput v0, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_SHOW_BUTTON:I

    .line 87
    const/4 v0, 0x2

    sput v0, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_LAUNCH_WEB_SEARCH:I

    .line 88
    const/4 v0, 0x4

    sput v0, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_LAUNCH_RECOGNIZER:I

    .line 701
    new-instance v0, Landroid/server/search/SearchableInfo$1;

    invoke-direct {v0}, Landroid/server/search/SearchableInfo$1;-><init>()V

    sput-object v0, Landroid/server/search/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .registers 12
    .parameter "activityContext"
    .parameter "attr"
    .parameter "cName"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 82
    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 281
    iput-object p3, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 283
    sget-object v4, Lcom/android/internal/R$styleable;->Searchable:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    .line 286
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mLabelId:I

    .line 287
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mHintId:I

    .line 288
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mIconId:I

    .line 289
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mSearchButtonText:I

    .line 291
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mSearchInputType:I

    .line 294
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mSearchImeOptions:I

    .line 296
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/server/search/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 298
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/server/search/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 300
    const/16 v4, 0x15

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/server/search/SearchableInfo;->mAutoUrlDetect:Z

    .line 303
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSettingsDescription:Ljava/lang/String;

    .line 305
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 307
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 309
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 311
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 313
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 315
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mSuggestThreshold:I

    .line 318
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    .line 321
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageModeId:I

    .line 323
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mVoicePromptTextId:I

    .line 325
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageId:I

    .line 327
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/server/search/SearchableInfo;->mVoiceMaxResults:I

    .line 330
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    const/4 v3, 0x0

    .line 334
    .local v3, suggestProviderPackage:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    if-eqz v4, :cond_ce

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 336
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 337
    .local v1, pi:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_ce

    .line 338
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 341
    .end local v1           #pi:Landroid/content/pm/ProviderInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_ce
    iput-object v3, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 344
    iget v4, p0, Landroid/server/search/SearchableInfo;->mLabelId:I

    if-nez v4, :cond_dc

    .line 345
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Search label must be a resource reference."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 347
    :cond_dc
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 82
    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mLabelId:I

    .line 721
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mHintId:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mIconId:I

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mSearchButtonText:I

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mSearchInputType:I

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mSearchImeOptions:I

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    move v1, v3

    :goto_41
    iput-boolean v1, p0, Landroid/server/search/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_92

    move v1, v3

    :goto_4a
    iput-boolean v1, p0, Landroid/server/search/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_94

    move v1, v3

    :goto_53
    iput-boolean v1, p0, Landroid/server/search/SearchableInfo;->mAutoUrlDetect:Z

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSettingsDescription:Ljava/lang/String;

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mSuggestThreshold:I

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    :goto_83
    if-lez v0, :cond_96

    .line 741
    new-instance v1, Landroid/server/search/SearchableInfo$ActionKeyInfo;

    invoke-direct {v1, p1}, Landroid/server/search/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;)V

    invoke-direct {p0, v1}, Landroid/server/search/SearchableInfo;->addActionKey(Landroid/server/search/SearchableInfo$ActionKeyInfo;)V

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .end local v0           #count:I
    :cond_90
    move v1, v2

    .line 728
    goto :goto_41

    :cond_92
    move v1, v2

    .line 729
    goto :goto_4a

    :cond_94
    move v1, v2

    .line 730
    goto :goto_53

    .line 744
    .restart local v0       #count:I
    :cond_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageModeId:I

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mVoicePromptTextId:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageId:I

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/server/search/SearchableInfo;->mVoiceMaxResults:I

    .line 751
    return-void
.end method

.method private addActionKey(Landroid/server/search/SearchableInfo$ActionKeyInfo;)V
    .registers 4
    .parameter "keyInfo"

    .prologue
    .line 447
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 450
    :cond_b
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    return-void
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .registers 5
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, theirContext:Landroid/content/Context;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 237
    :goto_a
    return-object v0

    .line 233
    :catch_b
    move-exception v1

    goto :goto_a

    .line 231
    :catch_d
    move-exception v1

    goto :goto_a
.end method

.method public static getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/server/search/SearchableInfo;
    .registers 7
    .parameter "context"
    .parameter "activityInfo"

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.app.searchable"

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 465
    .local v2, xml:Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_e

    .line 466
    const/4 v3, 0x0

    .line 487
    :goto_d
    return-object v3

    .line 468
    :cond_e
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v0, cName:Landroid/content/ComponentName;
    invoke-static {p0, v2, v0}, Landroid/server/search/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/server/search/SearchableInfo;

    move-result-object v1

    .line 471
    .local v1, searchable:Landroid/server/search/SearchableInfo;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v3, v1

    .line 487
    goto :goto_d
.end method

.method private static getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/server/search/SearchableInfo;
    .registers 16
    .parameter "context"
    .parameter "xml"
    .parameter "cName"

    .prologue
    const/4 v10, 0x0

    const-string v12, "Reading searchable metadata for "

    const-string v7, ": "

    const-string v11, "SearchableInfo"

    .line 501
    const/4 v4, 0x0

    .line 502
    .local v4, result:Landroid/server/search/SearchableInfo;
    invoke-static {p0, p2}, Landroid/server/search/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    .line 507
    .local v0, activityContext:Landroid/content/Context;
    :try_start_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_f} :catch_b3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_d3

    move-result v6

    .local v6, tagType:I
    move-object v5, v4

    .line 508
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .local v5, result:Landroid/server/search/SearchableInfo;
    :goto_11
    const/4 v7, 0x1

    if-eq v6, v7, :cond_f4

    .line 509
    const/4 v7, 0x2

    if-ne v6, v7, :cond_100

    .line 510
    :try_start_17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "searchable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 511
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_26} :catch_fc
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_26} :catch_f8

    move-result-object v1

    .line 512
    .local v1, attr:Landroid/util/AttributeSet;
    if-eqz v1, :cond_100

    .line 514
    :try_start_29
    new-instance v4, Landroid/server/search/SearchableInfo;

    invoke-direct {v4, v0, v1, p2}, Landroid/server/search/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2e} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2e} :catch_fc
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_f8

    .line 538
    .end local v1           #attr:Landroid/util/AttributeSet;
    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    :goto_2e
    :try_start_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_31} :catch_b3
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_d3

    move-result v6

    move-object v5, v4

    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    goto :goto_11

    .line 515
    .restart local v1       #attr:Landroid/util/AttributeSet;
    :catch_34
    move-exception v7

    move-object v3, v7

    .line 516
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_36
    const-string v7, "SearchableInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid searchable metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    move-object v7, v10

    .line 548
    .end local v1           #attr:Landroid/util/AttributeSet;
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    .end local v6           #tagType:I
    :goto_62
    return-object v7

    .line 521
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    .restart local v6       #tagType:I
    :cond_63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "actionkey"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 522
    if-nez v5, :cond_74

    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    move-object v7, v10

    .line 524
    goto :goto_62

    .line 526
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    :cond_74
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_77} :catch_fc
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_77} :catch_f8

    move-result-object v1

    .line 527
    .restart local v1       #attr:Landroid/util/AttributeSet;
    if-eqz v1, :cond_100

    .line 529
    :try_start_7a
    new-instance v7, Landroid/server/search/SearchableInfo$ActionKeyInfo;

    invoke-direct {v7, v0, v1}, Landroid/server/search/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v5, v7}, Landroid/server/search/SearchableInfo;->addActionKey(Landroid/server/search/SearchableInfo$ActionKeyInfo;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_82} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_82} :catch_fc
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_f8

    move-object v4, v5

    .line 534
    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    goto :goto_2e

    .line 530
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    :catch_84
    move-exception v7

    move-object v3, v7

    .line 531
    .restart local v3       #ex:Ljava/lang/IllegalArgumentException;
    :try_start_86
    const-string v7, "SearchableInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid action key for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_b0} :catch_fc
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_b0} :catch_f8

    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    move-object v7, v10

    .line 533
    goto :goto_62

    .line 540
    .end local v1           #attr:Landroid/util/AttributeSet;
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    .end local v6           #tagType:I
    :catch_b3
    move-exception v7

    move-object v2, v7

    .line 541
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b5
    const-string v7, "SearchableInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading searchable metadata for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 542
    goto :goto_62

    .line 543
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d3
    move-exception v7

    move-object v2, v7

    .line 544
    .local v2, e:Ljava/io/IOException;
    :goto_d5
    const-string v7, "SearchableInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading searchable metadata for "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 545
    goto/16 :goto_62

    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    .restart local v6       #tagType:I
    :cond_f4
    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    move-object v7, v5

    .line 548
    goto/16 :goto_62

    .line 543
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    :catch_f8
    move-exception v7

    move-object v2, v7

    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    goto :goto_d5

    .line 540
    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    :catch_fc
    move-exception v7

    move-object v2, v7

    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    goto :goto_b5

    .end local v4           #result:Landroid/server/search/SearchableInfo;
    .restart local v5       #result:Landroid/server/search/SearchableInfo;
    :cond_100
    move-object v4, v5

    .end local v5           #result:Landroid/server/search/SearchableInfo;
    .restart local v4       #result:Landroid/server/search/SearchableInfo;
    goto/16 :goto_2e
.end method


# virtual methods
.method public autoUrlDetect()Z
    .registers 2

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/server/search/SearchableInfo;->mAutoUrlDetect:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public findActionKey(I)Landroid/server/search/SearchableInfo$ActionKeyInfo;
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 440
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 441
    const/4 v0, 0x0

    .line 443
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/server/search/SearchableInfo$ActionKeyInfo;

    move-object v0, p0

    goto :goto_5
.end method

.method public getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .parameter "context"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/server/search/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHintId()I
    .registers 2

    .prologue
    .line 570
    iget v0, p0, Landroid/server/search/SearchableInfo;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 581
    iget v0, p0, Landroid/server/search/SearchableInfo;->mIconId:I

    return v0
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchImeOptions:I

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchInputType:I

    return v0
.end method

.method public getLabelId()I
    .registers 2

    .prologue
    .line 559
    iget v0, p0, Landroid/server/search/SearchableInfo;->mLabelId:I

    return v0
.end method

.method public getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .parameter "context"
    .parameter "activityContext"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, theirContext:Landroid/content/Context;
    iget-object v1, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v1, p2

    .line 265
    :goto_10
    return-object v1

    .line 256
    :cond_11
    iget-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 258
    :try_start_15
    iget-object v1, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1b} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1b} :catch_1e

    move-result-object v0

    :cond_1c
    :goto_1c
    move-object v1, v0

    .line 265
    goto :goto_10

    .line 261
    :catch_1e
    move-exception v1

    goto :goto_1c

    .line 259
    :catch_20
    move-exception v1

    goto :goto_1c
.end method

.method public getSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSearchButtonText()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchButtonText:I

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSettingsDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/server/search/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestThreshold()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSuggestThreshold:I

    return v0
.end method

.method public getVoiceLanguageId()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageId:I

    return v0
.end method

.method public getVoiceLanguageModeId()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageModeId:I

    return v0
.end method

.method public getVoiceMaxResults()I
    .registers 2

    .prologue
    .line 634
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceMaxResults:I

    return v0
.end method

.method public getVoicePromptTextId()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoicePromptTextId:I

    return v0
.end method

.method public getVoiceSearchEnabled()Z
    .registers 3

    .prologue
    .line 588
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    sget v1, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_SHOW_BUTTON:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVoiceSearchLaunchRecognizer()Z
    .registers 3

    .prologue
    .line 602
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    sget v1, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_LAUNCH_RECOGNIZER:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getVoiceSearchLaunchWebSearch()Z
    .registers 3

    .prologue
    .line 595
    iget v0, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    sget v1, Landroid/server/search/SearchableInfo;->VOICE_SEARCH_LAUNCH_WEB_SEARCH:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public queryAfterZeroResults()Z
    .registers 2

    .prologue
    .line 685
    iget-boolean v0, p0, Landroid/server/search/SearchableInfo;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public shouldIncludeInGlobalSearch()Z
    .registers 2

    .prologue
    .line 674
    iget-boolean v0, p0, Landroid/server/search/SearchableInfo;->mIncludeInGlobalSearch:Z

    return v0
.end method

.method public shouldRewriteQueryFromData()Z
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public shouldRewriteQueryFromText()Z
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public useBadgeIcon()Z
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/server/search/SearchableInfo;->mIconId:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public useBadgeLabel()Z
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 758
    iget v2, p0, Landroid/server/search/SearchableInfo;->mLabelId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    iget v2, p0, Landroid/server/search/SearchableInfo;->mHintId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget v2, p0, Landroid/server/search/SearchableInfo;->mSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget v2, p0, Landroid/server/search/SearchableInfo;->mIconId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget v2, p0, Landroid/server/search/SearchableInfo;->mSearchButtonText:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget v2, p0, Landroid/server/search/SearchableInfo;->mSearchInputType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget v2, p0, Landroid/server/search/SearchableInfo;->mSearchImeOptions:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-boolean v2, p0, Landroid/server/search/SearchableInfo;->mIncludeInGlobalSearch:Z

    if-eqz v2, :cond_8b

    move v2, v4

    :goto_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-boolean v2, p0, Landroid/server/search/SearchableInfo;->mQueryAfterZeroResults:Z

    if-eqz v2, :cond_8d

    move v2, v4

    :goto_37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-boolean v2, p0, Landroid/server/search/SearchableInfo;->mAutoUrlDetect:Z

    if-eqz v2, :cond_8f

    move v2, v4

    :goto_3f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSettingsDescription:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    iget v2, p0, Landroid/server/search/SearchableInfo;->mSuggestThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v2, :cond_91

    .line 779
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    :cond_6c
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    iget v2, p0, Landroid/server/search/SearchableInfo;->mVoiceSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget v2, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageModeId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget v2, p0, Landroid/server/search/SearchableInfo;->mVoicePromptTextId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget v2, p0, Landroid/server/search/SearchableInfo;->mVoiceLanguageId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget v2, p0, Landroid/server/search/SearchableInfo;->mVoiceMaxResults:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    return-void

    :cond_8b
    move v2, v3

    .line 766
    goto :goto_2f

    :cond_8d
    move v2, v3

    .line 767
    goto :goto_37

    :cond_8f
    move v2, v3

    .line 768
    goto :goto_3f

    .line 781
    :cond_91
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget-object v2, p0, Landroid/server/search/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/search/SearchableInfo$ActionKeyInfo;

    .line 783
    .local v0, actionKey:Landroid/server/search/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v0, p1, p2}, Landroid/server/search/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a4
.end method
