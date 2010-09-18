.class public Lcom/android/contacts/FlexibleOptionHelper;
.super Ljava/lang/Object;
.source "FlexibleOptionHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncMenuItem(Landroid/content/Context;Landroid/view/Menu;IZ)V
    .registers 7
    .parameter "context"
    .parameter "menu"
    .parameter "menuId"
    .parameter "gmailSyncEnabled"

    .prologue
    const/4 v2, 0x0

    .line 106
    if-eqz p3, :cond_26

    .line 107
    invoke-static {p0}, Lcom/android/contacts/FlexibleOptionHelper;->isGoogleSyncEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, syncIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/contacts/ContactsGroupSyncSelector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const v1, 0x7f06003f

    invoke-interface {p1, v2, p2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080193

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 116
    .end local v0           #syncIntent:Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method public static getRgsMy5Address(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PB_SUPPORT_RGS_MY5_I"

    invoke-static {v1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, rgsMy5Addr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 67
    const/4 v1, 0x0

    .line 70
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v0

    goto :goto_11
.end method

.method public static isGoogleSyncEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYNCML_GSYNC_ENABLE_MENU_I"

    invoke-static {v1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, enableMenu:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    .line 58
    :goto_12
    return v1

    .line 54
    :cond_13
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 55
    const/4 v1, 0x0

    goto :goto_12

    :cond_1d
    move v1, v3

    .line 58
    goto :goto_12
.end method

.method public static isLinkbookEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PB_SUPPORT_LINKBOOK_I"

    invoke-static {v1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, enableMenu:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    .line 26
    :goto_12
    return v1

    .line 22
    :cond_13
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 23
    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    move v1, v3

    .line 26
    goto :goto_12
.end method

.method public static isSyncMLEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYNCML_ENABLE_MENU_I"

    invoke-static {v1, v2}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, enableMenu:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    .line 41
    :goto_12
    return v1

    .line 37
    :cond_13
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 38
    const/4 v1, 0x1

    goto :goto_12

    :cond_1d
    move v1, v3

    .line 41
    goto :goto_12
.end method
