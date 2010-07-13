.class public Lorg/apache/harmony/luni/util/Msg;
.super Ljava/lang/Object;
.source "Msg.java"


# static fields
.field private static final sResource:Ljava/lang/String; = "org.apache.harmony.luni.util.ExternalMessages"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "msg"

    .prologue
    .line 60
    const-string v2, "org.apache.harmony.luni.util.ExternalMessages"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/MsgHelp;->loadBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 61
    .local v0, bundle:Ljava/util/ResourceBundle;
    if-nez v0, :cond_a

    move-object v2, p0

    .line 68
    :goto_9
    return-object v2

    .line 66
    :cond_a
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    goto :goto_9

    .line 67
    :catch_f
    move-exception v1

    .local v1, e:Ljava/util/MissingResourceException;
    move-object v2, p0

    .line 68
    goto :goto_9
.end method

.method public static getString(Ljava/lang/String;C)Ljava/lang/String;
    .registers 5
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "msg"
    .parameter "arg"

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 136
    move-object v1, p0

    .line 138
    .local v1, format:Ljava/lang/String;
    const-string v2, "org.apache.harmony.luni.util.ExternalMessages"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/MsgHelp;->loadBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 140
    .local v0, bundle:Ljava/util/ResourceBundle;
    if-eqz v0, :cond_d

    .line 142
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_c} :catch_12

    move-result-object v1

    .line 147
    :cond_d
    :goto_d
    invoke-static {v1, p1}, Lorg/apache/harmony/luni/util/MsgHelp;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 143
    :catch_12
    move-exception v2

    goto :goto_d
.end method
