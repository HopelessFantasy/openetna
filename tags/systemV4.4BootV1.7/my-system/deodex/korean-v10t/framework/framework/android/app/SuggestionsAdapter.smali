.class Landroid/app/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field private static final EXTRA_CURSOR_RESPOND_CLOSE_CURSOR:Ljava/lang/String; = "cursor_respond_close_cursor"

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field static final NONE:I = -0x1


# instance fields
.field private mBackgroundColorCol:I

.field private mBackgroundsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mCursorRespondCloseCursorBundle:Landroid/os/Bundle;

.field mDisplayNotifyPos:I

.field private mFormatCol:I

.field private mGlobalSearchMode:Z

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mListItemToSelect:I

.field mMaxDisplayed:I

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mSearchDialog:Landroid/app/SearchDialog;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchable:Landroid/server/search/SearchableInfo;

.field private final mStartSpinnerRunnable:Ljava/lang/Runnable;

.field private final mStopSpinnerRunnable:Ljava/lang/Runnable;

.field private mText1Col:I

.field private mText2Col:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/server/search/SearchableInfo;Ljava/util/WeakHashMap;Z)V
    .registers 11
    .parameter "context"
    .parameter "searchDialog"
    .parameter "searchable"
    .parameter
    .parameter "globalSearchMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/SearchDialog;",
            "Landroid/server/search/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, outsideDrawablesCache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 114
    const v1, 0x1090055

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    .line 92
    iput v3, p0, Landroid/app/SuggestionsAdapter;->mListItemToSelect:I

    .line 96
    iput v3, p0, Landroid/app/SuggestionsAdapter;->mMaxDisplayed:I

    .line 99
    iput v3, p0, Landroid/app/SuggestionsAdapter;->mDisplayNotifyPos:I

    .line 118
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 119
    iput-object p2, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    .line 120
    iput-object p3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    .line 123
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/server/search/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, activityContext:Landroid/content/Context;
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/server/search/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 126
    iput-object p4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 127
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    .line 128
    iput-boolean p5, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    .line 130
    new-instance v1, Landroid/app/SuggestionsAdapter$1;

    invoke-direct {v1, p0}, Landroid/app/SuggestionsAdapter$1;-><init>(Landroid/app/SuggestionsAdapter;)V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mStartSpinnerRunnable:Ljava/lang/Runnable;

    .line 136
    new-instance v1, Landroid/app/SuggestionsAdapter$2;

    invoke-direct {v1, p0}, Landroid/app/SuggestionsAdapter$2;-><init>(Landroid/app/SuggestionsAdapter;)V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mCursorRespondCloseCursorBundle:Landroid/os/Bundle;

    .line 144
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mCursorRespondCloseCursorBundle:Landroid/os/Bundle;

    const-string v2, "cursor_respond_close_cursor"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {p0}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    new-instance v2, Landroid/app/SuggestionsAdapter$3;

    invoke-direct {v2, p0}, Landroid/app/SuggestionsAdapter$3;-><init>(Landroid/app/SuggestionsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/app/SuggestionsAdapter;)Landroid/app/SearchDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    return-object v0
.end method

.method private callCursorPostRefresh(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-boolean v2, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v2, :cond_6

    .line 282
    :goto_5
    return-void

    .line 273
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "DialogCursorProtocol.method"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 277
    .local v1, response:Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    const-string v3, "DialogCursorProtocol.POST_REFRESH.isPending"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/SearchDialog;->setWorking(Z)V

    .line 280
    const-string v2, "DialogCursorProtocol.POST_REFRESH.displayNotify"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mDisplayNotifyPos:I

    goto :goto_5
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "component"

    .prologue
    const/4 v8, 0x0

    const-string v9, "SuggestionsAdapter"

    .line 667
    iget-object v6, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 670
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    :try_start_b
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_17

    move-result-object v0

    .line 675
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 676
    .local v3, iconId:I
    if-nez v3, :cond_23

    move-object v6, v8

    .line 684
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #iconId:I
    :goto_16
    return-object v6

    .line 671
    :catch_17
    move-exception v2

    .line 672
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 673
    goto :goto_16

    .line 677
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v3       #iconId:I
    :cond_23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, pkg:Ljava/lang/String;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 679
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_57

    .line 680
    const-string v6, "SuggestionsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid icon resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 682
    goto :goto_16

    :cond_57
    move-object v6, v1

    .line 684
    goto :goto_16
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 645
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, componentIconKey:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 648
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 649
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_19

    move-object v4, v5

    .line 656
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_18
    return-object v4

    .line 649
    .restart local v0       #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_18

    .line 652
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1e
    invoke-direct {p0, p1}, Landroid/app/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 654
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2c

    move-object v3, v5

    .line 655
    .local v3, toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_25
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 656
    goto :goto_18

    .line 654
    .end local v3           #toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2c
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    move-object v3, v4

    goto :goto_25
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    const/4 v4, 0x0

    .line 696
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 697
    .local v0, col:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    move-object v2, v4

    .line 706
    :goto_9
    return-object v2

    .line 701
    :cond_a
    :try_start_a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    .line 702
    :catch_f
    move-exception v1

    .line 703
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 706
    goto :goto_9
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "cursor"

    .prologue
    .line 612
    const-string v3, "suggest_intent_component"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 614
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 615
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_16

    .line 616
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 617
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2e

    move-object v3, v2

    .line 632
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_15
    return-object v3

    .line 621
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_16
    const-string v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_2e
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 627
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3c

    move-object v3, v2

    .line 628
    goto :goto_15

    .line 632
    :cond_3c
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_15
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter "drawableId"

    .prologue
    const/4 v8, 0x0

    const-string v7, "SuggestionsAdapter"

    const-string v7, "Error closing icon stream for "

    .line 550
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "0"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_15
    move-object v7, v8

    .line 600
    :goto_16
    return-object v7

    .line 555
    :cond_17
    iget-object v7, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 556
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_26

    .line 558
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_16

    .line 561
    :cond_26
    const/4 v1, 0x0

    .line 564
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 565
    .local v4, resourceId:I
    iget-object v7, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_34} :catch_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_34} :catch_98

    move-result-object v1

    .end local v4           #resourceId:I
    :cond_35
    :goto_35
    move-object v7, v1

    .line 600
    goto :goto_16

    .line 567
    :catch_37
    move-exception v7

    move-object v3, v7

    .line 571
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 572
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_46} :catch_77

    move-result-object v5

    .line 573
    .local v5, stream:Ljava/io/InputStream;
    if-eqz v5, :cond_51

    .line 575
    const/4 v7, 0x0

    :try_start_4a
    invoke-static {v5, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_79

    move-result-object v1

    .line 578
    :try_start_4e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_51} :catch_77

    .line 592
    .end local v5           #stream:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_51
    :goto_51
    if-eqz v1, :cond_35

    .line 593
    iget-object v7, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 579
    .restart local v5       #stream:Ljava/io/InputStream;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_5d
    move-exception v2

    .line 580
    .local v2, ex:Ljava/io/IOException;
    :try_start_5e
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_76} :catch_77

    goto :goto_51

    .line 585
    .end local v2           #ex:Ljava/io/IOException;
    .end local v5           #stream:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_77
    move-exception v7

    goto :goto_51

    .line 577
    .restart local v5       #stream:Ljava/io/InputStream;
    .restart local v6       #uri:Landroid/net/Uri;
    :catchall_79
    move-exception v7

    .line 578
    :try_start_7a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_77

    .line 581
    :goto_7d
    :try_start_7d
    throw v7

    .line 579
    :catch_7e
    move-exception v2

    .line 580
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing icon stream for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_97} :catch_77

    goto :goto_7d

    .line 595
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #stream:Ljava/io/InputStream;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_98
    move-exception v7

    goto :goto_35
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 428
    iget v2, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    if-gez v2, :cond_6

    .line 429
    const/4 v2, 0x0

    .line 436
    :goto_5
    return-object v2

    .line 431
    :cond_6
    iget v2, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    move-object v2, v0

    .line 434
    goto :goto_5

    .line 436
    :cond_14
    invoke-direct {p0, p1}, Landroid/app/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 440
    iget v1, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    if-gez v1, :cond_6

    .line 441
    const/4 v1, 0x0

    .line 444
    :goto_5
    return-object v1

    .line 443
    :cond_6
    iget v1, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/app/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5
.end method

.method private getItemBackground(I)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "backgroundColor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    if-nez p1, :cond_6

    .line 376
    const/4 v4, 0x0

    .line 391
    :goto_5
    return-object v4

    .line 378
    :cond_6
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 379
    .local v1, cachedBg:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_15

    .line 381
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_5

    .line 384
    :cond_15
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 385
    .local v3, transparent:Landroid/graphics/drawable/ColorDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 386
    .local v0, background:Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 387
    .local v2, newBg:Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 388
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 389
    new-array v4, v6, [I

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v2

    .line 391
    goto :goto_5
.end method

.method private static looksLikeHtml(Ljava/lang/String;)Z
    .registers 6
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 424
    :goto_9
    return v2

    .line 420
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, v4

    .local v1, i:I
    :goto_10
    if-ltz v1, :cond_23

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 422
    .local v0, c:C
    const/16 v2, 0x3c

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x26

    if-ne v0, v2, :cond_20

    :cond_1e
    move v2, v4

    goto :goto_9

    .line 420
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .end local v0           #c:C
    :cond_23
    move v2, v3

    .line 424
    goto :goto_9
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "v"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    if-nez p2, :cond_c

    .line 457
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :goto_b
    return-void

    .line 459
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 467
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_b
.end method

.method private setViewText(Landroid/database/Cursor;Landroid/widget/TextView;IZ)V
    .registers 8
    .parameter "cursor"
    .parameter "v"
    .parameter "textCol"
    .parameter "isHtml"

    .prologue
    .line 396
    if-nez p2, :cond_3

    .line 416
    :goto_2
    return-void

    .line 399
    :cond_3
    const/4 v1, 0x0

    .line 400
    .local v1, text:Ljava/lang/CharSequence;
    if-ltz p3, :cond_16

    .line 401
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, str:Ljava/lang/String;
    if-eqz p4, :cond_25

    invoke-static {v0}, Landroid/app/SuggestionsAdapter;->looksLikeHtml(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 403
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 409
    .end local v0           #str:Ljava/lang/String;
    :cond_16
    :goto_16
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 412
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 405
    .restart local v0       #str:Ljava/lang/String;
    :cond_25
    move-object v1, v0

    goto :goto_16

    .line 414
    .end local v0           #str:Ljava/lang/String;
    :cond_27
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, -0x1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SuggestionsAdapter$ChildViewCache;

    .line 334
    .local v5, views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 337
    .local v3, pos:I
    iget v6, p0, Landroid/app/SuggestionsAdapter;->mMaxDisplayed:I

    if-le v3, v6, :cond_11

    .line 338
    iput v3, p0, Landroid/app/SuggestionsAdapter;->mMaxDisplayed:I

    .line 342
    :cond_11
    iget-boolean v6, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-eqz v6, :cond_2f

    iget v6, p0, Landroid/app/SuggestionsAdapter;->mDisplayNotifyPos:I

    if-eq v6, v8, :cond_2f

    iget v6, p0, Landroid/app/SuggestionsAdapter;->mDisplayNotifyPos:I

    if-ne v3, v6, :cond_2f

    .line 343
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v4, request:Landroid/os/Bundle;
    const-string v6, "DialogCursorProtocol.method"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    iget-object v6, p0, Landroid/app/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 346
    iput v8, p0, Landroid/app/SuggestionsAdapter;->mDisplayNotifyPos:I

    .line 349
    .end local v4           #request:Landroid/os/Bundle;
    :cond_2f
    const/4 v1, 0x0

    .line 350
    .local v1, backgroundColor:I
    iget v6, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I

    if-eq v6, v8, :cond_3a

    .line 351
    iget v6, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 353
    :cond_3a
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getItemBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget v6, p0, Landroid/app/SuggestionsAdapter;->mFormatCol:I

    if-lez v6, :cond_7e

    const-string v6, "html"

    iget v7, p0, Landroid/app/SuggestionsAdapter;->mFormatCol:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v6, 0x1

    move v2, v6

    .line 357
    .local v2, isHtml:Z
    :goto_55
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    iget v7, p0, Landroid/app/SuggestionsAdapter;->mText1Col:I

    invoke-direct {p0, p3, v6, v7, v2}, Landroid/app/SuggestionsAdapter;->setViewText(Landroid/database/Cursor;Landroid/widget/TextView;IZ)V

    .line 358
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    iget v7, p0, Landroid/app/SuggestionsAdapter;->mText2Col:I

    invoke-direct {p0, p3, v6, v7, v2}, Landroid/app/SuggestionsAdapter;->setViewText(Landroid/database/Cursor;Landroid/widget/TextView;IZ)V

    .line 360
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v6, :cond_70

    .line 361
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/app/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/app/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_70
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v6, :cond_7d

    .line 364
    iget-object v6, v5, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/app/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/app/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_7d
    return-void

    .line 356
    .end local v2           #isHtml:Z
    :cond_7e
    const/4 v6, 0x0

    move v2, v6

    goto :goto_55
.end method

.method callCursorOnClick(Landroid/database/Cursor;I)V
    .registers 8
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v4, -0x1

    .line 292
    iget-boolean v2, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v2, :cond_6

    .line 301
    :goto_5
    return-void

    .line 293
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 294
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "DialogCursorProtocol.method"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string v2, "DialogCursorProtocol.CLICK.sendPosition"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v2, "DialogCursorProtocol.CLICK.sendDisplayPosition"

    iget v3, p0, Landroid/app/SuggestionsAdapter;->mMaxDisplayed:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 298
    .local v1, response:Landroid/os/Bundle;
    iput v4, p0, Landroid/app/SuggestionsAdapter;->mMaxDisplayed:I

    .line 299
    const-string v2, "DialogCursorProtocol.CLICK.receiveSelectedPosition"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mListItemToSelect:I

    goto :goto_5
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    const-string v3, "SuggestionsAdapter"

    .line 216
    iget-boolean v2, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    if-eqz v2, :cond_13

    .line 217
    const-string v2, "SuggestionsAdapter"

    const-string v2, "Tried to change cursor after adapter was closed."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_12
    :goto_12
    return-void

    .line 223
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 224
    .local v1, oldCursor:Landroid/database/Cursor;
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 234
    if-eqz v1, :cond_23

    if-eq v1, p1, :cond_23

    .line 235
    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mCursorRespondCloseCursorBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 238
    :cond_23
    if-eqz p1, :cond_12

    .line 239
    const-string v2, "suggest_format"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mFormatCol:I

    .line 240
    const-string v2, "suggest_text_1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mText1Col:I

    .line 241
    const-string v2, "suggest_text_2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mText2Col:I

    .line 242
    const-string v2, "suggest_icon_1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    .line 243
    const-string v2, "suggest_icon_2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    .line 244
    const-string v2, "suggest_background_color"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_55} :catch_56

    goto :goto_12

    .line 246
    .end local v1           #oldCursor:Landroid/database/Cursor;
    :catch_56
    move-exception v2

    move-object v0, v2

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public close()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    .line 207
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 481
    if-nez p1, :cond_5

    move-object v3, v4

    .line 504
    :goto_4
    return-object v3

    .line 485
    :cond_5
    const-string v3, "suggest_intent_query"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_f

    move-object v3, v1

    .line 487
    goto :goto_4

    .line 490
    :cond_f
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 491
    const-string v3, "suggest_intent_data"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_21

    move-object v3, v0

    .line 493
    goto :goto_4

    .line 497
    .end local v0           #data:Ljava/lang/String;
    :cond_21
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3}, Landroid/server/search/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 498
    const-string v3, "suggest_text_1"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, text1:Ljava/lang/String;
    if-eqz v2, :cond_33

    move-object v3, v2

    .line 500
    goto :goto_4

    .end local v2           #text1:Ljava/lang/String;
    :cond_33
    move-object v3, v4

    .line 504
    goto :goto_4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 516
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v4

    .line 526
    :goto_4
    return-object v4

    .line 517
    :catch_5
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Landroid/app/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 521
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_26

    .line 522
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SuggestionsAdapter$ChildViewCache;

    .line 523
    .local v3, views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 524
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1           #tv:Landroid/widget/TextView;
    .end local v3           #views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    :cond_26
    move-object v4, v2

    .line 526
    goto :goto_4
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, v:Landroid/view/View;
    new-instance v1, Landroid/app/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/app/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 254
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroid/app/SuggestionsAdapter;->callCursorPostRefresh(Landroid/database/Cursor;)V

    .line 259
    iget v0, p0, Landroid/app/SuggestionsAdapter;->mListItemToSelect:I

    if-eq v0, v2, :cond_16

    .line 260
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    iget v1, p0, Landroid/app/SuggestionsAdapter;->mListItemToSelect:I

    invoke-virtual {v0, v1}, Landroid/app/SearchDialog;->setListSelection(I)V

    .line 261
    iput v2, p0, Landroid/app/SuggestionsAdapter;->mListItemToSelect:I

    .line 263
    :cond_16
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .parameter "constraint"

    .prologue
    .line 178
    if-nez p1, :cond_3e

    const-string v3, ""

    move-object v2, v3

    .line 179
    .local v2, query:Ljava/lang/String;
    :goto_5
    iget-boolean v3, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v3, :cond_18

    .line 185
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mStartSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_18
    :try_start_18
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/server/search/SearchableInfo;

    invoke-virtual {v3, v4, v2}, Landroid/app/SearchManager;->getSuggestions(Landroid/server/search/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, cursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v3, :cond_29

    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_62
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_29} :catch_44

    .line 197
    :cond_29
    iget-boolean v3, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v3, :cond_3c

    .line 198
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    move-object v3, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_3d
    :goto_3d
    return-object v3

    .line 178
    .end local v2           #query:Ljava/lang/String;
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_5

    .line 193
    .restart local v2       #query:Ljava/lang/String;
    :catch_44
    move-exception v3

    move-object v1, v3

    .line 194
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_46
    const-string v3, "SuggestionsAdapter"

    const-string v4, "Search suggestions query threw an exception."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_62

    .line 195
    const/4 v3, 0x0

    .line 197
    iget-boolean v4, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v4, :cond_3d

    .line 198
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v4}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3d

    .line 197
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_62
    move-exception v3

    iget-boolean v4, p0, Landroid/app/SuggestionsAdapter;->mGlobalSearchMode:Z

    if-nez v4, :cond_76

    .line 198
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v4}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_76
    throw v3
.end method
