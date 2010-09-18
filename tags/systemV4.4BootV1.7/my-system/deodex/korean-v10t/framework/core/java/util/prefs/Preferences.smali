.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final CONFIGURATION_FILE_COMMENT:Ljava/lang/String; = "#"

.field private static final CONFIGURATION_FILE_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FACTORY_CONFIGURATION_FILE_NAME:Ljava/lang/String; = "META-INF/services/java.util.prefs.PreferencesFactory"

.field public static final MAX_KEY_LENGTH:I = 0x50

.field public static final MAX_NAME_LENGTH:I = 0x50

.field public static final MAX_VALUE_LENGTH:I = 0x2000

.field private static final PREFS_PERM:Ljava/lang/RuntimePermission;

.field private static final factory:Ljava/util/prefs/PreferencesFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const-string v12, "prefs.10"

    const-string v11, "META-INF/services/java.util.prefs.PreferencesFactory"

    .line 139
    new-instance v9, Ljava/lang/RuntimePermission;

    const-string v10, "preferences"

    invoke-direct {v9, v10}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v9, Ljava/util/prefs/Preferences;->PREFS_PERM:Ljava/lang/RuntimePermission;

    .line 150
    new-instance v9, Ljava/util/prefs/Preferences$1;

    invoke-direct {v9}, Ljava/util/prefs/Preferences$1;-><init>()V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .local v4, factoryClassName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 172
    .local v6, loader:Ljava/lang/ClassLoader;
    if-nez v6, :cond_26

    .line 173
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 175
    :cond_26
    if-nez v4, :cond_6b

    .line 176
    const/4 v3, 0x0

    .line 178
    .local v3, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :try_start_29
    const-string v9, "META-INF/services/java.util.prefs.PreferencesFactory"

    invoke-virtual {v6, v9}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, commentIndex:I
    move-object v8, v7

    .line 181
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :goto_32
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_82

    move-result v9

    if-eqz v9, :cond_a2

    .line 183
    :try_start_38
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 186
    .local v5, is:Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x2000

    invoke-direct {v7, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_50} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_82

    .line 189
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :try_start_50
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string v9, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 191
    if-lez v1, :cond_65

    .line 192
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 194
    :cond_65
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_68} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_68} :catch_82

    move-result v9

    if-lez v9, :cond_7c

    .line 209
    .end local v1           #commentIndex:I
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :cond_6b
    :goto_6b
    if-nez v4, :cond_6f

    .line 210
    const-string v4, "java.util.prefs.FilePreferencesFactoryImpl"

    .line 214
    :cond_6f
    :try_start_6f
    invoke-virtual {v6, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/util/prefs/PreferencesFactory;

    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_92

    .line 221
    return-void

    .restart local v1       #commentIndex:I
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_7c
    move-object v8, v7

    .line 199
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_32

    .line 197
    .end local v5           #is:Ljava/io/InputStream;
    :catch_7e
    move-exception v9

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_80
    move-object v8, v7

    .line 199
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_32

    .line 201
    .end local v1           #commentIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    :catch_82
    move-exception v9

    move-object v2, v9

    .line 204
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/InternalError;

    const-string v10, "prefs.10"

    const-string v10, "META-INF/services/java.util.prefs.PreferencesFactory"

    invoke-static {v12, v11, v2}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 216
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_92
    move-exception v9

    move-object v2, v9

    .line 218
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/InternalError;

    const-string v10, "prefs.10"

    invoke-static {v12, v4, v2}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 197
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #commentIndex:I
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_a0
    move-exception v9

    goto :goto_80

    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_a2
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_6b
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method private static checkSecurity()V
    .registers 2

    .prologue
    .line 974
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 975
    .local v0, manager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 976
    sget-object v1, Ljava/util/prefs/Preferences;->PREFS_PERM:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 979
    :cond_b
    return-void
.end method

.method private static getNodeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "/"

    const-string v4, "."

    .line 1016
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1017
    .local v0, dotIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v3, "/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static importPreferences(Ljava/io/InputStream;)V
    .registers 3
    .parameter "istream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/InvalidPreferencesFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Ljava/util/prefs/Preferences;->checkSecurity()V

    .line 572
    if-nez p0, :cond_11

    .line 574
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "prefs.0"

    invoke-static {v1}, Lorg/apache/harmony/prefs/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_11
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->importPrefs(Ljava/io/InputStream;)V

    .line 577
    return-void
.end method

.method public static systemNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->checkSecurity()V

    .line 955
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static systemRoot()Ljava/util/prefs/Preferences;
    .registers 1

    .prologue
    .line 968
    invoke-static {}, Ljava/util/prefs/Preferences;->checkSecurity()V

    .line 969
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static userNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->checkSecurity()V

    .line 1004
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static userRoot()Ljava/util/prefs/Preferences;
    .registers 1

    .prologue
    .line 1030
    invoke-static {}, Ljava/util/prefs/Preferences;->checkSecurity()V

    .line 1031
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract absolutePath()Ljava/lang/String;
.end method

.method public abstract addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract childrenNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportNode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportSubtree(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getByteArray(Ljava/lang/String;[B)[B
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract isUserNode()Z
.end method

.method public abstract keys()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
.end method

.method public abstract nodeExists(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract parent()Ljava/util/prefs/Preferences;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putFloat(Ljava/lang/String;F)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeNode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
