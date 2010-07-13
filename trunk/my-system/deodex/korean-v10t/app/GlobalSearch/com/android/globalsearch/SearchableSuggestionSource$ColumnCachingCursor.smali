.class public Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;
.super Landroid/database/CursorWrapper;
.source "SearchableSuggestionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/SearchableSuggestionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnCachingCursor"
.end annotation


# static fields
.field public static final ACTION_MSG_CALL:I = 0xd

.field public static final FORMAT:I = 0x0

.field public static final ICON_1:I = 0x3

.field public static final ICON_2:I = 0x4

.field public static final INTENT_ACTION:I = 0x6

.field public static final INTENT_DATA:I = 0x7

.field public static final INTENT_DATA_ID:I = 0x8

.field public static final INTENT_EXTRA_DATA:I = 0x9

.field private static final KEY_COUNT:I = 0xe

.field public static final PIN_TO_BOTTOM:I = 0xc

.field public static final QUERY:I = 0x5

.field public static final SHORTCUT_ID:I = 0xa

.field public static final SPINNER_WHILE_REFRESHING:I = 0xb

.field public static final TEXT_1:I = 0x1

.field public static final TEXT_2:I = 0x2

.field private static final mKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIndices:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 664
    invoke-static {}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->buildKeys()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mKeys:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 10
    .parameter "cursor"
    .parameter "actionCallColumn"

    .prologue
    .line 695
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 696
    const/16 v5, 0xe

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mIndices:[I

    .line 697
    iget-object v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mIndices:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 698
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, columns:[Ljava/lang/String;
    array-length v2, v1

    .line 700
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    if-ge v3, v2, :cond_3e

    .line 701
    aget-object v0, v1, v3

    .line 702
    .local v0, col:Ljava/lang/String;
    if-nez v0, :cond_1e

    .line 700
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 703
    :cond_1e
    sget-object v5, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 704
    .local v4, key:Ljava/lang/Integer;
    if-nez v4, :cond_35

    .line 705
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 706
    iget-object v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mIndices:[I

    const/16 v6, 0xd

    aput v3, v5, v6

    goto :goto_1b

    .line 709
    :cond_35
    iget-object v5, p0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mIndices:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v3, v5, v6

    goto :goto_1b

    .line 712
    .end local v0           #col:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/Integer;
    :cond_3e
    return-void
.end method

.method private static buildKeys()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "suggest_format"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string v1, "suggest_text_1"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v1, "suggest_text_2"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v1, "suggest_icon_1"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v1, "suggest_icon_2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "suggest_intent_query"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v1, "suggest_intent_action"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v1, "suggest_intent_data"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v1, "suggest_intent_data_id"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string v1, "suggest_intent_extra_data"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v1, "suggest_shortcut_id"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v1, "suggest_spinner_while_refreshing"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "suggest_pin_to_bottom"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-object v0
.end method


# virtual methods
.method public getColumnString(I)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->mIndices:[I

    aget v0, v1, p1

    .line 722
    .local v0, col:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 723
    const/4 v1, 0x0

    .line 725
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/globalsearch/SearchableSuggestionSource$ColumnCachingCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method
