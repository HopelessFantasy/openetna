.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Ljava/util/logging/Level; = null

.field public static final CONFIG:Ljava/util/logging/Level; = null

.field public static final FINE:Ljava/util/logging/Level; = null

.field public static final FINER:Ljava/util/logging/Level; = null

.field public static final FINEST:Ljava/util/logging/Level; = null

.field public static final INFO:Ljava/util/logging/Level; = null

.field public static final OFF:Ljava/util/logging/Level; = null

.field public static final SEVERE:Ljava/util/logging/Level; = null

.field public static final WARNING:Ljava/util/logging/Level; = null

.field private static final levels:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private final name:Ljava/lang/String;

.field private transient rb:Ljava/util/ResourceBundle;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ljava/util/logging/Level;->levels:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "OFF"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 65
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "SEVERE"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 72
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "WARNING"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 79
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "INFO"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 86
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "CONFIG"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 93
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINE"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 100
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINER"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 107
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINEST"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 114
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "ALL"

    const/high16 v2, -0x8000

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "level"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "level"
    .parameter "resourceBundleName"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-nez p1, :cond_11

    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "logging.1C"

    invoke-static {v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_11
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 240
    iput p2, p0, Ljava/util/logging/Level;->value:I

    .line 241
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 242
    if-eqz p3, :cond_27

    .line 244
    :try_start_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p3, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_27} :catch_31

    .line 252
    :cond_27
    :goto_27
    sget-object v1, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v1

    .line 253
    :try_start_2a
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_37

    .line 255
    return-void

    .line 248
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_27

    .line 254
    .end local v0           #e:Ljava/util/MissingResourceException;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p0, :cond_e

    .line 136
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "logging.1C"

    invoke-static {v6}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_e
    :try_start_e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_35

    move-result v4

    .line 143
    .local v4, nameAsInt:I
    const/4 v2, 0x1

    .line 149
    .local v2, isNameAnInt:Z
    :goto_13
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v5

    .line 150
    :try_start_16
    sget-object v6, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    .line 151
    .local v3, level:Ljava/util/logging/Level;
    invoke-virtual {v3}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 152
    monitor-exit v5

    move-object v5, v3

    .line 174
    .end local v3           #level:Ljava/util/logging/Level;
    :goto_34
    return-object v5

    .line 144
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isNameAnInt:Z
    .end local v4           #nameAsInt:I
    :catch_35
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    .line 146
    .restart local v4       #nameAsInt:I
    const/4 v2, 0x0

    .restart local v2       #isNameAnInt:Z
    goto :goto_13

    .line 156
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_39
    if-eqz v2, :cond_56

    .line 161
    sget-object v6, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Level;

    .line 162
    .restart local v3       #level:Ljava/util/logging/Level;
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_41

    .line 163
    monitor-exit v5

    move-object v5, v3

    goto :goto_34

    .line 167
    .end local v3           #level:Ljava/util/logging/Level;
    :cond_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_65

    .line 169
    if-nez v2, :cond_68

    .line 171
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "logging.1D"

    invoke-static {v6, p0}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_65
    move-exception v6

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v6

    .line 174
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_68
    new-instance v5, Ljava/util/logging/Level;

    invoke-direct {v5, p0, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    goto :goto_34
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 329
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 331
    :try_start_7
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_f
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_f} :catch_10

    .line 336
    :cond_f
    :goto_f
    return-void

    .line 332
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 333
    .local v0, e:Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    goto :goto_f
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 296
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    monitor-enter v2

    .line 297
    :try_start_3
    sget-object v3, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level;

    .line 298
    .local v1, level:Ljava/util/logging/Level;
    iget v3, p0, Ljava/util/logging/Level;->value:I

    iget v4, v1, Ljava/util/logging/Level;->value:I

    if-ne v3, v4, :cond_9

    .line 301
    iget-object v3, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget-object v4, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 304
    iget-object v3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-ne v3, v4, :cond_2e

    .line 305
    monitor-exit v2

    move-object v2, v1

    .line 313
    .end local v1           #level:Ljava/util/logging/Level;
    :goto_2d
    return-object v2

    .line 306
    .restart local v1       #level:Ljava/util/logging/Level;
    :cond_2e
    iget-object v3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    iget-object v4, v1, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 308
    monitor-exit v2

    move-object v2, v1

    goto :goto_2d

    .line 312
    .end local v1           #level:Ljava/util/logging/Level;
    :cond_3f
    sget-object v3, Ljava/util/logging/Level;->levels:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    monitor-exit v2

    move-object v2, p0

    goto :goto_2d

    .line 314
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    if-ne p0, p1, :cond_6

    move v0, v3

    .line 378
    .end local p1
    :goto_5
    return v0

    .line 374
    .restart local p1
    :cond_6
    instance-of v0, p1, Ljava/util/logging/Level;

    if-nez v0, :cond_c

    move v0, v2

    .line 375
    goto :goto_5

    .line 378
    :cond_c
    check-cast p1, Ljava/util/logging/Level;

    .end local p1
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iget v1, p0, Ljava/util/logging/Level;->value:I

    if-ne v0, v1, :cond_18

    move v0, v3

    goto :goto_5

    :cond_18
    move v0, v2

    goto :goto_5
.end method

.method public getLocalizedName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 347
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    if-nez v1, :cond_7

    .line 348
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 354
    :goto_6
    return-object v1

    .line 352
    :cond_7
    :try_start_7
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_6

    .line 353
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, e:Ljava/util/MissingResourceException;
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
