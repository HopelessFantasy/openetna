.class Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;
.super Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;
.source "LinkbookApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/LinkbookApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkbookSessonTokenInitializer"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field pref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;->context:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;->pref:Landroid/content/SharedPreferences;

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/lge/sns/LinkbookApp$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "ctx"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v10, "SessionToken"

    const-string v9, "Linkbook"

    .line 272
    iget-object v6, p0, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;->pref:Landroid/content/SharedPreferences;

    const-string v7, "SessionToken"

    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, sessionToken:Ljava/lang/String;
    if-nez v4, :cond_70

    .line 274
    invoke-virtual {p1}, Lcom/lge/newbay/client/impl/NewbayContext;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, idStored:Ljava/lang/String;
    if-nez v2, :cond_46

    .line 276
    iget-object v6, p0, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;->context:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    move-object v0, v6

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v5, v0

    .line 277
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, msisdn:Ljava/lang/String;
    if-nez v3, :cond_2b

    move-object v6, v8

    .line 294
    .end local v2           #idStored:Ljava/lang/String;
    .end local v3           #msisdn:Ljava/lang/String;
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :goto_2a
    return-object v6

    .line 281
    .restart local v2       #idStored:Ljava/lang/String;
    .restart local v3       #msisdn:Ljava/lang/String;
    .restart local v5       #tm:Landroid/telephony/TelephonyManager;
    :cond_2b
    invoke-virtual {p1, v3}, Lcom/lge/newbay/client/impl/NewbayContext;->setUid(Ljava/lang/String;)V

    .line 283
    const-string v6, "Linkbook"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msisdn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v3           #msisdn:Ljava/lang/String;
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_46
    invoke-super {p0, p1, p2}, Lcom/lge/newbay/client/impl/DefaultSessonTokenInitializer;->getSessionToken(Lcom/lge/newbay/client/impl/NewbayContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    const-string v6, "Linkbook"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/lge/sns/LinkbookApp$LinkbookSessonTokenInitializer;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 291
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "SessionToken"

    invoke-interface {v1, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #idStored:Ljava/lang/String;
    :cond_70
    move-object v6, v4

    .line 294
    goto :goto_2a
.end method
