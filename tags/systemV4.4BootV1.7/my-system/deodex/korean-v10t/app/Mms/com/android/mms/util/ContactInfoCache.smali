.class public Lcom/android/mms/util/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(number,?)"

.field private static final CONTACT_ID_COLUMN:I = 0x3

.field private static final CONTACT_METHOD_ID_COLUMN:I = 0x2

.field private static final CONTACT_METHOD_NAME_COLUMN:I = 0x0

.field private static final CONTACT_METHOD_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACT_METHOD_SELECTION:Ljava/lang/String; = "data=?"

.field private static final CONTACT_METHOD_STATUS_COLUMN:I = 0x1

.field private static final CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final CONTACT_NAME_COLUMN:I = 0x2

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x4

.field private static final LOCAL_DEBUG:Z = false

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONE_LABEL_COLUMN:I = 0x1

.field private static final PHONE_NUMBER_COLUMN:I = 0x0

.field private static final REBUILD_DELAY:J = 0x1388L

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "MMS/Cache"

.field private static sInstance:Lcom/android/mms/util/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/util/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheRebuildLock:Ljava/lang/Object;

.field private mCacheRebuilder:Ljava/lang/Thread;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEmailCacheInvalidated:Z

.field private mPhoneCacheInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "mode"

    .line 63
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

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "mode"

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 81
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "with_presence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 84
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "mode"

    aput-object v7, v0, v4

    const-string v1, "person"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->CONTACT_METHOD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    .line 107
    iput-boolean v2, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    .line 162
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/mms/util/ContactInfoCache$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/util/ContactInfoCache$1;-><init>(Lcom/android/mms/util/ContactInfoCache;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/mms/util/ContactInfoCache$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/mms/util/ContactInfoCache$2;-><init>(Lcom/android/mms/util/ContactInfoCache;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ContactInfoCache;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/ContactInfoCache;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/ContactInfoCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/util/ContactInfoCache;->startCacheRebuilder()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/util/ContactInfoCache;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/util/ContactInfoCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/util/ContactInfoCache;->rebuildCache()V

    return-void
.end method

.method private getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "number"

    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 417
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 418
    iget-object v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 420
    :goto_10
    return-object v1

    :cond_11
    move-object v1, p2

    goto :goto_10
.end method

.method private static getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "displayString"

    .prologue
    .line 424
    sget-object v1, Landroid/provider/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 425
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    :goto_11
    return-object v1

    :cond_12
    move-object v1, p0

    goto :goto_11
.end method

.method public static getInstance()Lcom/android/mms/util/ContactInfoCache;
    .registers 1

    .prologue
    .line 222
    sget-object v0, Lcom/android/mms/util/ContactInfoCache;->sInstance:Lcom/android/mms/util/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .registers 3
    .parameter "presence"

    .prologue
    .line 433
    if-eqz p1, :cond_7

    .line 434
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 437
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getRebuildList(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 499
    :try_start_3
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 501
    if-eqz p2, :cond_d

    .line 502
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 510
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v3

    .line 505
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #name:Ljava/lang/String;
    :cond_28
    if-eqz p1, :cond_d

    .line 506
    :try_start_2a
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 510
    .end local v1           #name:Ljava/lang/String;
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_25

    .line 511
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 215
    new-instance v0, Lcom/android/mms/util/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->sInstance:Lcom/android/mms/util/ContactInfoCache;

    .line 216
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 574
    const-string v0, "MMS/Cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ContactInfoCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method private queryContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .registers 12
    .parameter "context"
    .parameter "number"

    .prologue
    .line 292
    new-instance v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    invoke-direct {v7, p0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    .line 293
    .local v7, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iput-object p2, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    .line 298
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatchEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, number7match:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "PHONE_NUMBERS_EQUAL(number,?)"

    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 312
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 313
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    .line 314
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 315
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    .line 316
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_58

    .line 324
    :cond_54
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    return-object v7

    .line 324
    :catchall_58
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryEmailDisplayName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .registers 13
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 444
    new-instance v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    invoke-direct {v8, p0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    .line 446
    .local v8, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->CONTACT_METHOD_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/ContactInfoCache;->CONTACT_METHOD_PROJECTION:[Ljava/lang/String;

    const-string v4, "data=?"

    iget-object v5, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 454
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_46

    .line 456
    :cond_1e
    :try_start_1e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 457
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 459
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    .line 461
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 462
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 463
    iput-object v9, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_47

    .line 472
    .end local v9           #name:Ljava/lang/String;
    :cond_43
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_46
    return-object v8

    .line 472
    :catchall_47
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private rebuildCache()V
    .registers 11

    .prologue
    .line 526
    :cond_0
    const-wide/16 v8, 0x1388

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_82

    .line 530
    :goto_5
    const/4 v6, 0x0

    .line 531
    .local v6, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 532
    .local v1, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    monitor-enter v8

    .line 535
    :try_start_a
    iget-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    if-nez v9, :cond_17

    iget-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    if-nez v9, :cond_17

    .line 536
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 537
    monitor-exit v8

    return-void

    .line 539
    :cond_17
    iget-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    if-eqz v9, :cond_24

    .line 540
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_5a

    .line 541
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    :try_start_21
    iput-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_84

    move-object v6, v7

    .line 543
    .end local v7           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    :try_start_24
    iget-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    if-eqz v9, :cond_31

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_5a

    .line 545
    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    :try_start_2e
    iput-boolean v9, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_87

    move-object v1, v2

    .line 547
    .end local v2           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    :try_start_31
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_5a

    .line 550
    invoke-direct {p0, v6, v1}, Lcom/android/mms/util/ContactInfoCache;->getRebuildList(Ljava/util/List;Ljava/util/List;)V

    .line 552
    if-eqz v6, :cond_5d

    .line 554
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 555
    .local v5, phone:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 556
    :try_start_4a
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9, v5}, Lcom/android/mms/util/ContactInfoCache;->queryContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 557
    .local v3, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    monitor-exit v8

    goto :goto_3b

    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_57
    move-exception v9

    monitor-exit v8
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_57

    throw v9

    .line 547
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #phone:Ljava/lang/String;
    :catchall_5a
    move-exception v9

    :goto_5b
    :try_start_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v9

    .line 561
    :cond_5d
    if-eqz v1, :cond_0

    .line 563
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 564
    .local v0, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 565
    :try_start_72
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9, v0}, Lcom/android/mms/util/ContactInfoCache;->queryEmailDisplayName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 566
    .restart local v3       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    monitor-exit v8

    goto :goto_63

    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_7f
    move-exception v9

    monitor-exit v8
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_7f

    throw v9

    .line 527
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_82
    move-exception v8

    goto :goto_5

    .line 547
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_84
    move-exception v9

    move-object v6, v7

    .end local v7           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5b

    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_87
    move-exception v9

    move-object v1, v2

    .end local v2           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5b
.end method

.method private startCacheRebuilder()V
    .registers 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    if-nez v0, :cond_15

    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/ContactInfoCache$3;

    invoke-direct {v1, p0}, Lcom/android/mms/util/ContactInfoCache$3;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 489
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 491
    :cond_15
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 8

    .prologue
    const-string v3, "key="

    const-string v3, "MMS/Cache"

    .line 226
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 227
    :try_start_7
    const-string v4, "MMS/Cache"

    const-string v5, "ContactInfoCache.dump"

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 231
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_5e

    .line 232
    const-string v4, "MMS/Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cacheEntry={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 237
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catchall_5b
    move-exception v4

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5b

    throw v4

    .line 234
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #name:Ljava/lang/String;
    :cond_5e
    :try_start_5e
    const-string v4, "MMS/Cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cacheEntry={null}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 237
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v2           #name:Ljava/lang/String;
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_5b

    .line 238
    return-void
.end method

.method public getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .registers 5
    .parameter "context"
    .parameter "numberOrEmail"

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 247
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    goto :goto_b
.end method

.method public getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .registers 7
    .parameter "context"
    .parameter "email"
    .parameter "allowQuery"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 396
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 397
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 398
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz p3, :cond_1b

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v2

    if-nez v2, :cond_24

    .line 399
    :cond_1b
    monitor-exit v1

    move-object v1, v0

    .line 408
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :goto_1d
    return-object v1

    .line 401
    :cond_1e
    if-nez p3, :cond_24

    .line 402
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_1d

    .line 405
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactInfoCache;->queryEmailDisplayName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 406
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    monitor-exit v1

    move-object v1, v0

    goto :goto_1d

    .line 409
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .registers 7
    .parameter "context"
    .parameter "number"
    .parameter "allowQuery"

    .prologue
    .line 265
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 267
    :try_start_7
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 268
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 273
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz p3, :cond_1f

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v2

    if-nez v2, :cond_28

    .line 274
    :cond_1f
    monitor-exit v1

    move-object v1, v0

    .line 283
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :goto_21
    return-object v1

    .line 276
    :cond_22
    if-nez p3, :cond_28

    .line 277
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_21

    .line 280
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ContactInfoCache;->queryContactInfoByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 281
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    monitor-exit v1

    move-object v1, v0

    goto :goto_21

    .line 284
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "address"

    .prologue
    const-string v7, ";"

    const-string v6, ""

    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 340
    const-string v5, ""

    move-object v5, v6

    .line 362
    :goto_d
    return-object v5

    .line 343
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v3, result:Ljava/lang/StringBuilder;
    const-string v5, ";"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v2, :cond_53

    aget-object v4, v0, v1

    .line 345
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3a

    .line 346
    const-string v5, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 348
    const v5, 0x1040075

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 349
    :cond_3d
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 350
    invoke-virtual {p0, p1, v4}, Lcom/android/mms/util/ContactInfoCache;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 352
    :cond_4b
    invoke-direct {p0, p1, v4}, Lcom/android/mms/util/ContactInfoCache;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 357
    .end local v4           #value:Ljava/lang/String;
    :cond_53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5f

    .line 359
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 362
    :cond_5f
    const-string v5, ""

    move-object v5, v6

    goto :goto_d
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v3, 0x1

    .line 371
    sget-object v2, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 372
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 374
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/ContactInfoCache;->getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    :goto_15
    return-object v2

    .line 377
    :cond_16
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 378
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_23

    iget-object v2, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 379
    iget-object v2, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    goto :goto_15

    :cond_23
    move-object v2, p2

    .line 382
    goto :goto_15
.end method

.method public invalidateCache()V
    .registers 6

    .prologue
    .line 191
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 192
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/util/ContactInfoCache$CacheEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 194
    .local v1, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->access$402(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Z)Z

    goto :goto_d

    .line 196
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/util/ContactInfoCache$CacheEntry;>;"
    .end local v1           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_24
    move-exception v4

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 197
    return-void
.end method

.method public invalidateContact(Ljava/lang/String;)V
    .registers 5
    .parameter "emailOrNumber"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 204
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 205
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_11

    .line 206
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->access$402(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Z)Z

    .line 208
    :cond_11
    monitor-exit v1

    .line 209
    return-void

    .line 208
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v2
.end method
