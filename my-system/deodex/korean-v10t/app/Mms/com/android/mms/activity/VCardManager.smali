.class public Lcom/android/mms/activity/VCardManager;
.super Ljava/lang/Object;
.source "VCardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCardManager"


# instance fields
.field private mContactMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;

.field private mOrganizationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mPeople:Landroid/content/ContentValues;

.field private mPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/mms/activity/VCardManager;->loadData(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCardManager;->mData:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/activity/VCardManager;->parse(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iput-object p2, p0, Lcom/android/mms/activity/VCardManager;->mData:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/activity/VCardManager;->parse(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private getAddressTypeByName(Ljava/lang/String;)I
    .registers 4
    .parameter "typeName"

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 274
    :goto_8
    return v0

    .line 267
    :cond_9
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    .line 268
    goto :goto_8

    .line 269
    :cond_13
    const-string v0, "WORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 270
    const/4 v0, 0x2

    goto :goto_8

    .line 271
    :cond_1d
    const-string v0, "X-OTHER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 272
    const/4 v0, 0x3

    goto :goto_8

    .line 274
    :cond_27
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private getEmailTypeByName(Ljava/lang/String;)I
    .registers 4
    .parameter "typeName"

    .prologue
    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "INTERNET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move v0, v1

    .line 260
    :goto_10
    return v0

    .line 253
    :cond_11
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    .line 254
    goto :goto_10

    .line 255
    :cond_1b
    const-string v0, "WORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 256
    const/4 v0, 0x2

    goto :goto_10

    .line 257
    :cond_25
    const-string v0, "X-OTHER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 258
    const/4 v0, 0x3

    goto :goto_10

    .line 260
    :cond_2f
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private loadData(Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .parameter "uri"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, contactC:Landroid/database/Cursor;
    new-instance v10, Landroid/syncml/pim/vcard/ContactStruct;

    invoke-direct {v10}, Landroid/syncml/pim/vcard/ContactStruct;-><init>()V

    .line 299
    .local v10, contactStruct:Landroid/syncml/pim/vcard/ContactStruct;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 302
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    .line 304
    iget-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->notes:Ljava/util/List;

    const-string v1, "notes"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "organizations"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "isprimary"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 315
    .local v12, orgC:Landroid/database/Cursor;
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->company:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->title:Ljava/lang/String;

    .line 317
    if-eqz v12, :cond_6c

    .line 318
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 319
    const-string v0, "company"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->company:Ljava/lang/String;

    .line 321
    const-string v0, "title"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/syncml/pim/vcard/ContactStruct;->title:Ljava/lang/String;

    .line 324
    :cond_69
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_6c
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "phones"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 331
    .local v13, phoneC:Landroid/database/Cursor;
    if-eqz v13, :cond_a8

    .line 332
    :goto_80
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 333
    const-string v0, "number"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, data:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 337
    .local v2, type:I
    const-string v0, "label"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, label:Ljava/lang/String;
    goto :goto_80

    .line 341
    .end local v2           #type:I
    .end local v3           #data:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    :cond_a5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_a8
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "contact_methods"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 349
    .local v9, contactMethodC:Landroid/database/Cursor;
    if-eqz v9, :cond_f3

    .line 350
    :goto_bc
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 351
    const-string v0, "kind"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 353
    .local v1, kind:I
    const-string v0, "data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3       #data:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 357
    .restart local v2       #type:I
    const-string v0, "label"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4       #label:Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Landroid/syncml/pim/vcard/ContactStruct;->addContactmethod(IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_bc

    .line 361
    .end local v1           #kind:I
    .end local v2           #type:I
    .end local v3           #data:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    :cond_f0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_f3
    :try_start_f3
    new-instance v7, Landroid/syncml/pim/vcard/VCardComposer;

    invoke-direct {v7}, Landroid/syncml/pim/vcard/VCardComposer;-><init>()V

    .line 366
    .local v7, composer:Landroid/syncml/pim/vcard/VCardComposer;
    const/4 v0, 0x1

    invoke-virtual {v7, v10, v0}, Landroid/syncml/pim/vcard/VCardComposer;->createVCard(Landroid/syncml/pim/vcard/ContactStruct;I)Ljava/lang/String;
    :try_end_fc
    .catch Landroid/syncml/pim/vcard/VCardException; {:try_start_f3 .. :try_end_fc} :catch_fe

    move-result-object v0

    .line 369
    .end local v7           #composer:Landroid/syncml/pim/vcard/VCardComposer;
    :goto_fd
    return-object v0

    .line 368
    :catch_fe
    move-exception v0

    move-object v11, v0

    .line 369
    .local v11, e:Landroid/syncml/pim/vcard/VCardException;
    const/4 v0, 0x0

    goto :goto_fd
.end method

.method private parse(Ljava/lang/String;)V
    .registers 9
    .parameter "data"

    .prologue
    const-string v6, "VCardManager"

    .line 106
    new-instance v3, Landroid/syncml/pim/vcard/VCardParser;

    invoke-direct {v3}, Landroid/syncml/pim/vcard/VCardParser;-><init>()V

    .line 107
    .local v3, mParser:Landroid/syncml/pim/vcard/VCardParser;
    new-instance v0, Landroid/syncml/pim/VDataBuilder;

    invoke-direct {v0}, Landroid/syncml/pim/VDataBuilder;-><init>()V

    .line 109
    .local v0, builder:Landroid/syncml/pim/VDataBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/activity/VCardManager;->mContactMethodList:Ljava/util/ArrayList;

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/activity/VCardManager;->mPhoneList:Ljava/util/ArrayList;

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/activity/VCardManager;->mOrganizationList:Ljava/util/ArrayList;

    .line 112
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iput-object v5, p0, Lcom/android/mms/activity/VCardManager;->mPeople:Landroid/content/ContentValues;

    .line 115
    :try_start_28
    invoke-virtual {v3, p1, v0}, Landroid/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Landroid/syncml/pim/VDataBuilder;)Z
    :try_end_2b
    .catch Landroid/syncml/pim/vcard/VCardException; {:try_start_28 .. :try_end_2b} :catch_41
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4c

    .line 122
    :goto_2b
    iget-object v5, v0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/syncml/pim/VNode;

    .line 123
    .local v4, vnode:Landroid/syncml/pim/VNode;
    invoke-direct {p0, v4}, Lcom/android/mms/activity/VCardManager;->setContactsValue(Landroid/syncml/pim/VNode;)V

    goto :goto_31

    .line 116
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #vnode:Landroid/syncml/pim/VNode;
    :catch_41
    move-exception v1

    .line 117
    .local v1, e:Landroid/syncml/pim/vcard/VCardException;
    const-string v5, "VCardManager"

    invoke-virtual {v1}, Landroid/syncml/pim/vcard/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 118
    .end local v1           #e:Landroid/syncml/pim/vcard/VCardException;
    :catch_4c
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    const-string v5, "VCardManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_57
    return-void
.end method

.method private setContactsValue(Landroid/syncml/pim/VNode;)V
    .registers 23
    .parameter "vnode"

    .prologue
    .line 128
    const/4 v13, 0x0

    .line 129
    .local v13, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 130
    .local v4, company:Ljava/lang/String;
    const/4 v11, -0x1

    .line 131
    .local v11, phoneContentType:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v10, phoneContent:Landroid/content/ContentValues;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 134
    .local v14, typeList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/syncml/pim/PropertyNode;

    .line 135
    .local v12, prop:Landroid/syncml/pim/PropertyNode;
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "TITLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_39

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_39

    .line 136
    iget-object v13, v12, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 138
    :cond_39
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ORG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4f

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4f

    .line 139
    iget-object v4, v12, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 143
    :cond_4f
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "N"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_73

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_73

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mPeople:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "name"

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_73
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "TEL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a2

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a2

    .line 150
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 151
    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    .line 153
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_96
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 154
    .local v16, typeStr:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 156
    .end local v16           #typeStr:Ljava/lang/String;
    :cond_ad
    const-string v17, "FAX"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_108

    .line 157
    const/4 v11, -0x1

    .line 158
    const-string v17, "HOME"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14e

    .line 159
    const/4 v11, 0x5

    .line 160
    const-string v17, "HOME"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_cd
    :goto_cd
    const/16 v17, -0x1

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_108

    .line 166
    const-string v17, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v17, "number"

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mPhoneList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 170
    const-string v17, "FAX"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_108
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 174
    .restart local v16       #typeStr:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 178
    const-string v17, "HOME"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_164

    .line 179
    const/4 v11, 0x1

    .line 194
    :goto_124
    const-string v17, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v17, "number"

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mPhoneList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    .line 161
    .end local v16           #typeStr:Ljava/lang/String;
    :cond_14e
    const-string v17, "WORK"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_cd

    .line 162
    const/4 v11, 0x4

    .line 163
    const-string v17, "WORK"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_cd

    .line 180
    .restart local v16       #typeStr:Ljava/lang/String;
    :cond_164
    const-string v17, "WORK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16e

    .line 181
    const/4 v11, 0x3

    goto :goto_124

    .line 182
    :cond_16e
    const-string v17, "FAX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_178

    .line 183
    const/4 v11, 0x4

    goto :goto_124

    .line 184
    :cond_178
    const-string v17, "PAGER"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_182

    .line 185
    const/4 v11, 0x6

    goto :goto_124

    .line 186
    :cond_182
    const-string v17, "CELL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18c

    .line 187
    const/4 v11, 0x2

    goto :goto_124

    .line 188
    :cond_18c
    const-string v17, "X-OTHER"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_196

    .line 189
    const/4 v11, 0x7

    goto :goto_124

    .line 191
    :cond_196
    const/4 v11, 0x0

    .line 192
    const-string v17, "label"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    .line 200
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v16           #typeStr:Ljava/lang/String;
    :cond_1a2
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "EMAIL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22b

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22b

    .line 202
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v8, mapContactM:Landroid/content/ContentValues;
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_1c4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_22b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 206
    .local v15, typeName:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 207
    const-string v17, "data"

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ";"

    const-string v20, " "

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v17, "kind"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/mms/activity/VCardManager;->getEmailTypeByName(Ljava/lang/String;)I

    move-result v7

    .line 212
    .local v7, iType:I
    const-string v17, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    if-nez v7, :cond_21e

    .line 214
    const-string v17, "label"

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_21e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mContactMethodList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c4

    .line 220
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #iType:I
    .end local v8           #mapContactM:Landroid/content/ContentValues;
    .end local v15           #typeName:Ljava/lang/String;
    :cond_22b
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "ADR"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 221
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .restart local v8       #mapContactM:Landroid/content/ContentValues;
    const-string v17, "data"

    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ";"

    const-string v20, " "

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v17, "kind"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    move-object v0, v12

    iget-object v0, v0, Landroid/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/activity/VCardManager;->setToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v15

    .line 229
    .restart local v15       #typeName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/mms/activity/VCardManager;->getAddressTypeByName(Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, addressType:I
    const-string v17, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    if-nez v3, :cond_29c

    .line 232
    const-string v17, "label"

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mContactMethodList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 240
    .end local v3           #addressType:I
    .end local v8           #mapContactM:Landroid/content/ContentValues;
    .end local v12           #prop:Landroid/syncml/pim/PropertyNode;
    .end local v15           #typeName:Ljava/lang/String;
    :cond_2aa
    if-nez v13, :cond_2ae

    if-eqz v4, :cond_2e1

    .line 241
    :cond_2ae
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v9, organization:Landroid/content/ContentValues;
    const-string v17, "company"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v17, "title"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v17, "type"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/activity/VCardManager;->mOrganizationList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v9           #organization:Landroid/content/ContentValues;
    :cond_2e1
    return-void
.end method

.method private setToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, ";"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .local v3, typeListB:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, o:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 285
    .end local v1           #o:Ljava/lang/String;
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, typeList:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 287
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 289
    :goto_3a
    return-object v4

    :cond_3b
    move-object v4, v2

    goto :goto_3a
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/activity/VCardManager;->mPeople:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public save()Landroid/net/Uri;
    .registers 10

    .prologue
    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mms/activity/VCardManager;->mPeople:Landroid/content/ContentValues;

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 89
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Landroid/content/ContentValues;

    .line 90
    .local v3, phoneArray:[Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "phones"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 92
    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mOrganizationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/content/ContentValues;

    .line 93
    .local v2, organizationArray:[Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "organizations"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mOrganizationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 95
    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mContactMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ContentValues;

    .line 96
    .local v0, contactMethodArray:[Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/mms/activity/VCardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "contact_methods"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mContactMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5d} :catch_5f

    move-object v5, v4

    .line 102
    .end local v0           #contactMethodArray:[Landroid/content/ContentValues;
    .end local v2           #organizationArray:[Landroid/content/ContentValues;
    .end local v3           #phoneArray:[Landroid/content/ContentValues;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_5e
    return-object v5

    .line 99
    :catch_5f
    move-exception v5

    move-object v1, v5

    .line 100
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    iget-object v5, p0, Lcom/android/mms/activity/VCardManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 102
    const/4 v5, 0x0

    goto :goto_5e
.end method
