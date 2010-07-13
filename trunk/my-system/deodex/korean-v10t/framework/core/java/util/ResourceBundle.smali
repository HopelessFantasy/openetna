.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$MissingBundle;
    }
.end annotation


# static fields
.field private static final MISSING:Ljava/util/ResourceBundle;

.field private static final MISSINGBASE:Ljava/util/ResourceBundle;

.field private static final cache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private static defaultLocale:Ljava/util/Locale;


# instance fields
.field private locale:Ljava/util/Locale;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    .line 107
    new-instance v0, Ljava/util/ResourceBundle$MissingBundle;

    invoke-direct {v0}, Ljava/util/ResourceBundle$MissingBundle;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .line 109
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle;->defaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 3
    .parameter "bundleName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .parameter "bundleName"
    .parameter "locale"

    .prologue
    .line 159
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 4
    .parameter "bundleName"
    .parameter "locale"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 216
    if-nez p2, :cond_8

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 220
    :cond_8
    invoke-static {p0, p1, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 10
    .parameter "bundleName"
    .parameter "locale"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    const-string v5, "_"

    .line 226
    if-eqz p0, :cond_95

    .line 229
    sget-object v3, Ljava/util/ResourceBundle;->defaultLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 230
    sget-object v3, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sput-object v3, Ljava/util/ResourceBundle;->defaultLocale:Ljava/util/Locale;

    .line 234
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 235
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, localeName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_42

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    :cond_42
    const/4 v3, 0x0

    invoke-static {p0, v2, v3, p2}, Ljava/util/ResourceBundle;->handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .local v0, bundle:Ljava/util/ResourceBundle;
    if-eqz v0, :cond_4b

    move-object v1, v0

    .line 249
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .local v1, bundle:Ljava/util/ResourceBundle;
    :goto_4a
    return-object v1

    .line 244
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #localeName:Ljava/lang/String;
    :cond_4b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .restart local v2       #localeName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6c

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_6c
    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2}, Ljava/util/ResourceBundle;->handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    if-eqz v0, :cond_75

    move-object v1, v0

    .line 249
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    goto :goto_4a

    .line 251
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    :cond_75
    new-instance v3, Ljava/util/MissingResourceException;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #localeName:Ljava/lang/String;
    :cond_95
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method private static handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 11
    .parameter "base"
    .parameter "locale"
    .parameter "loadBase"
    .parameter "loader"

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, bundle:Ljava/util/ResourceBundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, bundleName:Ljava/lang/String;
    if-eqz p3, :cond_40

    move-object v2, p3

    .line 343
    .local v2, cacheKey:Ljava/lang/Object;
    :goto_15
    sget-object v6, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    monitor-enter v6

    .line 344
    :try_start_18
    sget-object v4, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 345
    .local v4, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    if-nez v4, :cond_2e

    .line 346
    new-instance v4, Ljava/util/Hashtable;

    .end local v4           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    const/16 v5, 0xd

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    .line 347
    .restart local v4       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    sget-object v5, Ljava/util/ResourceBundle;->cache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    move-object v5, v4

    .line 349
    .end local v4           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .local v5, loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_43

    .line 350
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cacheKey:Ljava/lang/Object;
    check-cast v2, Ljava/util/ResourceBundle;

    .line 351
    .local v2, result:Ljava/util/ResourceBundle;
    if-eqz v2, :cond_64

    .line 352
    sget-object v3, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .end local v3           #bundleName:Ljava/lang/String;
    if-ne v2, v3, :cond_46

    .line 353
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .line 444
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .end local v2           #result:Ljava/util/ResourceBundle;
    .end local p1
    .end local p2
    .local p0, bundle:Ljava/util/ResourceBundle;
    :goto_3f
    return-object p1

    .line 341
    .end local v5           #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundleName:Ljava/lang/String;
    .local p0, base:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :cond_40
    const-string v2, "null"

    goto :goto_15

    .line 349
    .end local p0           #base:Ljava/lang/String;
    .local v2, cacheKey:Ljava/lang/Object;
    :catchall_43
    move-exception p0

    :try_start_44
    monitor-exit v6
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    .line 355
    .end local v3           #bundleName:Ljava/lang/String;
    .local v2, result:Ljava/util/ResourceBundle;
    .restart local v5       #loaderCache:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ResourceBundle;>;"
    .restart local p0       #base:Ljava/lang/String;
    :cond_46
    sget-object v3, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    if-ne v2, v3, :cond_61

    .line 356
    if-nez p2, :cond_50

    .line 357
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    goto :goto_3f

    .line 359
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, base:Ljava/lang/String;
    :cond_50
    invoke-static {p1}, Ljava/util/ResourceBundle;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    .local p1, extension:Ljava/lang/String;
    if-nez p1, :cond_5a

    .line 361
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    goto :goto_3f

    .line 363
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, base:Ljava/lang/String;
    :cond_5a
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    .end local p0           #base:Ljava/lang/String;
    move-object p1, p0

    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    goto :goto_3f

    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, base:Ljava/lang/String;
    .local p1, locale:Ljava/lang/String;
    :cond_61
    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    move-object p1, v2

    .line 365
    goto :goto_3f

    .line 376
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .restart local v3       #bundleName:Ljava/lang/String;
    .local p0, base:Ljava/lang/String;
    :cond_64
    :try_start_64
    const-string v2, "org.apache.harmony.luni.internal.locale."

    .end local v2           #result:Ljava/util/ResourceBundle;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 377
    const/16 v2, 0x28

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, icuBundleName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, icuLocale:Ljava/lang/String;
    :goto_7d
    invoke-static {v2, v4}, Lcom/ibm/icu4jni/util/Resources;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ResourceBundle;
    :try_end_80
    .catch Ljava/lang/LinkageError; {:try_start_64 .. :try_end_80} :catch_da
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_80} :catch_dd

    move-result-object v1

    .end local v2           #icuBundleName:Ljava/lang/String;
    .end local v4           #icuLocale:Ljava/lang/String;
    :cond_81
    :goto_81
    move-object v2, v1

    .line 394
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local v2, bundle:Ljava/util/ResourceBundle;
    :goto_82
    if-eqz v2, :cond_87

    .line 395
    invoke-direct {v2, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/lang/String;)V

    .line 398
    :cond_87
    if-nez v2, :cond_10e

    .line 399
    const/16 v1, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, fileName:Ljava/lang/String;
    new-instance v4, Ljava/util/ResourceBundle$1;

    invoke-direct {v4, p3, v1}, Ljava/util/ResourceBundle$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 410
    .local v4, stream:Ljava/io/InputStream;
    if-eqz v4, :cond_10e

    .line 413
    :try_start_9e
    new-instance v1, Ljava/util/PropertyResourceBundle;

    .end local v1           #fileName:Ljava/lang/String;
    invoke-direct {v1, v4}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_e0

    .line 415
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .local v1, bundle:Ljava/util/ResourceBundle;
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 417
    invoke-direct {v1, p1}, Ljava/util/ResourceBundle;->setLocale(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_10c

    .line 423
    .end local v4           #stream:Ljava/io/InputStream;
    :goto_a9
    invoke-static {p1}, Ljava/util/ResourceBundle;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    .local p1, extension:Ljava/lang/String;
    if-eqz v1, :cond_e8

    .line 425
    if-eqz p1, :cond_bb

    .line 426
    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    .end local p2
    move-result-object p0

    .line 428
    .local p0, parent:Ljava/util/ResourceBundle;
    if-eqz p0, :cond_bb

    .line 429
    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 432
    .end local p0           #parent:Ljava/util/ResourceBundle;
    :cond_bb
    invoke-virtual {v5, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    move-object p1, v1

    .line 433
    goto/16 :goto_3f

    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local v2, icuBundleName:Ljava/lang/String;
    .local p0, base:Ljava/lang/String;
    .local p1, locale:Ljava/lang/String;
    .restart local p2
    :cond_c2
    move-object v4, p1

    .line 378
    goto :goto_7d

    .line 382
    .end local v2           #icuBundleName:Ljava/lang/String;
    :cond_c4
    const/4 v2, 0x1

    :try_start_c5
    invoke-static {v3, v2, p3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 383
    .local v2, bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/ResourceBundle;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 384
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bundleClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v2

    check-cast v0, Ljava/util/ResourceBundle;

    move-object v1, v0
    :try_end_d9
    .catch Ljava/lang/LinkageError; {:try_start_c5 .. :try_end_d9} :catch_da
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d9} :catch_dd

    goto :goto_81

    .line 388
    :catch_da
    move-exception v2

    move-object v2, v1

    .line 390
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local v2, bundle:Ljava/util/ResourceBundle;
    goto :goto_82

    .line 389
    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    :catch_dd
    move-exception v2

    move-object v2, v1

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    goto :goto_82

    .line 415
    .restart local v4       #stream:Ljava/io/InputStream;
    :catchall_e0
    move-exception v1

    :try_start_e1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e5} :catch_e5

    .line 418
    :catch_e5
    move-exception v1

    move-object v1, v2

    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    goto :goto_a9

    .line 436
    .end local v4           #stream:Ljava/io/InputStream;
    .local p1, extension:Ljava/lang/String;
    :cond_e8
    if-eqz p1, :cond_fe

    if-nez p2, :cond_f2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_fe

    .line 437
    :cond_f2
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->handleGetBundle(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    .line 438
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    if-eqz p0, :cond_ff

    .line 439
    invoke-virtual {v5, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    .line 440
    goto/16 :goto_3f

    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .local p0, base:Ljava/lang/String;
    :cond_fe
    move-object p0, v1

    .line 443
    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .local p0, bundle:Ljava/util/ResourceBundle;
    :cond_ff
    if-eqz p2, :cond_109

    sget-object p1, Ljava/util/ResourceBundle;->MISSINGBASE:Ljava/util/ResourceBundle;

    .end local p1           #extension:Ljava/lang/String;
    :goto_103
    invoke-virtual {v5, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const/4 p1, 0x0

    goto/16 :goto_3f

    .line 443
    .restart local p1       #extension:Ljava/lang/String;
    :cond_109
    sget-object p1, Ljava/util/ResourceBundle;->MISSING:Ljava/util/ResourceBundle;

    goto :goto_103

    .line 418
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    .restart local v4       #stream:Ljava/io/InputStream;
    .local p0, base:Ljava/lang/String;
    .local p1, locale:Ljava/lang/String;
    :catch_10c
    move-exception v2

    goto :goto_a9

    .end local v1           #bundle:Ljava/util/ResourceBundle;
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v2       #bundle:Ljava/util/ResourceBundle;
    :cond_10e
    move-object v1, v2

    .end local v2           #bundle:Ljava/util/ResourceBundle;
    .restart local v1       #bundle:Ljava/util/ResourceBundle;
    goto :goto_a9
.end method

.method private setLocale(Ljava/lang/String;)V
    .registers 11
    .parameter "name"

    .prologue
    const/16 v8, 0x5f

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 479
    const-string v2, ""

    .local v2, language:Ljava/lang/String;
    const-string v0, ""

    .local v0, country:Ljava/lang/String;
    const-string v4, ""

    .line 480
    .local v4, variant:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_4b

    .line 481
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 482
    .local v3, nextIndex:I
    if-ne v3, v7, :cond_1a

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 485
    :cond_1a
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 486
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 487
    move v1, v3

    .line 488
    .local v1, index:I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 489
    if-ne v3, v7, :cond_33

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 492
    :cond_33
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 493
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 494
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 498
    .end local v1           #index:I
    .end local v3           #nextIndex:I
    :cond_4b
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 499
    return-void
.end method

.method private static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 471
    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 472
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 473
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 475
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method


# virtual methods
.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter "key"

    .prologue
    .line 291
    move-object v2, p0

    .line 293
    .local v2, theParent:Ljava/util/ResourceBundle;
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 294
    .local v1, result:Ljava/lang/Object;
    if-eqz v1, :cond_8

    .line 295
    return-object v1

    .line 297
    :cond_8
    move-object v0, v2

    .line 298
    .local v0, last:Ljava/util/ResourceBundle;
    iget-object v2, v2, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 299
    if-nez v2, :cond_1

    .line 300
    new-instance v3, Ljava/util/MissingResourceException;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 467
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 468
    return-void
.end method
