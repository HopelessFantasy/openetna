.class public abstract Lcom/android/contacts/ContactEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactEntryAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/contacts/ContactEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field public static final CONTACT_CUSTOM_RINGTONE_COLUMN:I = 0x7

.field public static final CONTACT_ID_COLUMN:I = 0x1

.field public static final CONTACT_NAME_COLUMN:I = 0x2

.field public static final CONTACT_NOTES_COLUMN:I = 0x3

.field public static final CONTACT_PHONETIC_NAME_COLUMN:I = 0x9

.field public static final CONTACT_PREFERRED_PHONE_COLUMN:I = 0x4

.field public static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACT_SEND_TO_VOICEMAIL_COLUMN:I = 0x8

.field public static final CONTACT_SERVER_STATUS_COLUMN:I = 0x5

.field public static final CONTACT_STARRED_COLUMN:I = 0x6

.field public static final CONTACT_SYNC_ACCOUNT_COLUMN:I = 0x0

.field public static final CONTACT_SYSTEM_ID_COLUMN:I = 0xa

.field public static final GROUPMEMBERSHIP_GROUP_ID_COLUMN:I = 0x1

.field public static final GROUPMEMBERSHIP_ID_COLUMN:I = 0x0

.field public static final GROUPMEMBERSHIP_ISPRIMARY_COLUMN:I = 0x3

.field public static final GROUPMEMBERSHIP_NAME_COLUMN:I = 0x4

.field public static final GROUPMEMBERSHIP_PERSON_ID_COLUMN:I = 0x2

.field public static final GROUPMEMBERSHIP_PROJECTION:[Ljava/lang/String; = null

.field public static final METHODS_AUX_DATA_COLUMN:I = 0x6

.field public static final METHODS_DATA_COLUMN:I = 0x2

.field public static final METHODS_ID_COLUMN:I = 0x0

.field public static final METHODS_ISPRIMARY_COLUMN:I = 0x5

.field public static final METHODS_KIND_COLUMN:I = 0x1

.field public static final METHODS_LABEL_COLUMN:I = 0x4

.field public static final METHODS_PROJECTION:[Ljava/lang/String; = null

.field public static final METHODS_STATUS_COLUMN:I = 0x7

.field public static final METHODS_TYPE_COLUMN:I = 0x3

.field public static final METHODS_WITH_PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field public static final ORGANIZATIONS_COMPANY_COLUMN:I = 0x3

.field public static final ORGANIZATIONS_ID_COLUMN:I = 0x0

.field public static final ORGANIZATIONS_ISPRIMARY_COLUMN:I = 0x5

.field public static final ORGANIZATIONS_LABEL_COLUMN:I = 0x2

.field public static final ORGANIZATIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final ORGANIZATIONS_TITLE_COLUMN:I = 0x4

.field public static final ORGANIZATIONS_TYPE_COLUMN:I = 0x1

.field public static final PHONES_ID_COLUMN:I = 0x0

.field public static final PHONES_ISPRIMARY_COLUMN:I = 0x4

.field public static final PHONES_LABEL_COLUMN:I = 0x3

.field public static final PHONES_NUMBER_COLUMN:I = 0x1

.field public static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field public static final PHONES_TYPE_COLUMN:I = 0x2

.field public static final SNSIDS_ID_COLUMN:I = 0x0

.field public static final SNSIDS_ISPRIMARY_COLUMN:I = 0x6

.field public static final SNSIDS_LABEL_COLUMN:I = 0x1

.field public static final SNSIDS_PROJECTION:[Ljava/lang/String; = null

.field public static final SNSIDS_SNS_ID_COLUMN:I = 0x2

.field public static final SNSIDS_SN_SITE_ID_COLUMN:I = 0x4

.field public static final SNSIDS_SN_USER_ID_COLUMN:I = 0x5

.field public static final SNSIDS_USER_ID_COLUMN:I = 0x3

.field public static final STUFFS_DATA_COLUMN:I = 0x2

.field public static final STUFFS_ID_COLUMN:I = 0x0

.field public static final STUFFS_INT_DATA_COLUMN:I = 0x3

.field public static final STUFFS_ISPRIMARY_COLUMN:I = 0x4

.field public static final STUFFS_KIND_COLUMN:I = 0x1

.field public static final STUFFS_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected mSeparators:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "notes"

    aput-object v1, v0, v6

    const-string v1, "primary_phone"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "system_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "kind"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->METHODS_PROJECTION:[Ljava/lang/String;

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "kind"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "label"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->METHODS_WITH_PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v5

    const-string v1, "company"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->ORGANIZATIONS_PROJECTION:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "kind"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "int_data"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->STUFFS_PROJECTION:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "sns_id"

    aput-object v1, v0, v5

    const-string v1, "user_id"

    aput-object v1, v0, v6

    const-string v1, "sn_site_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sn_user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->SNSIDS_PROJECTION:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "group_id"

    aput-object v1, v0, v4

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "isprimary"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/ContactEntryAdapter;->GROUPMEMBERSHIP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 5
    .parameter "context"
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    .line 225
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 226
    iput-object p2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 227
    iput-boolean p3, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    .line 228
    return-void
.end method

.method public static countEntries(Ljava/util/ArrayList;Z)I
    .registers 8
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/contacts/ContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)I"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 360
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_26

    .line 361
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 362
    .local v3, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 363
    .local v4, sectionSize:I
    if-eqz p1, :cond_1a

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 360
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 367
    :cond_1a
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_17

    .line 369
    .end local v3           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v4           #sectionSize:I
    :cond_26
    return v0
.end method

.method public static final getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;
    .registers 8
    .parameter
    .parameter "position"
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/contacts/ContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;IZ)TT;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_2d

    .line 335
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 336
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 337
    .local v3, sectionSize:I
    if-eqz p2, :cond_19

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 334
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 341
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_27

    .line 342
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    check-cast p0, Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-object v4, p0

    .line 346
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :goto_26
    return-object v4

    .line 344
    .restart local v2       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v3       #sectionSize:I
    .restart local p0       #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    :cond_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_16

    .line 346
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :cond_2d
    const/4 v4, 0x0

    goto :goto_26
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 285
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-boolean v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 276
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, v1}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 320
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, p1, v1}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 377
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    .line 378
    .local v0, entry:Lcom/android/contacts/ContactEntryAdapter$Entry;
    if-eqz v0, :cond_d

    .line 379
    iget-wide v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 381
    :goto_c
    return-wide v1

    :cond_d
    const-wide/16 v1, -0x1

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 391
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    if-nez p2, :cond_12

    .line 392
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/ContactEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, v:Landroid/view/View;
    :goto_6
    iget-object v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactEntryAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V

    .line 397
    return-object v0

    .line 394
    .end local v0           #v:Landroid/view/View;
    :cond_12
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_6
.end method

.method public final isEnabled(I)Z
    .registers 8
    .parameter "position"

    .prologue
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    const/4 v5, 0x1

    .line 294
    iget-boolean v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    if-nez v4, :cond_7

    move v4, v5

    .line 312
    :goto_6
    return v4

    .line 298
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 299
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_27

    .line 300
    iget-object v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 301
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 302
    .local v3, sectionSize:I
    if-ne v3, v5, :cond_21

    .line 299
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 306
    :cond_21
    if-nez p1, :cond_25

    .line 308
    const/4 v4, 0x0

    goto :goto_6

    .line 310
    :cond_25
    sub-int/2addr p1, v3

    goto :goto_1e

    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v3           #sectionSize:I
    :cond_27
    move v4, v5

    .line 312
    goto :goto_6
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final setSections(Ljava/util/ArrayList;Lcom/android/contacts/ContactEntryAdapter$Entry;)I
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;TE;)I"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    .local p2, entry:Lcom/android/contacts/ContactEntryAdapter$Entry;,"TE;"
    iput-object p1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 254
    iget-object v7, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 255
    .local v3, numSections:I
    const/4 v4, 0x0

    .line 256
    .local v4, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v3, :cond_34

    .line 257
    iget-object v7, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 258
    .local v5, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 259
    .local v6, sectionSize:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1c
    if-ge v2, v6, :cond_30

    .line 260
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactEntryAdapter$Entry;

    .line 261
    .local v0, e:Lcom/android/contacts/ContactEntryAdapter$Entry;,"TE;"
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 262
    add-int/2addr v4, v2

    move v7, v4

    .line 268
    .end local v0           #e:Lcom/android/contacts/ContactEntryAdapter$Entry;,"TE;"
    .end local v2           #j:I
    .end local v5           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v6           #sectionSize:I
    :goto_2c
    return v7

    .line 259
    .restart local v0       #e:Lcom/android/contacts/ContactEntryAdapter$Entry;,"TE;"
    .restart local v2       #j:I
    .restart local v5       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .restart local v6       #sectionSize:I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 266
    .end local v0           #e:Lcom/android/contacts/ContactEntryAdapter$Entry;,"TE;"
    :cond_30
    add-int/2addr v4, v6

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 268
    .end local v2           #j:I
    .end local v5           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v6           #sectionSize:I
    :cond_34
    const/4 v7, -0x1

    goto :goto_2c
.end method

.method public final setSections(Ljava/util/ArrayList;Z)V
    .registers 3
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    iput-object p1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 238
    iput-boolean p2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 240
    return-void
.end method
