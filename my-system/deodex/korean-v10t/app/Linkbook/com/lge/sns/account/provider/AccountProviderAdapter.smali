.class public Lcom/lge/sns/account/provider/AccountProviderAdapter;
.super Ljava/lang/Object;
.source "AccountProviderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;
    }
.end annotation


# static fields
.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final CRYPT_ALGORITHM:Ljava/lang/String; = "AES"

.field static final DELETE_FEATURE_WHERE:Ljava/lang/String; = "sns_id = ?"

.field static final DELETE_RESTRICTION_WHERE:Ljava/lang/String; = "sns_id = ?"

.field static final ID_COLUMN:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AccountProviderAdapter"

.field static cipher:Ljavax/crypto/Cipher;

.field static ips:Ljavax/crypto/spec/IvParameterSpec;

.field static final iv:[B

.field static skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field static final staticKey:[B


# instance fields
.field private cr:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->ID_COLUMN:[Ljava/lang/String;

    .line 612
    :try_start_a
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_38

    .line 618
    :goto_12
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->iv:[B

    .line 619
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->ips:Ljavax/crypto/spec/IvParameterSpec;

    .line 620
    const-string v0, "ManKyunSong12345"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->staticKey:[B

    .line 621
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter;->staticKey:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    .line 613
    :catch_38
    move-exception v0

    goto :goto_12

    .line 618
    :array_3a
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x10t
        0x20t
        0x30t
        0x40t
        0x50t
        0x60t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, decrypted:[B
    if-eqz p1, :cond_44

    .line 643
    :try_start_3
    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_2a

    .line 644
    :try_start_6
    sget-object v3, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    sget-object v5, Lcom/lge/sns/account/provider/AccountProviderAdapter;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/lge/sns/account/provider/AccountProviderAdapter;->ips:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 645
    sget-object v3, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/lge/util/Base64;->decode([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 646
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    .line 647
    :try_start_1f
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_2a

    .line 652
    :goto_26
    return-object v2

    .line 646
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 648
    :catch_2a
    move-exception v2

    move-object v1, v2

    .line 649
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to decrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_44
    move-object v2, p1

    .line 652
    goto :goto_26
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, encrypted:[B
    if-eqz p1, :cond_44

    .line 627
    :try_start_3
    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_2a

    .line 628
    :try_start_6
    sget-object v3, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    sget-object v5, Lcom/lge/sns/account/provider/AccountProviderAdapter;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/lge/sns/account/provider/AccountProviderAdapter;->ips:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 629
    sget-object v3, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cipher:Ljavax/crypto/Cipher;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 630
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_27

    .line 631
    :try_start_1d
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/util/Base64;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_2a

    .line 636
    :goto_26
    return-object v2

    .line 630
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 632
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 633
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to encrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_44
    move-object v2, p1

    .line 636
    goto :goto_26
.end method

.method private extractId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "code"

    .prologue
    .line 341
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, split:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private getAccountCursor(Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Landroid/database/Cursor;
    .registers 10
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x0

    const-string v7, "AccountProviderAdapter"

    .line 381
    const-string v0, "AccountProviderAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountCursor sortOrder ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/AccountContent$AccountColumns;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 387
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "AccountProviderAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rows are selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v6
.end method

.method private getAccountCursor(ZLcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Landroid/database/Cursor;
    .registers 11
    .parameter "activated"
    .parameter "sortOrder"

    .prologue
    const-string v7, "AccountProviderAdapter"

    .line 434
    const-string v0, "AccountProviderAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountCursor activated ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortOrder ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/AccountContent$AccountColumns;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab_order"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_67

    const-string v4, " >= 0"

    :goto_39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "AccountProviderAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rows are selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v6

    .line 436
    .end local v6           #c:Landroid/database/Cursor;
    :cond_67
    const-string v4, " = -1"

    goto :goto_39
.end method

.method private getContentValues(Lcom/lge/sns/account/Account;)Landroid/content/ContentValues;
    .registers 12
    .parameter "account"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "user_id"

    const-string v8, "friend_updated"

    const-string v7, "feed_updated"

    .line 143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v1, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12a

    .line 145
    const-string v2, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_132

    .line 150
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13a

    .line 155
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getUpdated()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 160
    const-string v2, "updated"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    :cond_51
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getPublished()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 163
    const-string v2, "published"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    :cond_68
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v2

    if-eqz v2, :cond_77

    .line 167
    const-string v2, "icon_image"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 170
    :cond_77
    const-string v2, "tab_order"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getTabOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getFeedUpdated()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_142

    .line 173
    const-string v2, "feed_updated"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getFeedUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    :goto_9b
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getFriendListUpdated()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_149

    .line 178
    const-string v2, "friend_updated"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getFriendListUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    :goto_b2
    const-string v2, "notify"

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->isNotify()Z

    move-result v3

    if-eqz v3, :cond_150

    move v3, v6

    :goto_bb
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v0

    .line 185
    .local v0, cred:Lcom/lge/sns/account/Credential;
    if-eqz v0, :cond_129

    .line 186
    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_153

    .line 187
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_d7
    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15a

    .line 192
    const-string v2, "user_password"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_ea
    const-string v2, "remeber"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v3

    if-eqz v3, :cond_160

    move v3, v6

    :goto_f3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v2, "auto_updated"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isAutoUpdated()Z

    move-result v3

    if-eqz v3, :cond_162

    move v3, v6

    :goto_103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_119

    .line 199
    const-string v2, "account_uid"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_119
    const-string v2, "login"

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_164

    move v3, v6

    :goto_122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    :cond_129
    return-object v1

    .line 147
    .end local v0           #cred:Lcom/lge/sns/account/Credential;
    :cond_12a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sns_id should not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "title should not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_13a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url whoud not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_142
    const-string v2, "feed_updated"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 180
    :cond_149
    const-string v2, "friend_updated"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_b2

    :cond_150
    move v3, v5

    .line 182
    goto/16 :goto_bb

    .line 189
    .restart local v0       #cred:Lcom/lge/sns/account/Credential;
    :cond_153
    const-string v2, "user_id"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 194
    :cond_15a
    const-string v2, "user_password"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_ea

    :cond_160
    move v3, v5

    .line 196
    goto :goto_f3

    :cond_162
    move v3, v5

    .line 197
    goto :goto_103

    :cond_164
    move v3, v5

    .line 201
    goto :goto_122
.end method

.method private getContentValues(Ljava/lang/String;Lcom/lge/newbay/client/ICommunity$Feature;)Landroid/content/ContentValues;
    .registers 10
    .parameter "snsId"
    .parameter "feature"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "restriction"

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 211
    const-string v1, "feature_code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 216
    const-string v1, "feature_name"

    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "alertable"

    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->isAlertable()Z

    move-result v2

    if-eqz v2, :cond_83

    move v2, v5

    :goto_4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v1, "protected"

    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->isFeatureProtected()Z

    move-result v2

    if-eqz v2, :cond_85

    move v2, v5

    :goto_5c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    invoke-virtual {p2}, Lcom/lge/newbay/client/ICommunity$Feature;->getRestrictions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 224
    const-string v1, "restriction"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    :goto_72
    return-object v0

    .line 213
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "feature_code should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "feature_name should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_83
    move v2, v4

    .line 221
    goto :goto_4c

    :cond_85
    move v2, v4

    .line 222
    goto :goto_5c

    .line 226
    :cond_87
    const-string v1, "restriction"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_72
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/ICommunity$Restriction;)Landroid/content/ContentValues;
    .registers 7
    .parameter "snsId"
    .parameter "code"
    .parameter "restriction"

    .prologue
    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "feature_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Lcom/lge/newbay/client/ICommunity$Restriction;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 237
    const-string v1, "restriction_code"

    invoke-virtual {p3}, Lcom/lge/newbay/client/ICommunity$Restriction;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "restriction_name"

    invoke-virtual {p3}, Lcom/lge/newbay/client/ICommunity$Restriction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3}, Lcom/lge/newbay/client/ICommunity$Restriction;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 243
    const-string v1, "restriction_value"

    invoke-virtual {p3}, Lcom/lge/newbay/client/ICommunity$Restriction;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v0

    .line 239
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "restriction_code should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "restriction_value should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDate(Landroid/database/Cursor;I)Ljava/util/Date;
    .registers 6
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 355
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getFeatureCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "snsId"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_FEATURE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/FeatureContent$FeatureColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "AccountProviderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v6
.end method

.method private getId(Ljava/lang/String;)J
    .registers 9
    .parameter "snsId"

    .prologue
    const/4 v5, 0x0

    .line 125
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter;->ID_COLUMN:[Ljava/lang/String;

    const-string v3, "sns_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, c:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 132
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    move-result-wide v0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    :goto_21
    return-wide v0

    .line 135
    :cond_22
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    sget v0, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    int-to-long v0, v0

    goto :goto_21

    .line 135
    :catchall_29
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getRestrictionCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "fCode"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_RESTRICTION_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/RestrictionContent$RestrictionColumn;->COLUMNS:[Ljava/lang/String;

    const-string v3, "feature_code = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "AccountProviderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v6
.end method

.method private removeAccount(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v4, "AccountProviderAdapter"

    .line 450
    const-string v1, "AccountProviderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAccount uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, count:I
    if-nez v0, :cond_3b

    .line 455
    const-string v1, "AccountProviderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no rows exist for the uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3b
    return v0
.end method

.method private removeFeature(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "snsId"

    .prologue
    .line 466
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removefeature uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 472
    .local v0, count:I
    return v0
.end method

.method private removeFeatures(Ljava/lang/String;)V
    .registers 7
    .parameter "snsId"

    .prologue
    const-string v4, "sns_id = ?"

    .line 590
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 591
    .local v0, args:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_RESTRICTION_URI:Landroid/net/Uri;

    const-string v3, "sns_id = ?"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_FEATURE_URI:Landroid/net/Uri;

    const-string v3, "sns_id = ?"

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method private removeRestriction(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "snsId"

    .prologue
    .line 481
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRestriction uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "sns_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 487
    .local v0, count:I
    return v0
.end method


# virtual methods
.method public getAccount(Landroid/database/Cursor;)Lcom/lge/sns/account/Account;
    .registers 8
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    new-instance v0, Lcom/lge/sns/account/Account;

    invoke-direct {v0}, Lcom/lge/sns/account/Account;-><init>()V

    .line 294
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/sns/account/Account;->setId(J)V

    .line 295
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setSnsId(Ljava/lang/String;)V

    .line 296
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setTitle(Ljava/lang/String;)V

    .line 297
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setUrl(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setUpdated(Ljava/util/Date;)V

    .line 299
    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setPublished(Ljava/util/Date;)V

    .line 300
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setIconImage([B)V

    .line 301
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setTabOrder(I)V

    .line 302
    const/16 v2, 0xd

    invoke-direct {p0, p1, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setFeedUpdated(Ljava/util/Date;)V

    .line 303
    const/16 v2, 0xe

    invoke-direct {p0, p1, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getDate(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setFriendListUpdated(Ljava/util/Date;)V

    .line 304
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_af

    move v2, v5

    :goto_60
    invoke-virtual {v0, v2}, Lcom/lge/sns/account/Account;->setNotify(Z)V

    .line 306
    new-instance v1, Lcom/lge/sns/account/Credential;

    invoke-direct {v1}, Lcom/lge/sns/account/Credential;-><init>()V

    .line 307
    .local v1, credential:Lcom/lge/sns/account/Credential;
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setUserId(Ljava/lang/String;)V

    .line 308
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setUserPassword(Ljava/lang/String;)V

    .line 309
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b1

    move v2, v5

    :goto_87
    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setRemeber(Z)V

    .line 310
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b3

    move v2, v5

    :goto_93
    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setAutoUpdated(Z)V

    .line 311
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setUid(Ljava/lang/String;)V

    .line 312
    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_b5

    move v2, v5

    :goto_a8
    invoke-virtual {v1, v2}, Lcom/lge/sns/account/Credential;->setLogin(Z)V

    .line 313
    invoke-virtual {v0, v1}, Lcom/lge/sns/account/Account;->setCredential(Lcom/lge/sns/account/Credential;)V

    .line 314
    return-object v0

    .end local v1           #credential:Lcom/lge/sns/account/Credential;
    :cond_af
    move v2, v4

    .line 304
    goto :goto_60

    .restart local v1       #credential:Lcom/lge/sns/account/Credential;
    :cond_b1
    move v2, v4

    .line 309
    goto :goto_87

    :cond_b3
    move v2, v4

    .line 310
    goto :goto_93

    :cond_b5
    move v2, v4

    .line 312
    goto :goto_a8
.end method

.method public getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;
    .registers 10
    .parameter "snsId"

    .prologue
    .line 493
    const-string v0, "AccountProviderAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount snsId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v6, 0x0

    .line 496
    .local v6, account:Lcom/lge/sns/account/Account;
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/account/provider/AccountContent$AccountColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 499
    .local v7, c:Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 500
    invoke-virtual {p0, v7}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccount(Landroid/database/Cursor;)Lcom/lge/sns/account/Account;
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    move-result-object v6

    .line 503
    :cond_36
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v6

    .line 503
    :catchall_3a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountList(Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Ljava/util/List;
    .registers 7
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "AccountProviderAdapter"

    .line 360
    const-string v2, "AccountProviderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountList sortOrder ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccountCursor(Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    .line 363
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    :goto_23
    :try_start_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 367
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccount(Landroid/database/Cursor;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_31

    goto :goto_23

    .line 370
    :catchall_31
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 373
    const-string v2, "AccountProviderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items are selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-object v1
.end method

.method public getAccountList(ZLcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Ljava/util/List;
    .registers 8
    .parameter "activated"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/account/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "AccountProviderAdapter"

    .line 415
    const-string v2, "AccountProviderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountList activated ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sortOrder ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccountCursor(ZLcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    .line 418
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    :goto_2d
    :try_start_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 421
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getAccount(Landroid/database/Cursor;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3b

    goto :goto_2d

    .line 424
    :catchall_3b
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 427
    const-string v2, "AccountProviderAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items are selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v1
.end method

.method public getFeature(Landroid/database/Cursor;)Lcom/lge/newbay/client/ICommunity$Feature;
    .registers 10
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    new-instance v2, Lcom/lge/newbay/client/ICommunity$Feature;

    invoke-direct {v2}, Lcom/lge/newbay/client/ICommunity$Feature;-><init>()V

    .line 319
    .local v2, feature:Lcom/lge/newbay/client/ICommunity$Feature;
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->extractId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, fCode:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/lge/newbay/client/ICommunity$Feature;->setCode(Ljava/lang/String;)V

    .line 321
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/newbay/client/ICommunity$Feature;->setName(Ljava/lang/String;)V

    .line 322
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v7

    :goto_23
    invoke-virtual {v2, v5}, Lcom/lge/newbay/client/ICommunity$Feature;->setFeatureProtected(Z)V

    .line 323
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v7

    :goto_2e
    invoke-virtual {v2, v5}, Lcom/lge/newbay/client/ICommunity$Feature;->setAlertable(Z)V

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    invoke-direct {p0, v1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getRestrictionCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    .local v0, cursor:Landroid/database/Cursor;
    :goto_3a
    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 329
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getRestriction(Landroid/database/Cursor;)Lcom/lge/newbay/client/ICommunity$Restriction;

    move-result-object v4

    .line 330
    .local v4, res:Lcom/lge/newbay/client/ICommunity$Restriction;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_48

    goto :goto_3a

    .line 333
    .end local v4           #res:Lcom/lge/newbay/client/ICommunity$Restriction;
    :catchall_48
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    :cond_4d
    move v5, v6

    .line 322
    goto :goto_23

    :cond_4f
    move v5, v6

    .line 323
    goto :goto_2e

    .line 333
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    invoke-virtual {v2, v3}, Lcom/lge/newbay/client/ICommunity$Feature;->setRestrictions(Ljava/util/List;)V

    .line 337
    return-object v2
.end method

.method public getFeatureList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "snsId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getFeatureCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 513
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Feature;>;"
    :goto_9
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 517
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getFeature(Landroid/database/Cursor;)Lcom/lge/newbay/client/ICommunity$Feature;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_9

    .line 520
    :catchall_17
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 523
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items are selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v1
.end method

.method public getRestriction(Landroid/database/Cursor;)Lcom/lge/newbay/client/ICommunity$Restriction;
    .registers 4
    .parameter "c"

    .prologue
    .line 347
    new-instance v0, Lcom/lge/newbay/client/ICommunity$Restriction;

    invoke-direct {v0}, Lcom/lge/newbay/client/ICommunity$Restriction;-><init>()V

    .line 348
    .local v0, rest:Lcom/lge/newbay/client/ICommunity$Restriction;
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/ICommunity$Restriction;->setCode(Ljava/lang/String;)V

    .line 349
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/ICommunity$Restriction;->setName(Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/newbay/client/ICommunity$Restriction;->setValue(Ljava/lang/String;)V

    .line 351
    return-object v0
.end method

.method public getRestrictionList(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "featureCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Restriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getRestrictionCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 530
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    :goto_9
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 534
    invoke-virtual {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getRestriction(Landroid/database/Cursor;)Lcom/lge/newbay/client/ICommunity$Restriction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_9

    .line 537
    :catchall_17
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    const-string v2, "AccountProviderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items are selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-object v1
.end method

.method public removeAccount(J)I
    .registers 4
    .parameter "id"

    .prologue
    .line 445
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeAccount(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public removeFeature(Ljava/lang/String;)I
    .registers 3
    .parameter "snsId"

    .prologue
    .line 461
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_FEATURE_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeFeature(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRestriction(Ljava/lang/String;)I
    .registers 3
    .parameter "snsId"

    .prologue
    .line 476
    sget-object v0, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_RESTRICTION_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeRestriction(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAccount(Lcom/lge/sns/account/Account;)Landroid/net/Uri;
    .registers 11
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const-string v7, "AccountProviderAdapter"

    .line 79
    const-string v4, "AccountProviderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAccount\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_f1

    .line 82
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getContentValues(Lcom/lge/sns/account/Account;)Landroid/content/ContentValues;

    move-result-object v0

    .line 83
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v1

    .line 85
    .local v1, id:J
    sget v4, Lcom/lge/sns/account/Account;->NOT_ASSIGNED:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_76

    .line 86
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    .line 87
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Both account id and sn id have null value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_3a
    const-string v4, "AccountProviderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The id is not assigned. trying to find id for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getId(Ljava/lang/String;)J

    move-result-wide v1

    .line 94
    const-string v4, "AccountProviderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_76
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_cb

    .line 100
    sget-object v4, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 101
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b1

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The account id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :cond_b1
    const-string v4, "AccountProviderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The account values are updated. uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 119
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :goto_ca
    return-object v4

    .line 109
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #id:J
    :cond_cb
    iget-object v4, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getContentValues(Lcom/lge/sns/account/Account;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 112
    .restart local v3       #uri:Landroid/net/Uri;
    const-string v4, "AccountProviderAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The account values are inserted. uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 114
    goto :goto_ca

    .line 117
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :cond_f1
    const-string v4, "AccountProviderAdapter"

    const-string v4, "The account value for setAccount is null"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 119
    goto :goto_ca
.end method

.method public setCredential(JLcom/lge/sns/account/Credential;)I
    .registers 11
    .parameter "id"
    .parameter "credential"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, uri:Landroid/net/Uri;
    if-eqz p3, :cond_5e

    .line 255
    const-string v3, "user_id"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v3, "user_password"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v3, "remeber"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->isRemeber()Z

    move-result v4

    if-eqz v4, :cond_7e

    move v4, v6

    :goto_2e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v3, "auto_updated"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->isAutoUpdated()Z

    move-result v4

    if-eqz v4, :cond_80

    move v4, v6

    :goto_3e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v3, "account_uid"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "login"

    invoke-virtual {p3}, Lcom/lge/sns/account/Credential;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_82

    move v4, v6

    :goto_57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    :cond_5e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 265
    iget-object v3, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .end local v0           #sb:Ljava/lang/StringBuffer;
    :cond_7e
    move v4, v5

    .line 257
    goto :goto_2e

    :cond_80
    move v4, v5

    .line 258
    goto :goto_3e

    :cond_82
    move v4, v5

    .line 260
    goto :goto_57
.end method

.method public setFeatures(Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    .registers 12
    .parameter "snsId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ICommunity$Feature;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Feature;>;"
    const/4 v5, 0x0

    .line 572
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->removeFeatures(Ljava/lang/String;)V

    .line 573
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/newbay/client/ICommunity$Feature;

    .line 574
    .local v0, feature:Lcom/lge/newbay/client/ICommunity$Feature;
    iget-object v6, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_FEATURE_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getContentValues(Ljava/lang/String;Lcom/lge/newbay/client/ICommunity$Feature;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 576
    invoke-virtual {v0}, Lcom/lge/newbay/client/ICommunity$Feature;->getRestrictions()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 577
    invoke-virtual {v0}, Lcom/lge/newbay/client/ICommunity$Feature;->getRestrictions()Ljava/util/List;

    move-result-object v3

    .line 578
    .local v3, resList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/newbay/client/ICommunity$Restriction;

    .line 579
    .local v4, restriction:Lcom/lge/newbay/client/ICommunity$Restriction;
    iget-object v6, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_RESTRICTION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/lge/newbay/client/ICommunity$Feature;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v4}, Lcom/lge/sns/account/provider/AccountProviderAdapter;->getContentValues(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/ICommunity$Restriction;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2e

    .line 584
    .end local v0           #feature:Lcom/lge/newbay/client/ICommunity$Feature;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ICommunity$Restriction;>;"
    .end local v4           #restriction:Lcom/lge/newbay/client/ICommunity$Restriction;
    :cond_4b
    return-object v5
.end method

.method public setNotify(JZ)I
    .registers 10
    .parameter "id"
    .parameter "noti"

    .prologue
    .line 269
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "notify"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 274
    sget-object v3, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 275
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public setStatus(JZ)I
    .registers 10
    .parameter "id"
    .parameter "status"

    .prologue
    .line 597
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "login"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 600
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 601
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 602
    sget-object v3, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 603
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateAccount(JLcom/lge/sns/account/Account;)I
    .registers 10
    .parameter "id"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "sns_id"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "title"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "url"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "updated"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string v2, "published"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string v2, "icon_image"

    invoke-virtual {p3}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 288
    sget-object v2, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 289
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public updateFeedUpdated(JLjava/util/Date;)I
    .registers 10
    .parameter "id"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    const-string v5, "feed_updated"

    .line 547
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_24

    .line 549
    const-string v2, "feed_updated"

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    :goto_17
    sget-object v2, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 554
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 551
    .end local v0           #uri:Landroid/net/Uri;
    :cond_24
    const-string v2, "feed_updated"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public updateFriendListUpdated(JLjava/util/Date;)I
    .registers 10
    .parameter "id"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    const-string v5, "friend_updated"

    .line 559
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 560
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_24

    .line 561
    const-string v2, "friend_updated"

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    :goto_17
    sget-object v2, Lcom/lge/sns/account/linkbook/LinkbookAccount;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 566
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 563
    .end local v0           #uri:Landroid/net/Uri;
    :cond_24
    const-string v2, "friend_updated"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_17
.end method
