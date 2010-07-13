.class public Lcom/android/contacts/RecentCallsListActivity;
.super Landroid/app/ListActivity;
.source "RecentCallsListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecentCallsListActivity$QueryHandler;,
        Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;,
        Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;,
        Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;,
        Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    }
.end annotation


# static fields
.field static final CALLER_NAME_COLUMN_INDEX:I = 0x5

.field static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x7

.field static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x6

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x2

.field private static final DIVIDER_HOUR:I = 0xe10

.field private static final DIVIDER_MIN:I = 0x3c

.field static final DURATION_COLUMN_INDEX:I = 0x3

.field private static final FORMATTING_TYPE_INVALID:I = -0x1

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LABEL_COLUMN_INDEX:I = 0x3

.field static final MATCHED_NUMBER_COLUMN_INDEX:I = 0x4

.field private static final MENU_ITEM_DELETE:I = 0x1

.field private static final MENU_ITEM_DELETE_ALL:I = 0x2

.field private static final MENU_ITEM_VIEW_CONTACTS:I = 0x3

.field static final NAME_COLUMN_INDEX:I = 0x1

.field static final NUMBER_COLUMN_INDEX:I = 0x1

.field static final PERSON_ID_COLUMN_INDEX:I = 0x0

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_TYPE_COLUMN_INDEX:I = 0x2

.field private static final QUERY_TOKEN:I = 0x35

.field private static final TAG:Ljava/lang/String; = "RecentCallsList"

.field private static final UPDATE_TOKEN:I = 0x36

.field private static final sEditable:Landroid/text/SpannableStringBuilder;

.field private static sFormattingType:I


# instance fields
.field mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

.field private mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 165
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/android/contacts/RecentCallsListActivity;->sEditable:Landroid/text/SpannableStringBuilder;

    .line 176
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/RecentCallsListActivity;->sFormattingType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 664
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/RecentCallsListActivity;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/RecentCallsListActivity;I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/RecentCallsListActivity;->formatDuration(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private callEntry(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 1058
    if-gez p1, :cond_4

    .line 1062
    const/4 p1, 0x0

    .line 1064
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1065
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_34

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1066
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1067
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "-3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1088
    .end local v3           #number:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 1075
    .restart local v3       #number:Ljava/lang/String;
    :cond_35
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1076
    .local v0, callType:I
    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    if-eq v0, v5, :cond_47

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4b

    .line 1080
    :cond_47
    invoke-direct {p0, v3}, Lcom/android/contacts/RecentCallsListActivity;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    :cond_4b
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1084
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    invoke-virtual {p0, v2}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_34
.end method

.method private final formatDuration(I)Ljava/lang/CharSequence;
    .registers 14
    .parameter "duration"

    .prologue
    const/16 v9, 0xa

    const-string v11, ":"

    const-string v10, "0"

    .line 642
    div-int/lit16 v0, p1, 0xe10

    .line 643
    .local v0, hour:I
    rem-int/lit16 v7, p1, 0xe10

    div-int/lit8 v1, v7, 0x3c

    .line 644
    .local v1, minute:I
    rem-int/lit8 v2, p1, 0x3c

    .line 646
    .local v2, second:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, time_hour:Ljava/lang/String;
    if-ge v0, v9, :cond_2b

    .line 648
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 649
    :cond_2b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, time_min:Ljava/lang/String;
    if-ge v1, v9, :cond_48

    .line 651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 652
    :cond_48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, time_sec:Ljava/lang/String;
    if-ge v2, v9, :cond_65

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 656
    :cond_65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, summary:Ljava/lang/CharSequence;
    if-lez v0, :cond_95

    .line 658
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    :cond_95
    return-object v3
.end method

.method private formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 774
    sget v0, Lcom/android/contacts/RecentCallsListActivity;->sFormattingType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 775
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Lcom/android/contacts/RecentCallsListActivity;->sFormattingType:I

    .line 778
    :cond_f
    sget-object v0, Lcom/android/contacts/RecentCallsListActivity;->sEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 779
    sget-object v0, Lcom/android/contacts/RecentCallsListActivity;->sEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 781
    sget-object v0, Lcom/android/contacts/RecentCallsListActivity;->sEditable:Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/android/contacts/RecentCallsListActivity;->sFormattingType:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 782
    sget-object v0, Lcom/android/contacts/RecentCallsListActivity;->sEditable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "number"

    .prologue
    .line 1027
    const/4 v7, 0x0

    .line 1029
    .local v7, matchingNumber:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 1030
    .local v6, ci:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-eqz v6, :cond_2d

    sget-object v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq v6, v0, :cond_2d

    .line 1031
    iget-object v7, v6, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    .line 1049
    :cond_13
    :goto_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2c

    .line 1052
    :cond_2b
    move-object p1, v7

    .line 1054
    :cond_2c
    return-object p1

    .line 1034
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1039
    .local v8, phonesCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_13

    .line 1040
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1041
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1043
    :cond_4d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    goto :goto_13

    .line 1045
    .end local v8           #phonesCursor:Landroid/database/Cursor;
    :catch_51
    move-exception v0

    goto :goto_13
.end method

.method private resetNewCallsFlag()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 787
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    const-string v0, " AND new=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 792
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    const/16 v1, 0x36

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method private startQuery()V
    .registers 9

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 798
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->cancelOperation(I)V

    .line 802
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/RecentCallsListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 954
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_12

    .line 960
    .local v2, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_30

    .line 970
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local v2           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_11
    return v3

    .line 955
    :catch_12
    move-exception v3

    move-object v1, v3

    .line 956
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "RecentCallsList"

    const-string v4, "bad menuInfoIn"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    const/4 v3, 0x0

    goto :goto_11

    .line 962
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_1d
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 963
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2d

    .line 964
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 965
    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    .line 967
    :cond_2d
    const/4 v3, 0x1

    goto :goto_11

    .line 960
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 690
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setContentView(I)V

    .line 693
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setDefaultKeyMode(I)V

    .line 695
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;-><init>(Lcom/android/contacts/RecentCallsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    .line 696
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 697
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 699
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 701
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mQueryHandler:Lcom/android/contacts/RecentCallsListActivity$QueryHandler;

    .line 704
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/RecentCallsListActivity;->sFormattingType:I

    .line 705
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 28
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 827
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v11, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_b9

    .line 833
    .local v11, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    move-object/from16 v17, v0

    move-object v0, v11

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 835
    .local v6, cursor:Landroid/database/Cursor;
    const/16 v17, 0x1

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 837
    .local v13, number:Ljava/lang/String;
    const/16 v17, 0x5

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 838
    .local v12, name:Ljava/lang/String;
    const/16 v17, 0x6

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 841
    .local v16, type:I
    const/4 v14, 0x0

    .line 842
    .local v14, numberUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 846
    .local v10, isVoicemail:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c7

    .line 847
    const v17, 0x7f060121

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 849
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    const-string v18, "tel"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 850
    .local v9, intent:Landroid/content/Intent;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060067

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 853
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const v20, 0x7f06006a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 926
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #isVoicemail:Z
    .end local v11           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #numberUri:Landroid/net/Uri;
    .end local v16           #type:I
    :goto_b8
    return-void

    .line 828
    :catch_b9
    move-exception v7

    .line 829
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v17, "RecentCallsList"

    const-string v18, "bad menuInfoIn"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b8

    .line 860
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #isVoicemail:Z
    .restart local v11       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #number:Ljava/lang/String;
    .restart local v14       #numberUri:Landroid/net/Uri;
    .restart local v16       #type:I
    :cond_c7
    const-string v17, "-1"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_245

    .line 861
    const v17, 0x7f06006f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 878
    :goto_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getContactInfo(Ljava/lang/String;)Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    move-result-object v8

    .line 879
    .local v8, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-eqz v8, :cond_2a7

    sget-object v17, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    move-object v0, v8

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2a7

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 880
    .local v5, contactInfoPresent:Z
    :goto_f7
    if-eqz v5, :cond_2ad

    .line 881
    move-object v0, v8

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 886
    :goto_105
    if-eqz v14, :cond_143

    .line 887
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 888
    .restart local v9       #intent:Landroid/content/Intent;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060067

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 892
    .end local v9           #intent:Landroid/content/Intent;
    :cond_143
    if-eqz v5, :cond_171

    .line 893
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f06000d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    sget-object v20, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    iget-wide v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->personId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 898
    :cond_171
    if-eqz v14, :cond_1c9

    if-nez v10, :cond_1c9

    .line 899
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f060068

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.DIAL"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 901
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f060066

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.SENDTO"

    const-string v20, "sms"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 905
    :cond_1c9
    if-nez v5, :cond_218

    if-eqz v14, :cond_218

    if-nez v10, :cond_218

    .line 906
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.INSERT_OR_EDIT"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v17, "vnd.android.cursor.item/person"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v17, "phone"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const/16 v17, 0x3e7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1fb

    .line 911
    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    :cond_1fb
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f060069

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 917
    .end local v9           #intent:Landroid/content/Intent;
    :cond_218
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v15

    .line 918
    .local v15, operatorCode:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2b5

    .line 919
    const-string v17, "ORG"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2b5

    .line 920
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const v20, 0x7f06011e

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_b8

    .line 862
    .end local v5           #contactInfoPresent:Z
    .end local v8           #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    .end local v15           #operatorCode:Ljava/lang/String;
    :cond_245
    const-string v17, "-2"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25d

    .line 863
    const v17, 0x7f060070

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_dd

    .line 864
    :cond_25d
    const-string v17, "-3"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_275

    .line 865
    const v17, 0x7f060071

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_dd

    .line 868
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_298

    .line 870
    const v17, 0x7f06006e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 871
    const-string v17, "voicemail:x"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 872
    const/4 v10, 0x1

    goto/16 :goto_dd

    .line 875
    :cond_298
    const-string v17, "tel"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_dd

    .line 879
    .restart local v8       #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    :cond_2a7
    const/16 v17, 0x0

    move/from16 v5, v17

    goto/16 :goto_f7

    .line 883
    .restart local v5       #contactInfoPresent:Z
    :cond_2ad
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_105

    .line 925
    .restart local v15       #operatorCode:Ljava/lang/String;
    :cond_2b5
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const v20, 0x7f06006a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_b8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x1080038

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 809
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, operatorCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 811
    const-string v1, "ORG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 812
    const v1, 0x7f06011f

    invoke-interface {p1, v2, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v3

    .line 820
    :goto_23
    return v1

    .line 818
    :cond_24
    const v1, 0x7f06006b

    invoke-interface {p1, v2, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v3

    .line 820
    goto :goto_23
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 733
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 734
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->stopRequestProcessing()V

    .line 735
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 736
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_19

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_19
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 975
    sparse-switch p1, :sswitch_data_32

    .line 993
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_8
    return v3

    .line 977
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 978
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2d

    .line 980
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 983
    :try_start_28
    invoke-virtual {p0, v2}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2f

    :goto_2b
    move v3, v7

    .line 986
    goto :goto_8

    .end local v0           #callPressDiff:J
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2d
    :sswitch_2d
    move v3, v7

    .line 991
    goto :goto_8

    .line 984
    .restart local v0       #callPressDiff:J
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2f
    move-exception v3

    goto :goto_2b

    .line 975
    nop

    :sswitch_data_32
    .sparse-switch
        0x5 -> :sswitch_9
        0x42 -> :sswitch_2d
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 998
    packed-switch p1, :pswitch_data_2a

    .line 1014
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_7
    return v1

    .line 1001
    :pswitch_8
    :try_start_8
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1003
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_27

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity;->callEntry(I)V

    .line 1012
    const/4 v1, 0x1

    goto :goto_7

    .line 1007
    :catch_27
    move-exception v1

    goto :goto_1a

    .line 998
    nop

    :pswitch_data_2a
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1092
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1093
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1095
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 930
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    .line 946
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_d
    return v1

    .line 932
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 935
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->startQuery()V

    move v1, v3

    .line 936
    goto :goto_d

    .line 940
    :pswitch_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 941
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0, v0}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 943
    goto :goto_d

    .line 930
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_e
        :pswitch_1c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 725
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 728
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->stopRequestProcessing()V

    .line 729
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    if-eqz v0, :cond_9

    .line 712
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->clearCache()V

    .line 715
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->startQuery()V

    .line 716
    invoke-direct {p0}, Lcom/android/contacts/RecentCallsListActivity;->resetNewCallsFlag()V

    .line 718
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 720
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 721
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasFocus"

    .prologue
    const-string v4, "RecentCallsList"

    .line 743
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onWindowFocusChanged(Z)V

    .line 747
    if-eqz p1, :cond_16

    .line 749
    :try_start_7
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 751
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 752
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 761
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    :goto_16
    return-void

    .line 754
    .restart local v1       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_17
    const-string v2, "RecentCallsList"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_16

    .line 757
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_1f
    move-exception v2

    move-object v0, v2

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "RecentCallsList"

    const-string v2, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
