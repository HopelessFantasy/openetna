.class public final Lorg/apache/harmony/luni/util/MsgHelp;
.super Ljava/lang/Object;
.source "MsgHelp.java"


# static fields
.field private static sRefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ResourceBundle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/luni/util/MsgHelp;->sRefMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .parameter "format"
    .parameter "args"

    .prologue
    const/16 v8, 0x7b

    const/4 v7, 0x1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x14

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v0, answer:Ljava/lang/StringBuilder;
    array-length v5, p1

    new-array v1, v5, [Ljava/lang/String;

    .line 116
    .local v1, argStrings:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    array-length v5, p1

    if-ge v3, v5, :cond_2b

    .line 117
    aget-object v5, p1, v3

    if-nez v5, :cond_22

    .line 118
    const-string v5, "<null>"

    aput-object v5, v1, v3

    .line 116
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 120
    :cond_22
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1f

    .line 122
    :cond_2b
    const/4 v4, 0x0

    .line 123
    .local v4, lastI:I
    const/4 v5, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_31
    if-ltz v3, :cond_a9

    .line 125
    if-eqz v3, :cond_54

    sub-int v5, v3, v7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_54

    .line 127
    if-eq v3, v7, :cond_4a

    .line 128
    sub-int v5, v3, v7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_4a
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v4, v3, 0x1

    .line 123
    :goto_4f
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_31

    .line 133
    :cond_54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_6c

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_4f

    .line 138
    :cond_6c
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v2, v5

    .line 140
    .local v2, argnum:I
    if-ltz v2, :cond_85

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_91

    .line 142
    :cond_85
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v4, v3, 0x1

    goto :goto_4f

    .line 146
    :cond_91
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    array-length v5, v1

    if-lt v2, v5, :cond_a3

    .line 148
    const-string v5, "<missing argument>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :goto_a0
    add-int/lit8 v4, v3, 0x3

    goto :goto_4f

    .line 150
    :cond_a3
    aget-object v5, v1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 156
    .end local v2           #argnum:I
    :cond_a9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_ba

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "resource"
    .parameter "msg"

    .prologue
    .line 71
    invoke-static {p0}, Lorg/apache/harmony/luni/util/MsgHelp;->loadBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 72
    .local v0, bundle:Ljava/util/ResourceBundle;
    if-nez v0, :cond_8

    move-object v2, p1

    .line 78
    :goto_7
    return-object v2

    .line 76
    :cond_8
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    goto :goto_7

    .line 77
    :catch_d
    move-exception v1

    .line 78
    .local v1, e:Ljava/util/MissingResourceException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "resource"
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 83
    move-object v1, p1

    .line 84
    .local v1, format:Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/harmony/luni/util/MsgHelp;->loadBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 85
    .local v0, bundle:Ljava/util/ResourceBundle;
    if-eqz v0, :cond_b

    .line 87
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_a} :catch_10

    move-result-object v1

    .line 92
    :cond_b
    :goto_b
    invoke-static {v1, p2}, Lorg/apache/harmony/luni/util/MsgHelp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    :catch_10
    move-exception v2

    goto :goto_b
.end method

.method public static declared-synchronized loadBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 9
    .parameter "resource"

    .prologue
    .line 48
    const-class v4, Lorg/apache/harmony/luni/util/MsgHelp;

    monitor-enter v4

    :try_start_3
    sget-object v5, Lorg/apache/harmony/luni/util/MsgHelp;->sRefMap:Ljava/util/HashMap;

    if-nez v5, :cond_e

    .line 49
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/apache/harmony/luni/util/MsgHelp;->sRefMap:Ljava/util/HashMap;

    .line 51
    :cond_e
    sget-object v5, Lorg/apache/harmony/luni/util/MsgHelp;->sRefMap:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 52
    .local v1, bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_5e

    move-result-object v5

    if-nez v5, :cond_56

    .line 55
    :cond_1e
    :try_start_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, p0}, Lorg/apache/harmony/luni/util/MsgHelp;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 57
    .local v0, bundle:Ljava/util/ResourceBundle;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_5e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2b} :catch_34

    .line 58
    .end local v1           #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    .local v2, bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    :try_start_2b
    sget-object v5, Lorg/apache/harmony/luni/util/MsgHelp;->sRefMap:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_5e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_61

    move-object v1, v2

    .end local v2           #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    .restart local v1       #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    move-object v5, v0

    .line 66
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local p0
    :goto_32
    monitor-exit v4

    return-object v5

    .line 60
    .restart local p0
    :catch_34
    move-exception v5

    move-object v3, v5

    .line 61
    .local v3, e:Ljava/lang/Throwable;
    :goto_36
    :try_start_36
    sget-object v5, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got Throwable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " loading messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    goto :goto_32

    .line 66
    .end local v3           #e:Ljava/lang/Throwable;
    :cond_56
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ResourceBundle;
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_5e

    move-object v5, p0

    goto :goto_32

    .line 48
    .end local v1           #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    :catchall_5e
    move-exception v5

    monitor-exit v4

    throw v5

    .line 60
    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    .restart local v2       #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    .restart local p0
    :catch_61
    move-exception v5

    move-object v3, v5

    move-object v1, v2

    .end local v2           #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    .restart local v1       #bundleRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/util/ResourceBundle;>;"
    goto :goto_36
.end method

.method public static setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 3
    .parameter "locale"
    .parameter "resource"

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lorg/apache/harmony/luni/util/MsgHelp$1;

    invoke-direct {v0, p1, p0}, Lorg/apache/harmony/luni/util/MsgHelp$1;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ResourceBundle;
    :try_end_b
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_b} :catch_d

    move-object v0, p0

    .line 186
    :goto_c
    return-object v0

    .line 184
    :catch_d
    move-exception v0

    .line 186
    const/4 v0, 0x0

    goto :goto_c
.end method
