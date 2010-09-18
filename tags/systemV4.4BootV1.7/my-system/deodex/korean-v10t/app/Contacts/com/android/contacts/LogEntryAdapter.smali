.class public abstract Lcom/android/contacts/LogEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/LogEntryAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/contacts/LogEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field static final CALL_CACHED_NAME_COLUMN:I = 0x8

.field static final CALL_CACHED_NUMBER_LABEL_COLUMN:I = 0xa

.field static final CALL_CACHED_NUMBER_TYPE_COLUMN:I = 0x9

.field static final CALL_DATE_COLUMN:I = 0x5

.field static final CALL_DURATION_COLUMN:I = 0x6

.field static final CALL_ID_COLUMN:I = 0x0

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_NAME_COLUMN:I = 0x1

.field static final CALL_NUMBER_COLUMN:I = 0x4

.field static final CALL_NUM_LABEL_COLUMN:I = 0x3

.field static final CALL_NUM_TYPE_COLUMN:I = 0x2

.field static final CALL_TYPE_COLUMN:I = 0x7

.field static final COLUMN_MESSAGE_ID:I = 0x1

.field static final COLUMN_MESSAGE_TYPE:I = 0x0

.field static final COLUMN_MMS_ADDRESS:I = 0xf

.field static final COLUMN_MMS_DATE:I = 0xa

.field static final COLUMN_MMS_READ:I = 0xb

.field static final COLUMN_MMS_SUBJECT:I = 0x8

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x9

.field static final COLUMN_MMS_TYPE:I = 0xc

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x7

.field static final COLUMN_THREAD_ID:I = 0x2

.field static final KIND_ACTIVITY_CALL:I = 0x0

.field static final KIND_ACTIVITY_EMAIL:I = 0x3

.field static final KIND_ACTIVITY_INVALID:I = -0x1

.field static final KIND_ACTIVITY_MMS:I = 0x2

.field static final KIND_ACTIVITY_SMS:I = 0x1

.field static final KIND_ACTIVITY_SNS_FEED:I = 0x5

.field static final KIND_ACTIVITY_SNS_MESSAGE:I = 0x4

.field static final MSG_SEARCH_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "name"

    const-string v3, "date"

    .line 31
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v4, v0, v6

    const-string v1, "numbertype"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/LogEntryAdapter;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "name"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/LogEntryAdapter;->MSG_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/contacts/LogEntryAdapter;->mContext:Landroid/content/Context;

    .line 138
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/LogEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    iput-object p2, p0, Lcom/android/contacts/LogEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 140
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Lcom/android/contacts/LogEntryAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 143
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/LogEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/LogEntryAdapter$Entry;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/LogEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    check-cast p0, Lcom/android/contacts/LogEntryAdapter$Entry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/LogEntryAdapter;->getItem(I)Lcom/android/contacts/LogEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 151
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/android/contacts/LogEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 152
    iget-object v1, p0, Lcom/android/contacts/LogEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/LogEntryAdapter$Entry;

    .line 153
    .local v0, entry:Lcom/android/contacts/LogEntryAdapter$Entry;
    if-eqz v0, :cond_15

    .line 154
    iget-wide v1, v0, Lcom/android/contacts/LogEntryAdapter$Entry;->id:J

    .line 157
    .end local v0           #entry:Lcom/android/contacts/LogEntryAdapter$Entry;
    :goto_14
    return-wide v1

    :cond_15
    const-wide/16 v1, -0x1

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 162
    .local p0, this:Lcom/android/contacts/LogEntryAdapter;,"Lcom/android/contacts/LogEntryAdapter<TE;>;"
    if-nez p2, :cond_e

    .line 163
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/LogEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, v:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/contacts/LogEntryAdapter;->getItem(I)Lcom/android/contacts/LogEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/LogEntryAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/LogEntryAdapter$Entry;)V

    .line 168
    return-object v0

    .line 165
    .end local v0           #v:Landroid/view/View;
    :cond_e
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_6
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method
