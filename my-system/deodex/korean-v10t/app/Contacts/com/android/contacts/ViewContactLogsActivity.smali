.class public Lcom/android/contacts/ViewContactLogsActivity;
.super Landroid/app/ListActivity;
.source "ViewContactLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;,
        Lcom/android/contacts/ViewContactLogsActivity$ViewCache;,
        Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(number,?)"

.field static final COLUMN_EMAIL_ADDRESS:I = 0x3

.field static final COLUMN_EMAIL_ISPRIMARY:I = 0x4

.field static final COLUMN_EMAIL_KIND:I = 0x2

.field static final COLUMN_EMAIL_NAME:I = 0x1

.field static final COLUMN_EMAIL_PERSON_ID:I = 0x0

.field static final COLUMN_PHONE_ISPRIMARY:I = 0x5

.field static final COLUMN_PHONE_LABEL:I = 0x3

.field static final COLUMN_PHONE_NAME:I = 0x1

.field static final COLUMN_PHONE_NUMBER:I = 0x4

.field static final COLUMN_PHONE_PERSON_ID:I = 0x0

.field static final COLUMN_PHONE_TYPE:I = 0x2

.field static final COLUMN_SNSID_LABEL:I = 0x1

.field static final COLUMN_SNSID_PERSON_ID:I = 0x0

.field static final COLUMN_SNSID_SNSID:I = 0x2

.field static final COLUMN_SNSID_USERID:I = 0x3

.field private static final CONTACT_METHOD_SELECTION:Ljava/lang/String; = "data=?"

.field private static final CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field static final DIALOG_LOADING_ENTRIES:I = 0x1

.field private static final DISPLAY_LOG_TYPE_ALL_INDEX:I = 0x0

.field private static final DISPLAY_LOG_TYPE_CALL_INDEX:I = 0x1

.field private static final DISPLAY_LOG_TYPE_MSG_INDEX:I = 0x2

.field private static final DISPLAY_LOG_TYPE_SNS_INDEX:I = 0x3

.field static final EMAILS_PROJECTION:[Ljava/lang/String; = null

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final HANDLER_MESSAGE_CALL_LOADING:I = 0x1

.field private static final HANDLER_MESSAGE_LOADING_FINISH:I = 0x5

.field private static final HANDLER_MESSAGE_LOADING_STOP:I = 0x4

.field private static final HANDLER_MESSAGE_MSG_LOADING:I = 0x2

.field private static final HANDLER_MESSAGE_SNS_LOADING:I = 0x3

.field private static final MENU_ITEM_DISPLAY_LOG:I = 0x2

.field private static final MENU_ITEM_REFRESH:I = 0x1

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field static final SNIDS_PROJECTION:[Ljava/lang/String; = null

.field static final SORT_ORDER_ASCENDING:I = 0x1

.field static final SORT_ORDER_DESCENDING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewContactLogActivity"


# instance fields
.field private MANAGE_SOCIAL_NETWORK:Z

.field private mActionHandler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;

.field private mDisplayLogType:I

.field mEmailWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSystemContact:Z

.field private mJustCreated:Z

.field mLogEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaveDisplayLogType:I

.field private mSelectDisplayLog:Landroid/content/DialogInterface$OnClickListener;

.field mSnsIdWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x6

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

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ViewContactLogsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "kind"

    aput-object v1, v0, v5

    const-string v1, "data"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/ViewContactLogsActivity;->EMAILS_PROJECTION:[Ljava/lang/String;

    .line 136
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "sns_id"

    aput-object v1, v0, v5

    const-string v1, "user_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/ViewContactLogsActivity;->SNIDS_PROJECTION:[Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "with_presence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactLogsActivity;->CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_with_presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ViewContactLogsActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    .line 181
    iput v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    .line 182
    iput v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSaveDisplayLogType:I

    .line 389
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ViewContactLogsActivity$1;-><init>(Lcom/android/contacts/ViewContactLogsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSelectDisplayLog:Landroid/content/DialogInterface$OnClickListener;

    .line 922
    return-void
.end method

.method private Sort(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, Array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 827
    .local v1, imax:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_5f

    .line 828
    const/4 v4, 0x1

    sub-int v2, v1, v4

    .local v2, j:I
    :goto_a
    if-lt v2, v0, :cond_5c

    .line 829
    packed-switch p2, :pswitch_data_60

    .line 828
    :cond_f
    :goto_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 831
    :pswitch_12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    iget-wide v4, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    iget-wide v6, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_f

    .line 832
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    .line 833
    .local v3, temp:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 838
    .end local v3           #temp:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :pswitch_37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    iget-wide v4, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    iget-wide v6, p0, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    .line 839
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    .line 840
    .restart local v3       #temp:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 827
    .end local v3           #temp:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 847
    .end local v2           #j:I
    :cond_5f
    return-object p1

    .line 829
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_12
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/contacts/ViewContactLogsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSaveDisplayLogType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/ViewContactLogsActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSaveDisplayLogType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/ViewContactLogsActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->dataChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/ViewContactLogsActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/ViewContactLogsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ViewContactLogsActivity;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ViewContactLogsActivity;->sendMessageToHandler(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildCallEntries()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/ViewContactLogsActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/ViewContactLogsActivity;->sendMessageToHandler(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildMessageEntries()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/ViewContactLogsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->MANAGE_SOCIAL_NETWORK:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildSnsEntries()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ViewContactLogsActivity;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ViewContactLogsActivity;->Sort(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final buildCallEntries()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v3, ")"

    .line 607
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 608
    .local v10, imax:I
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    if-nez v0, :cond_fa

    if-lez v10, :cond_fa

    .line 609
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v6, callWhere:Ljava/lang/StringBuilder;
    if-lez v10, :cond_71

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const/4 v9, 0x1

    .local v9, i:I
    :goto_44
    if-ge v9, v10, :cond_71

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OR PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    .line 620
    .end local v9           #i:I
    :cond_71
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/LogEntryAdapter;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 624
    .local v7, callsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_fa

    .line 626
    :goto_83
    :try_start_83
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 627
    new-instance v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 628
    .local v8, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 629
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 630
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 631
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    if-nez v0, :cond_de

    .line 632
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 633
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 643
    :goto_b0
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->callDuration:J

    .line 644
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 646
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 648
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d8
    .catchall {:try_start_83 .. :try_end_d8} :catchall_d9

    goto :goto_83

    .line 651
    .end local v8           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :catchall_d9
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 635
    .restart local v8       #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    :cond_de
    const/4 v0, 0x4

    :try_start_df
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 636
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 637
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 638
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    goto :goto_b0

    .line 640
    :cond_f4
    iput-object v11, v8, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;
    :try_end_f6
    .catchall {:try_start_df .. :try_end_f6} :catchall_d9

    goto :goto_b0

    .line 651
    .end local v8           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    .end local v11           #name:Ljava/lang/String;
    :cond_f7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 655
    .end local v6           #callWhere:Ljava/lang/StringBuilder;
    .end local v7           #callsCursor:Landroid/database/Cursor;
    :cond_fa
    return-void
.end method

.method private buildData()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, message:I
    iget v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    if-ne v1, v3, :cond_15

    .line 277
    const/4 v0, 0x1

    .line 283
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/contacts/ViewContactLogsActivity;->showDialog(I)V

    .line 285
    iget v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->sendMessageToHandler(II)V

    .line 286
    return-void

    .line 278
    :cond_15
    iget v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 279
    const/4 v0, 0x2

    goto :goto_7

    .line 280
    :cond_1c
    iget v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 281
    const/4 v0, 0x3

    goto :goto_7
.end method

.method private final buildMessageEntries()V
    .registers 27

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v15, v4, v5

    .line 660
    .local v15, imax:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    move v4, v0

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    move v4, v0

    if-nez v4, :cond_267

    if-lez v15, :cond_267

    .line 661
    :cond_24
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v22, smsmmsWhere:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 664
    if-lez v15, :cond_97

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_NUMBERS_EQUAL(address,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const/4 v14, 0x1

    .local v14, i:I
    :goto_64
    if-ge v14, v15, :cond_97

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR PHONE_NUMBERS_EQUAL(address,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    add-int/lit8 v14, v14, 0x1

    goto :goto_64

    .line 672
    .end local v14           #i:I
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 673
    if-lez v15, :cond_100

    .line 674
    const/4 v14, 0x0

    .line 675
    .restart local v14       #i:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_d3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const/4 v14, 0x1

    .line 679
    :cond_d3
    :goto_d3
    if-ge v14, v15, :cond_100

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    add-int/lit8 v14, v14, 0x1

    goto :goto_d3

    .line 683
    .end local v14           #i:I
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "/messages/byphones"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/LogEntryAdapter;->MSG_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "date DESC, date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 688
    .local v19, msgsCursor:Landroid/database/Cursor;
    if-eqz v19, :cond_267

    .line 698
    :cond_11c
    :goto_11c
    :try_start_11c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_264

    .line 699
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 700
    .local v24, threadId:J
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 701
    .local v18, msgType:Ljava/lang/String;
    const-string v4, "sms"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_201

    .line 702
    const/16 v16, 0x1

    .line 703
    .local v16, kind:I
    const/4 v4, 0x7

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 704
    .local v17, msgBoxType:I
    const/4 v4, 0x1

    move/from16 v0, v17

    move v1, v4

    if-eq v0, v1, :cond_153

    const/4 v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_11c

    .line 706
    :cond_153
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 707
    .local v10, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    move v4, v0

    if-eqz v4, :cond_171

    .line 708
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 709
    .local v20, name:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_171

    .line 710
    move-object/from16 v10, v20

    .line 713
    .end local v20           #name:Ljava/lang/String;
    :cond_171
    const/4 v4, 0x4

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 714
    .local v23, subject:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 718
    .local v11, date:J
    const/4 v4, 0x6

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1fd

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 742
    .local v21, read:Z
    :goto_18e
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ViewContactLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 746
    :cond_19f
    new-instance v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    invoke-direct {v13}, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;-><init>()V

    .line 747
    .local v13, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    move-wide/from16 v0, v24

    move-object v2, v13

    iput-wide v0, v2, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    .line 748
    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    .line 749
    move/from16 v0, v16

    move-object v1, v13

    iput v0, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->kind:I

    .line 750
    iput-object v10, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->address:Ljava/lang/String;

    .line 751
    move-object/from16 v0, v23

    move-object v1, v13

    iput-object v0, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->snippet:Ljava/lang/String;

    .line 752
    iput-wide v11, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->date:J

    .line 753
    move/from16 v0, v21

    move-object v1, v13

    iput-boolean v0, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->read:Z

    .line 754
    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->typeIcon:I

    .line 755
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 756
    iget-object v4, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "thread_id"

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 757
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1ee

    .line 758
    iget-object v4, v13, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    const-string v5, "address"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f6
    .catchall {:try_start_11c .. :try_end_1f6} :catchall_1f8

    goto/16 :goto_11c

    .line 763
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #date:J
    .end local v13           #entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    .end local v16           #kind:I
    .end local v17           #msgBoxType:I
    .end local v18           #msgType:Ljava/lang/String;
    .end local v21           #read:Z
    .end local v23           #subject:Ljava/lang/String;
    .end local v24           #threadId:J
    :catchall_1f8
    move-exception v4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 718
    .restart local v10       #address:Ljava/lang/String;
    .restart local v11       #date:J
    .restart local v16       #kind:I
    .restart local v17       #msgBoxType:I
    .restart local v18       #msgType:Ljava/lang/String;
    .restart local v23       #subject:Ljava/lang/String;
    .restart local v24       #threadId:J
    :cond_1fd
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_18e

    .line 723
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #date:J
    .end local v16           #kind:I
    .end local v17           #msgBoxType:I
    .end local v23           #subject:Ljava/lang/String;
    :cond_201
    const/16 v16, 0x2

    .line 724
    .restart local v16       #kind:I
    const/16 v4, 0xc

    :try_start_205
    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 725
    .restart local v17       #msgBoxType:I
    const/4 v4, 0x1

    move/from16 v0, v17

    move v1, v4

    if-eq v0, v1, :cond_218

    const/4 v4, 0x2

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_11c

    .line 727
    :cond_218
    const/16 v4, 0xf

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 728
    .restart local v10       #address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    move v4, v0

    if-eqz v4, :cond_237

    .line 729
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 730
    .restart local v20       #name:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_237

    .line 731
    move-object/from16 v10, v20

    .line 734
    .end local v20           #name:Ljava/lang/String;
    :cond_237
    const/16 v4, 0x8

    const/16 v5, 0x9

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ViewContactLogsActivity;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v23

    .line 736
    .restart local v23       #subject:Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v11, v4, v6

    .line 737
    .restart local v11       #date:J
    const/16 v4, 0xb

    move-object/from16 v0, v19

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_258
    .catchall {:try_start_205 .. :try_end_258} :catchall_1f8

    move-result v4

    if-eqz v4, :cond_260

    const/4 v4, 0x1

    move/from16 v21, v4

    .restart local v21       #read:Z
    :goto_25e
    goto/16 :goto_18e

    .end local v21           #read:Z
    :cond_260
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_25e

    .line 763
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #date:J
    .end local v16           #kind:I
    .end local v17           #msgBoxType:I
    .end local v18           #msgType:Ljava/lang/String;
    .end local v23           #subject:Ljava/lang/String;
    .end local v24           #threadId:J
    :cond_264
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 767
    .end local v19           #msgsCursor:Landroid/database/Cursor;
    .end local v22           #smsmmsWhere:Ljava/lang/StringBuilder;
    :cond_267
    return-void
.end method

.method private final buildSnsEntries()V
    .registers 4

    .prologue
    .line 772
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v1, :cond_22

    .line 773
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 774
    .local v0, imax:I
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    if-nez v1, :cond_22

    if-lez v0, :cond_22

    .line 775
    :cond_14
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-static {p0, v1, v2}, Lcom/android/contacts/LinkbookAsyncHelper;->loadMessages(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 776
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-static {p0, v1, v2}, Lcom/android/contacts/LinkbookAsyncHelper;->loadFeeds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 779
    .end local v0           #imax:I
    :cond_22
    return-void
.end method

.method private clearMessagesInHandler()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 490
    :goto_4
    return-void

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4
.end method

.method private creatActionDialogHandler()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 478
    :goto_4
    return-void

    .line 434
    :cond_5
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ViewContactLogsActivity$2;-><init>(Lcom/android/contacts/ViewContactLogsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    goto :goto_4
.end method

.method private dataChanged()V
    .registers 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mAdapter:Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;->notifyDataSetChanged()V

    .line 504
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 505
    .local v0, emptyText:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_28
    return-void

    .line 509
    :cond_29
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .registers 7
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 785
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 788
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 789
    const-string v2, ""

    .line 793
    :goto_10
    return-object v2

    .line 790
    :cond_11
    if-nez v0, :cond_15

    move-object v2, v1

    .line 791
    goto :goto_10

    .line 793
    :cond_15
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method public static final formatDuration(I)Ljava/lang/CharSequence;
    .registers 15
    .parameter "duration"

    .prologue
    const/16 v11, 0xa

    const-string v13, ":"

    const-string v12, "0"

    .line 799
    const/16 v0, 0xe10

    .line 800
    .local v0, DIVIDER_HOUR:I
    const/16 v1, 0x3c

    .line 802
    .local v1, DIVIDER_MIN:I
    div-int/lit16 v2, p0, 0xe10

    .line 803
    .local v2, hour:I
    rem-int/lit16 v9, p0, 0xe10

    div-int/lit8 v3, v9, 0x3c

    .line 804
    .local v3, minute:I
    rem-int/lit8 v4, p0, 0x3c

    .line 806
    .local v4, second:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, time_hour:Ljava/lang/String;
    if-ge v2, v11, :cond_2f

    .line 808
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 809
    :cond_2f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, time_min:Ljava/lang/String;
    if-ge v3, v11, :cond_4c

    .line 811
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 812
    :cond_4c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, time_sec:Ljava/lang/String;
    if-ge v4, v11, :cond_69

    .line 814
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 816
    :cond_69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, summary:Ljava/lang/CharSequence;
    if-lez v2, :cond_99

    .line 818
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 820
    :cond_99
    return-object v5
.end method

.method private getContactName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    .line 852
    if-nez p1, :cond_5

    move-object v0, v7

    .line 897
    :cond_4
    :goto_4
    return-object v0

    .line 856
    :cond_5
    const/4 v6, 0x0

    .line 859
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_6
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 860
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 861
    .local v4, emailArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 862
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/ViewContactLogsActivity;->CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 867
    if-eqz v6, :cond_79

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 869
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_80

    move-result-object v0

    .line 892
    if-eqz v6, :cond_4

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 873
    .end local v4           #emailArgs:[Ljava/lang/String;
    :cond_38
    const/4 v0, 0x1

    :try_start_39
    new-array v4, v0, [Ljava/lang/String;

    .line 874
    .restart local v4       #emailArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 875
    const-string v0, "+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_80

    move-result-object p1

    .line 876
    if-nez p1, :cond_50

    .line 892
    if-eqz v6, :cond_4e

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move-object v0, v7

    goto :goto_4

    .line 879
    :cond_50
    const/4 v0, 0x0

    :try_start_51
    aput-object p1, v4, v0

    .line 880
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/contacts/ViewContactLogsActivity;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "number"

    aput-object v5, v2, v3

    const-string v3, "PHONE_NUMBERS_EQUAL(number,?)"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 885
    if-eqz v6, :cond_79

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 887
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_80

    move-result-object v0

    .line 892
    if-eqz v6, :cond_4

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 892
    :cond_79
    if-eqz v6, :cond_7e

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7e
    move-object v0, v7

    .line 897
    goto :goto_4

    .line 892
    .end local v4           #emailArgs:[Ljava/lang/String;
    :catchall_80
    move-exception v0

    if-eqz v6, :cond_86

    .line 893
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_86
    throw v0
.end method

.method private final makeContactMethods()Z
    .registers 21

    .prologue
    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    move v2, v0

    if-nez v2, :cond_128

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    move-object v2, v0

    const-string v3, "phones"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 523
    .local v3, phonesUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v2, v0

    sget-object v4, Lcom/android/contacts/ViewContactLogsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "isprimary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 527
    .local v16, phonesCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7d

    .line 530
    .end local v3           #phonesUri:Landroid/net/Uri;
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 531
    const/4 v2, 0x4

    move-object/from16 v0, v16

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 532
    .local v15, number:Ljava/lang/String;
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 533
    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 534
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 542
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatchEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 543
    .local v14, minNumber:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_3b .. :try_end_74} :catchall_75

    goto :goto_3b

    .line 549
    .end local v14           #minNumber:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :catchall_75
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_7a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    move-object v2, v0

    const-string v3, "contact_methods"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 555
    .local v5, emailsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v6, Lcom/android/contacts/ViewContactLogsActivity;->EMAILS_PROJECTION:[Ljava/lang/String;

    const-string v7, "kind=1"

    const/4 v8, 0x0

    const-string v9, "isprimary DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 559
    .local v13, emailsCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_bc

    .line 562
    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 563
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 564
    .local v12, email:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_9a .. :try_end_b3} :catchall_b4

    goto :goto_9a

    .line 570
    .end local v12           #email:Ljava/lang/String;
    :catchall_b4
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_bc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->MANAGE_SOCIAL_NETWORK:Z

    move v2, v0

    if-eqz v2, :cond_106

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    move-object v2, v0

    const-string v3, "sns_ids"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 577
    .local v7, snIdsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v8, Lcom/android/contacts/ViewContactLogsActivity;->SNIDS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 580
    .local v18, snIdsCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_106

    .line 583
    :cond_de
    :goto_de
    :try_start_de
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 584
    const/4 v2, 0x3

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 585
    .local v17, snId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_de

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catchall {:try_start_de .. :try_end_fd} :catchall_fe

    goto :goto_de

    .line 591
    .end local v17           #snId:Ljava/lang/String;
    :catchall_fe
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_103
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 597
    .end local v7           #snIdsUri:Landroid/net/Uri;
    .end local v18           #snIdsCursor:Landroid/database/Cursor;
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mPhoneWhereArgs:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mEmailWhereArgs:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactLogsActivity;->mSnsIdWhereArgs:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v19, v2, v3

    .line 598
    .local v19, tatalNumAddress:I
    if-nez v19, :cond_128

    .line 599
    const/4 v2, 0x0

    .line 602
    .end local v5           #emailsUri:Landroid/net/Uri;
    .end local v13           #emailsCursor:Landroid/database/Cursor;
    .end local v16           #phonesCursor:Landroid/database/Cursor;
    .end local v19           #tatalNumAddress:I
    :goto_127
    return v2

    :cond_128
    const/4 v2, 0x1

    goto :goto_127
.end method

.method private sendMessageToHandler(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method

.method private sendMessageToHandler(II)V
    .registers 5
    .parameter "msgId"
    .parameter "arg1"

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 292
    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method private setDisplayLogTypes()[Ljava/lang/String;
    .registers 8

    .prologue
    const v6, 0x7f060062

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    iget-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->MANAGE_SOCIAL_NETWORK:Z

    if-eqz v0, :cond_30

    .line 416
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0600f2

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v6}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0600f4

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0600fb

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 422
    :goto_2f
    return-object v0

    :cond_30
    new-array v0, v5, [Ljava/lang/String;

    const v1, 0x7f0600f2

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v6}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0600f4

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_2f
.end method

.method private signalError()V
    .registers 1

    .prologue
    .line 498
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-static {p0}, Lcom/android/contacts/FlexibleOptionHelper;->isLinkbookEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->MANAGE_SOCIAL_NETWORK:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    .line 197
    iput-boolean v7, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    .line 198
    iput-boolean v8, p0, Lcom/android/contacts/ViewContactLogsActivity;->mJustCreated:Z

    .line 200
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactLogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    .line 209
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactLogsActivity;->setContentView(I)V

    .line 213
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "system_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 215
    const-string v0, "My profile"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 216
    iput-boolean v8, p0, Lcom/android/contacts/ViewContactLogsActivity;->mIsSystemContact:Z

    .line 218
    :cond_5a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->creatActionDialogHandler()V

    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 230
    new-instance v0, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;

    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;-><init>(Lcom/android/contacts/ViewContactLogsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mAdapter:Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;

    .line 231
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity;->mAdapter:Lcom/android/contacts/ViewContactLogsActivity$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ViewContactLogsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    :goto_75
    return-void

    .line 220
    :cond_76
    const-string v0, "ViewContactLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactLogsActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->finish()V

    goto :goto_75
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 340
    packed-switch p1, :pswitch_data_1a

    .line 349
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 342
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 344
    const v1, 0x7f0600b0

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 346
    goto :goto_4

    .line 340
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x1

    const v1, 0x7f0600f1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 359
    const/4 v0, 0x2

    const v1, 0x7f0600f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 362
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 303
    iget-object v3, p0, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;

    .line 304
    .local v1, entry:Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;
    if-eqz v1, :cond_33

    .line 305
    iget-object v2, v1, Lcom/android/contacts/ViewContactLogsActivity$ViewEntry;->intent:Landroid/content/Intent;

    .line 306
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2f

    .line 308
    :try_start_e
    invoke-virtual {p0, v2}, Lcom/android/contacts/ViewContactLogsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_11} :catch_12

    .line 319
    .end local v2           #intent:Landroid/content/Intent;
    :goto_11
    return-void

    .line 309
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_12
    move-exception v0

    .line 310
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ViewContactLogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->signalError()V

    goto :goto_11

    .line 314
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2f
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->signalError()V

    goto :goto_11

    .line 317
    .end local v2           #intent:Landroid/content/Intent;
    :cond_33
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->signalError()V

    goto :goto_11
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 368
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_40

    .line 385
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 370
    :pswitch_a
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->makeContactMethods()Z

    .line 371
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildData()V

    move v2, v5

    .line 372
    goto :goto_9

    .line 375
    :pswitch_12
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->setDisplayLogTypes()[Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, arrayData:[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600f0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/ViewContactLogsActivity;->mDisplayLogType:I

    iget-object v4, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSelectDisplayLog:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    iget-object v4, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSelectDisplayLog:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    iget-object v4, p0, Lcom/android/contacts/ViewContactLogsActivity;->mSelectDisplayLog:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 382
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v5

    .line 383
    goto :goto_9

    .line 368
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method protected onRestart()V
    .registers 4

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 256
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->makeContactMethods()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 257
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildData()V

    .line 263
    :goto_c
    return-void

    .line 259
    :cond_d
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    .local v0, emptyText:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 239
    iget-boolean v1, p0, Lcom/android/contacts/ViewContactLogsActivity;->mJustCreated:Z

    if-eqz v1, :cond_11

    .line 240
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->makeContactMethods()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 241
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->buildData()V

    .line 248
    :cond_11
    :goto_11
    iput-boolean v3, p0, Lcom/android/contacts/ViewContactLogsActivity;->mJustCreated:Z

    .line 249
    return-void

    .line 243
    :cond_14
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    .local v0, emptyText:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/ViewContactLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 270
    invoke-direct {p0}, Lcom/android/contacts/ViewContactLogsActivity;->clearMessagesInHandler()V

    .line 271
    return-void
.end method
