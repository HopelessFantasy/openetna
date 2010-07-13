.class public Lcom/android/mms/ui/PresenterFactory;
.super Ljava/lang/Object;
.source "PresenterFactory.java"


# static fields
.field private static final PRESENTER_PACKAGE:Ljava/lang/String; = "com.android.mms.ui."

.field private static final TAG:Ljava/lang/String; = "PresenterFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;
    .registers 12
    .parameter "className"
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    const-string v7, "PresenterFactory"

    .line 39
    :try_start_2
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.mms.ui."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    :cond_1e
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, c:Ljava/lang/Class;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/android/mms/ui/ViewInterface;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/mms/model/Model;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 46
    .local v2, constructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/ui/Presenter;

    move-object p0, v0
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_4c} :catch_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_4c} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_4c} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_4c} :catch_7e
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_4c} :catch_88

    .end local p0
    move-object v4, p0

    .line 60
    .end local v1           #c:Ljava/lang/Class;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;
    :goto_4d
    return-object v4

    .line 47
    .restart local p0
    :catch_4e
    move-exception v4

    move-object v3, v4

    .line 48
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "PresenterFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :goto_68
    const/4 v4, 0x0

    goto :goto_4d

    .line 49
    :catch_6a
    move-exception v4

    move-object v3, v4

    .line 51
    .local v3, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "PresenterFactory"

    const-string v4, "No such constructor."

    invoke-static {v7, v4, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 52
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_74
    move-exception v4

    move-object v3, v4

    .line 53
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "PresenterFactory"

    const-string v4, "Unexpected InvocationTargetException"

    invoke-static {v7, v4, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 54
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_7e
    move-exception v4

    move-object v3, v4

    .line 55
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v4, "PresenterFactory"

    const-string v4, "Unexpected IllegalAccessException"

    invoke-static {v7, v4, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 56
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_88
    move-exception v4

    move-object v3, v4

    .line 57
    .local v3, e:Ljava/lang/InstantiationException;
    const-string v4, "PresenterFactory"

    const-string v4, "Unexpected InstantiationException"

    invoke-static {v7, v4, v3}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68
.end method
