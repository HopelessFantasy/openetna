.class final Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationList$CachingNameStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachingNameStoreImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationList/CachingNameStoreImpl"


# instance fields
.field private final mCachedNames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPhonesObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "ctxt"

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mCachedNames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 699
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mContext:Landroid/content/Context;

    .line 700
    new-instance v0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl$1;-><init>(Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mPhonesObserver:Landroid/database/ContentObserver;

    .line 706
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mPhonesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 709
    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mCachedNames:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getContactNames(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "addresses"

    .prologue
    .line 716
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mCachedNames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 717
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_c

    move-object v5, v4

    .line 740
    .end local v4           #value:Ljava/lang/String;
    .local v5, value:Ljava/lang/String;
    :goto_b
    return-object v5

    .line 720
    .end local v5           #value:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    :cond_c
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 721
    .local v6, values:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_47

    .line 722
    const-string v7, "ConversationList/CachingNameStoreImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looking up name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    .line 724
    .local v0, cache:Lcom/android/mms/util/ContactInfoCache;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 739
    .end local v0           #cache:Lcom/android/mms/util/ContactInfoCache;
    :goto_40
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->mCachedNames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 740
    .end local v4           #value:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    goto :goto_b

    .line 726
    .end local v5           #value:Ljava/lang/String;
    .restart local v4       #value:Ljava/lang/String;
    :cond_47
    const/4 v2, 0x0

    .line 727
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_49
    array-length v7, v6

    if-ge v1, v7, :cond_60

    .line 728
    aget-object v7, v6, v1

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->getContactNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 729
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 731
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 732
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const/4 v1, 0x1

    :goto_6c
    array-length v7, v6

    if-ge v1, v7, :cond_7c

    .line 734
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    aget-object v7, v6, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 737
    :cond_7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_40
.end method
