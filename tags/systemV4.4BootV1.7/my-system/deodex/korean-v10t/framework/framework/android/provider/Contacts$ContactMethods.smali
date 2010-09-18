.class public final Landroid/provider/Contacts$ContactMethods;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$ContactMethodsColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethods"
.end annotation


# static fields
.field public static final CONTENT_EMAIL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email"

.field public static final CONTENT_EMAIL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email"

.field public static final CONTENT_EMAIL_URI:Landroid/net/Uri; = null

.field public static final CONTENT_IM_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/jabber-im"

.field public static final CONTENT_POSTAL_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address"

.field public static final CONTENT_POSTAL_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact-methods"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_WEBSITE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/website"

.field public static final CONTENT_WEBSITE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/website"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final PERSON_ID:Ljava/lang/String; = "person"

.field public static final POSTAL_LOCATION_LATITUDE:Ljava/lang/String; = "data"

.field public static final POSTAL_LOCATION_LONGITUDE:Ljava/lang/String; = "aux_data"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1568
    const-string v0, "content://contacts/contact_methods"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    .line 1574
    const-string v0, "content://contacts/contact_methods/email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "encodedString"

    .prologue
    .line 1425
    if-nez p0, :cond_4

    .line 1426
    const/4 v0, 0x0

    .line 1434
    :goto_3
    return-object v0

    .line 1429
    :cond_4
    const-string v0, "pre:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1430
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 1433
    :cond_1a
    const-string v0, "custom:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1434
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1437
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the value is not a valid encoded protocol, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeCustomImProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "protocolString"

    .prologue
    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodePredefinedImProtocol(I)Ljava/lang/String;
    .registers 3
    .parameter "protocol"

    .prologue
    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "context"
    .parameter "kind"
    .parameter "type"
    .parameter "label"

    .prologue
    const/high16 v4, 0x107

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1480
    const-string v0, ""

    .line 1481
    .local v0, display:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_66

    .line 1536
    :pswitch_9
    const v3, 0x104000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1538
    :cond_10
    :goto_10
    return-object v0

    .line 1483
    :pswitch_11
    if-eqz p2, :cond_24

    .line 1484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1487
    .local v2, labels:[Ljava/lang/CharSequence;
    sub-int v3, p2, v6

    :try_start_1d
    aget-object v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_1f} :catch_20

    goto :goto_10

    .line 1488
    :catch_20
    move-exception v1

    .line 1489
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_10

    .line 1492
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1493
    move-object v0, p3

    goto :goto_10

    .line 1500
    :pswitch_2c
    if-eqz p2, :cond_42

    .line 1501
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1504
    .restart local v2       #labels:[Ljava/lang/CharSequence;
    sub-int v3, p2, v6

    :try_start_3b
    aget-object v0, v2, v3
    :try_end_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b .. :try_end_3d} :catch_3e

    goto :goto_10

    .line 1505
    :catch_3e
    move-exception v1

    .line 1506
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_10

    .line 1509
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_42
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1510
    move-object v0, p3

    goto :goto_10

    .line 1518
    :pswitch_4a
    if-eqz p2, :cond_5d

    .line 1519
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1522
    .restart local v2       #labels:[Ljava/lang/CharSequence;
    sub-int v3, p2, v6

    :try_start_56
    aget-object v0, v2, v3
    :try_end_58
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_59

    goto :goto_10

    .line 1523
    :catch_59
    move-exception v1

    .line 1524
    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    goto :goto_10

    .line 1527
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2           #labels:[Ljava/lang/CharSequence;
    :cond_5d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1528
    move-object v0, p3

    goto :goto_10

    .line 1481
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_4a
    .end packed-switch
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .registers 2
    .parameter "protocol"

    .prologue
    .line 1452
    packed-switch p0, :pswitch_data_1e

    .line 1470
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1454
    :pswitch_5
    const-string v0, "GTalk"

    goto :goto_4

    .line 1456
    :pswitch_8
    const-string v0, "AIM"

    goto :goto_4

    .line 1458
    :pswitch_b
    const-string v0, "MSN"

    goto :goto_4

    .line 1460
    :pswitch_e
    const-string v0, "Yahoo"

    goto :goto_4

    .line 1462
    :pswitch_11
    const-string v0, "ICQ"

    goto :goto_4

    .line 1464
    :pswitch_14
    const-string v0, "JABBER"

    goto :goto_4

    .line 1466
    :pswitch_17
    const-string v0, "SKYPE"

    goto :goto_4

    .line 1468
    :pswitch_1a
    const-string v0, "QQ"

    goto :goto_4

    .line 1452
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_17
        :pswitch_1a
        :pswitch_5
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public addPostalLocation(Landroid/content/Context;JDD)V
    .registers 16
    .parameter "context"
    .parameter "postalId"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1553
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1554
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "data"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1555
    const-string v5, "aux_data"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1556
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1557
    .local v0, loc:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1560
    .local v1, locId:J
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1561
    const-string v5, "aux_data"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1562
    sget-object v5, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1563
    return-void
.end method
