.class public Lcom/lge/hiddenmenu/wap_debug/WapDebug;
.super Landroid/app/ListActivity;
.source "WapDebug.java"


# static fields
.field private static mContext:Landroid/content/Context; = null

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private selectMenuItem(I)V
    .registers 15
    .parameter "id"

    .prologue
    const-string v12, "1"

    const-string v11, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    .line 69
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 71
    .local v0, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 73
    .local v6, packageName2:Ljava/lang/String;
    packed-switch p1, :pswitch_data_c6

    .line 320
    :goto_e
    if-eqz v0, :cond_2f

    .line 321
    const-string v9, "com.lge.hiddenmenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->startActivity(Landroid/content/Intent;)V

    .line 324
    :cond_2f
    return-void

    .line 76
    :pswitch_30
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f02003a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "Select Phone"

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f06000d

    new-instance v11, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;

    invoke-direct {v11, p0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug$1;-><init>(Lcom/lge/hiddenmenu/wap_debug/WapDebug;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_e

    .line 282
    :pswitch_52
    const-string v9, "http://xhaus.com/headers"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 283
    .local v8, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v3, intent2:Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 290
    .end local v3           #intent2:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :pswitch_66
    sget-object v9, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    invoke-static {v9, v11}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, uaprofile:Ljava/lang/String;
    const-string v9, "1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 293
    .local v1, eql:Z
    if-eqz v1, :cond_b7

    .line 294
    sget-object v9, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    const-string v10, "0"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    :goto_87
    sget-object v9, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    invoke-static {v9, v11}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, new_uaprofile:Ljava/lang/String;
    const/4 v4, 0x0

    .line 303
    .local v4, msg2:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    .end local v4           #msg2:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v4       #msg2:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    if-eqz v9, :cond_a5

    .line 307
    iget-object v9, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 308
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    .line 310
    :cond_a5
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    .line 312
    iget-object v9, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 296
    .end local v4           #msg2:Ljava/lang/String;
    .end local v5           #new_uaprofile:Ljava/lang/String;
    :cond_b7
    sget-object v9, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    const-string v10, "1"

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_87

    .line 73
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_30
        :pswitch_52
        :pswitch_66
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f06000c

    const v1, 0x1090003

    invoke-static {p0, v0, v1}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->createFromResource(Landroid/content/Context;II)Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    .line 41
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->mAdapter:Lcom/lge/hiddenmenu/HiddenMenuListAdapter;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/lge/hiddenmenu/HiddenMenuListAdapter;->getNewSelectionForkey(IILandroid/view/KeyEvent;)I

    move-result v0

    .line 56
    .local v0, candidate:I
    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_15

    .line 57
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 60
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 65
    long-to-int v0, p4

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/wap_debug/WapDebug;->selectMenuItem(I)V

    .line 66
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 49
    return-void
.end method
