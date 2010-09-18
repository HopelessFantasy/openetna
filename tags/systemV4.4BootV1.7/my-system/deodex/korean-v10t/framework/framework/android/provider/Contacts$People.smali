.class public final Landroid/provider/Contacts$People;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$People$Extensions;,
        Landroid/provider/Contacts$People$ContactMethods;,
        Landroid/provider/Contacts$People$Phones;
    }
.end annotation


# static fields
.field private static final CONTACT_DRMPHOTO_INDEX:I = 0x3

.field private static final CONTACT_PHOTO_INDEX:I = 0x2

.field private static final CONTACT_RINGTONE_INDEX:I = 0x1

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"

.field public static final CONTENT_SYSTEM_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field private static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field private static final GROUP_PHOTO_INDEX:I = 0x4

.field private static final GROUP_RINGTONE_INDEX:I = 0x1

.field private static final GROUP_SYSTEM_ID_INDEX:I = 0x2

.field private static final MEMBERSHIP_PROJECTION:[Ljava/lang/String; = null

.field public static final PERSON_MY_PROFILE:Ljava/lang/String; = "My profile"

.field private static final PERSON_PROJECTION:[Ljava/lang/String; = null

.field public static final PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"

.field public static final PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"

.field public static final PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"

.field public static final WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "_id"

    .line 302
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    const-string v0, "content://contacts/people/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 316
    const-string v0, "content://contacts/deleted_people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 323
    const-string v0, "content://contacts/people/system_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

    .line 337
    const-string v0, "content://contacts/people/with_email_or_im_filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    .line 476
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 648
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    const-string v1, "custom_ringtone"

    aput-object v1, v0, v3

    const-string v1, "photo_data"

    aput-object v1, v0, v5

    const-string v1, "drmphoto_data"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/Contacts$People;->PERSON_PROJECTION:[Ljava/lang/String;

    .line 658
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    const-string v1, "custom_ringtone"

    aput-object v1, v0, v3

    const-string v1, "system_id"

    aput-object v1, v0, v5

    const-string v1, "isprimary"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "groupphoto_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Contacts$People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .registers 8
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupId"

    .prologue
    .line 470
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "person"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    const-string v1, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .registers 13
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupName"

    .prologue
    const/4 v5, 0x0

    .line 441
    const-wide/16 v6, 0x0

    .line 442
    .local v6, groupId:J
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p3, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 444
    .local v8, groupsCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_24

    .line 446
    :try_start_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 447
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_32

    move-result-wide v6

    .line 450
    :cond_21
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_24
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_37

    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find the My Contacts group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :catchall_32
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 458
    :cond_37
    invoke-static {p0, p1, p2, v6, v7}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .registers 12
    .parameter "resolver"
    .parameter "personId"

    .prologue
    const/4 v4, 0x0

    .line 410
    const-wide/16 v6, 0x0

    .line 411
    .local v6, groupId:J
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v3, "system_id=\'Contacts\'"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 413
    .local v8, groupsCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1f

    .line 415
    :try_start_11
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 416
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2d

    move-result-wide v6

    .line 419
    :cond_1c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_1f
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_32

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find the My Contacts group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :catchall_2d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 428
    :cond_32
    invoke-static {p0, p1, p2, v6, v7}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "resolver"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 490
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 491
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_12

    .line 492
    const-string v1, "Contacts"

    const-string v2, "Failed to create the contact"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 500
    :goto_11
    return-object v1

    .line 496
    :cond_12
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_21

    .line 497
    invoke-virtual {p0, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v1, v3

    .line 498
    goto :goto_11

    :cond_21
    move-object v1, v0

    .line 500
    goto :goto_11
.end method

.method public static getDisplayPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 9
    .parameter "context"
    .parameter "personUri"

    .prologue
    .line 721
    if-nez p1, :cond_4

    .line 722
    const/4 p0, 0x0

    .line 779
    .end local p0
    .end local p1
    :cond_3
    :goto_3
    return-object p0

    .line 724
    .restart local p0
    .restart local p1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Contacts$People;->PERSON_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 728
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_92

    move-result v0

    if-nez v0, :cond_1f

    .line 729
    const/4 p0, 0x0

    .line 774
    .end local p0
    if-eqz v6, :cond_3

    .line 775
    .end local p1
    :goto_1b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 731
    .restart local p0
    .restart local p1
    :cond_1f
    const/4 v0, 0x2

    :try_start_20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 732
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 733
    const-string v0, "groupmembership"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 734
    .local v1, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Contacts$People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "isprimary DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_92

    move-result-object v1

    .line 739
    .local v1, groupsCursor:Landroid/database/Cursor;
    :cond_41
    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 740
    const-string v0, "Contacts"

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 741
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 742
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_81

    move-result-object v0

    .line 743
    .local v0, stream:Ljava/io/InputStream;
    if-eqz v0, :cond_41

    .line 757
    if-eqz v1, :cond_66

    .line 758
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_92

    .line 774
    :cond_66
    if-eqz v6, :cond_6b

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6b
    move-object p0, v0

    .line 744
    goto :goto_3

    .line 747
    .end local v0           #stream:Ljava/io/InputStream;
    :cond_6d
    const/4 v0, 0x4

    :try_start_6e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 748
    .local v0, data:[B
    if-eqz v0, :cond_41

    .line 749
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_81

    .line 757
    if-eqz v1, :cond_7e

    .line 758
    :try_start_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_7e
    if-eqz v6, :cond_3

    goto :goto_1b

    .line 754
    .end local v0           #data:[B
    :catch_81
    move-exception p0

    .line 755
    .local p0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    .line 757
    .end local p0           #e:Ljava/lang/Exception;
    if-eqz v1, :cond_88

    .line 758
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_88
    if-eqz v6, :cond_3

    goto :goto_1b

    .line 757
    :catchall_8b
    move-exception p0

    if-eqz v1, :cond_91

    .line 758
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_91
    throw p0

    .line 771
    .end local v1           #groupsCursor:Landroid/database/Cursor;
    .end local p1
    :catch_92
    move-exception p0

    .line 772
    .restart local p0       #e:Ljava/lang/Exception;
    const/4 p0, 0x0

    .line 774
    .end local p0           #e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    goto :goto_1b

    .line 762
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_97
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 774
    .end local p0           #context:Landroid/content/Context;
    if-eqz v6, :cond_3

    goto/16 :goto_1b

    .line 765
    .restart local p0       #context:Landroid/content/Context;
    :cond_9f
    const/4 p0, 0x2

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getBlob(I)[B

    .end local p0           #context:Landroid/content/Context;
    move-result-object p0

    .line 766
    .local p0, data:[B
    if-nez p0, :cond_ab

    .line 767
    const/4 p0, 0x0

    .line 774
    .end local p0           #data:[B
    if-eqz v6, :cond_3

    goto/16 :goto_1b

    .line 769
    .restart local p0       #data:[B
    :cond_ab
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .end local p1
    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_b0
    .catchall {:try_start_7b .. :try_end_b0} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_b0} :catch_92

    .line 774
    if-eqz v6, :cond_b5

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b5
    move-object p0, p1

    .line 769
    goto/16 :goto_3

    .line 774
    .end local p0           #data:[B
    :catchall_b8
    move-exception p0

    if-eqz v6, :cond_be

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_be
    throw p0

    .line 757
    .restart local v1       #groupsCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_bf
    if-eqz v1, :cond_c4

    .line 758
    :try_start_c1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_92

    .line 774
    :cond_c4
    if-eqz v6, :cond_c9

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_c9
    const/4 p0, 0x0

    goto/16 :goto_3
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 14
    .parameter "context"
    .parameter "personUri"

    .prologue
    const/4 v3, 0x0

    .line 675
    if-nez p1, :cond_5

    move-object v1, v3

    .line 710
    :goto_4
    return-object v1

    .line 678
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 679
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Contacts$People;->PERSON_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 683
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_64

    move-result v1

    if-nez v1, :cond_1d

    .line 707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 684
    goto :goto_4

    .line 686
    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 687
    const-string v1, "groupmembership"

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 688
    .local v5, uri:Landroid/net/Uri;
    sget-object v6, Landroid/provider/Contacts$People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isprimary DESC"

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_64

    move-result-object v11

    .line 693
    .local v11, groupsCursor:Landroid/database/Cursor;
    :cond_35
    :try_start_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 694
    const-string v1, "Contacts"

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 695
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 696
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_5f

    move-result-object v1

    .line 701
    :try_start_58
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_64

    .line 707
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #groupsCursor:Landroid/database/Cursor;
    :goto_5b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 701
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v11       #groupsCursor:Landroid/database/Cursor;
    :catchall_5f
    move-exception v1

    :try_start_60
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    .line 707
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #groupsCursor:Landroid/database/Cursor;
    :catchall_64
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 704
    :cond_69
    const/4 v1, 0x1

    :try_start_6a
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5b

    .line 701
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v11       #groupsCursor:Landroid/database/Cursor;
    :cond_73
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_64

    .line 707
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 710
    goto :goto_4
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"
    .parameter "personUri"
    .parameter "placeholderImageResource"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 615
    if-nez p1, :cond_8

    .line 616
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 635
    :goto_7
    return-object v3

    .line 619
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 620
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_2d

    invoke-static {v2, v4, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 622
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_17
    if-nez v0, :cond_25

    .line 623
    invoke-static {p0, p1}, Landroid/provider/Contacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 625
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    :try_start_20
    invoke-static {v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_23} :catch_31

    move-result-object v3

    move-object v0, v3

    .line 632
    :cond_25
    :goto_25
    if-nez v0, :cond_2b

    .line 633
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2b
    move-object v3, v0

    .line 635
    goto :goto_7

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2d
    move-object v0, v4

    .line 620
    goto :goto_17

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_2f
    move-object v0, v4

    .line 625
    goto :goto_25

    .line 626
    :catch_31
    move-exception v1

    .line 627
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Contacts"

    const-string v4, "out of memorry!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_25
.end method

.method private static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 640
    if-nez p0, :cond_4

    .line 641
    const/4 v0, 0x0

    .line 643
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .registers 9
    .parameter "resolver"
    .parameter "personId"

    .prologue
    const/4 v5, 0x0

    .line 391
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 392
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "update_contact_time"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "last_time_contacted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 11
    .parameter "cr"
    .parameter "personUri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 583
    const-string v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 587
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_3c

    move-result v0

    if-nez v0, :cond_23

    .line 598
    if-eqz v6, :cond_21

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    move-object v0, v3

    .line 596
    :cond_22
    :goto_22
    return-object v0

    .line 590
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_3c

    move-result-object v7

    .line 591
    .local v7, data:[B
    if-nez v7, :cond_31

    .line 598
    if-eqz v6, :cond_2f

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    move-object v0, v3

    .line 592
    goto :goto_22

    .line 594
    :cond_31
    :try_start_31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_3c

    .line 598
    if-eqz v6, :cond_22

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 595
    .end local v7           #data:[B
    :catch_3c
    move-exception v0

    move-object v8, v0

    .line 598
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_43

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    move-object v0, v3

    .line 596
    goto :goto_22

    .line 598
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_45
    move-exception v0

    if-eqz v6, :cond_4b

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_4b
    throw v0
.end method

.method public static queryGroups(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .registers 9
    .parameter "resolver"
    .parameter "person"

    .prologue
    .line 504
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "person=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 14
    .parameter "cr"
    .parameter "personUri"
    .parameter "filename"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string v9, "person"

    const-string v8, "data"

    .line 552
    if-nez p1, :cond_8

    .line 575
    :cond_7
    :goto_7
    return-void

    .line 555
    :cond_8
    const-string v6, "photo"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 556
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 557
    .local v2, personId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 558
    .local v5, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 559
    .local v1, empty:Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v5, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_35

    .line 562
    const-string v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 566
    :cond_35
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 567
    .local v0, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 568
    const-string v6, "filename"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v6, "data"

    invoke-virtual {v5, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 571
    invoke-virtual {p0, v0, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 572
    const-string v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 573
    sget-object v6, Landroid/provider/Contacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_7
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 13
    .parameter "cr"
    .parameter "personUri"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string v9, "person"

    const-string v8, "data"

    .line 515
    if-nez p1, :cond_8

    .line 541
    :cond_7
    :goto_7
    return-void

    .line 518
    :cond_8
    const-string v6, "photo"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 519
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 520
    .local v2, personId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 523
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_34

    .line 524
    const-string v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 529
    :cond_34
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 530
    .local v0, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, empty:Ljava/lang/String;
    const/4 p2, 0x0

    .line 533
    const-string v6, "filename"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 536
    invoke-virtual {p0, v0, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 537
    const-string v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    sget-object v6, Landroid/provider/Contacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_7
.end method
