.class public final Lcom/android/contacts/ContactsGroupSyncSelector;
.super Landroid/app/ListActivity;
.source "ContactsGroupSyncSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_NAME:I = 0x1

.field private static final COLUMN_INDEX_SHOULD_SYNC:I = 0x2

.field private static final COLUMN_INDEX_SYSTEM_ID:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SUBACTIVITY_GET_ACCOUNT:I = 0x1


# instance fields
.field mChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mJustCreate:Z

.field mSyncAllGroups:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsGroupSyncSelector;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mGroupIds:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mJustCreate:Z

    .line 65
    return-void
.end method

.method private adjustChecks()V
    .registers 6

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 293
    .local v3, list:Landroid/widget/ListView;
    iget-boolean v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    if-eqz v4, :cond_16

    .line 294
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 295
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_2f

    .line 296
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 299
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_16
    iget-object v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    .line 300
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 301
    .restart local v1       #count:I
    const/4 v2, 0x0

    .end local p0
    .restart local v2       #i:I
    :goto_1d
    if-ge v2, v1, :cond_2f

    .line 302
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 305
    .end local v0           #checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_2f
    return-void
.end method

.method private buildItems()V
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactsGroupSyncSelector;->PROJECTION:[Ljava/lang/String;

    const-string v5, "name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 237
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_f6

    .line 239
    :try_start_14
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 240
    .local v7, count:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v10, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v6, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v9, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsGroupSyncSelector;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-boolean v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_45
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 250
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, name:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_95

    move-object v12, v3

    .line 253
    .local v12, systemId:Ljava/lang/String;
    :goto_58
    if-eqz v12, :cond_62

    const-string v1, "Contacts"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 256
    :cond_62
    const-string v1, "Starred in Android"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 257
    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsGroupSyncSelector;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 259
    :cond_71
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_9c

    move v1, v13

    :goto_7c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_14 .. :try_end_8f} :catchall_90

    goto :goto_45

    .line 286
    .end local v6           #checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7           #count:I
    .end local v9           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #systemId:Ljava/lang/String;
    :catchall_90
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 251
    .restart local v6       #checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v7       #count:I
    .restart local v9       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v10       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v11       #name:Ljava/lang/String;
    :cond_95
    const/4 v1, 0x3

    :try_start_96
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_58

    .restart local v12       #systemId:Ljava/lang/String;
    :cond_9c
    move v1, v14

    .line 260
    goto :goto_7c

    .line 264
    :cond_9e
    const/4 v1, 0x1

    const v2, 0x7f06004d

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsGroupSyncSelector;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c8

    move v2, v13

    :goto_b2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 266
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_45

    :cond_c8
    move v2, v14

    .line 265
    goto :goto_b2

    .line 271
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #systemId:Ljava/lang/String;
    :cond_ca
    iget-object v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_dc

    .line 272
    :cond_da
    iput-object v6, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    .line 276
    :cond_dc
    iput-object v9, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mGroupIds:Ljava/util/ArrayList;

    .line 278
    iget-boolean v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mJustCreate:Z

    if-nez v1, :cond_eb

    .line 279
    invoke-static {v0}, Lcom/android/contacts/ContactsGroupSyncSelector;->getShouldSyncEverything(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mJustCreate:Z

    .line 284
    :cond_eb
    new-instance v1, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;

    invoke-direct {v1, p0, v10}, Lcom/android/contacts/ContactsGroupSyncSelector$GroupsAdapter;-><init>(Lcom/android/contacts/ContactsGroupSyncSelector;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsGroupSyncSelector;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_f3
    .catchall {:try_start_96 .. :try_end_f3} :catchall_90

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v6           #checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v7           #count:I
    .end local v9           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_f6
    return-void
.end method

.method private static getShouldSyncEverything(Landroid/content/ContentResolver;)Z
    .registers 5
    .parameter "cr"

    .prologue
    const/4 v3, 0x1

    .line 312
    const/4 v1, 0x0

    const-string v2, "syncEverything"

    invoke-static {p0, v1, v2}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_c

    move v1, v3

    .line 317
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v3

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 223
    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 225
    invoke-direct {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->buildItems()V

    .line 226
    invoke-direct {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->adjustChecks()V

    .line 232
    :cond_f
    :goto_f
    return-void

    .line 228
    :cond_10
    const-string v0, "ContactsGroupSync"

    const-string v1, "gmail login fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->finish()V

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const-string v9, "syncEverything"

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_68

    .line 155
    :goto_a
    return-void

    .line 117
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->finish()V

    goto :goto_a

    .line 123
    :pswitch_f
    iget-object v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->finish()V

    goto :goto_a

    .line 128
    :cond_17
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 129
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-boolean v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    if-eqz v4, :cond_2a

    .line 134
    const-string v4, "syncEverything"

    const-string v4, "1"

    invoke-static {v2, v8, v9, v4}, Landroid/provider/Contacts$Settings;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_26
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->finish()V

    goto :goto_a

    .line 136
    :cond_2a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_36
    if-ge v1, v0, :cond_60

    .line 139
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 140
    const-string v5, "should_sync"

    iget-object v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 141
    sget-object v5, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 149
    :cond_60
    const-string v4, "syncEverything"

    const-string v4, "0"

    invoke-static {v2, v8, v9, v4}, Landroid/provider/Contacts$Settings;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 115
    :pswitch_data_68
    .packed-switch 0x7f050049
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedState"

    .prologue
    const v5, 0x7f060076

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v6, "optional_message"

    const-string v4, "mail"

    .line 159
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    if-nez p1, :cond_46

    .line 166
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "optional_message"

    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactsGroupSyncSelector;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 168
    const-string v0, "mail"

    move-object v0, p0

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    .line 180
    .end local v2           #bundle:Landroid/os/Bundle;
    :goto_23
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsGroupSyncSelector;->setContentView(I)V

    .line 182
    const v0, 0x7f050049

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsGroupSyncSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsGroupSyncSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 186
    return-void

    .line 174
    :cond_46
    const-string v0, "optional_message"

    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactsGroupSyncSelector;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 175
    const-string v0, "mail"

    move-object v5, p0

    move v6, v1

    move-object v7, p1

    move v8, v3

    move-object v9, v4

    move v10, v1

    invoke-static/range {v5 .. v10}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    goto :goto_23
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "list"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 103
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 104
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    if-nez p3, :cond_14

    .line 106
    iput-boolean v0, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    .line 107
    invoke-direct {p0}, Lcom/android/contacts/ContactsGroupSyncSelector;->adjustChecks()V

    .line 109
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v2, "Checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 195
    .local v0, checked:[Z
    iget-object v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 197
    iget-object v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    aget-boolean v3, v0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 200
    :cond_20
    const-string v2, "SyncGroups"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    .line 201
    const-string v2, "JustCreate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mJustCreate:Z

    .line 202
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    iget-object v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    .line 209
    .local v0, checked:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_20

    .line 210
    iget-object v2, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mChecked:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 213
    :cond_20
    const-string v2, "Checked"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 214
    const-string v2, "SyncGroups"

    iget-boolean v3, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mSyncAllGroups:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v2, "JustCreate"

    iget-boolean v3, p0, Lcom/android/contacts/ContactsGroupSyncSelector;->mJustCreate:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    return-void
.end method
