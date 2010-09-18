.class Lcom/android/launcher/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1914
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher$CreateShortcut;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->unlock()V

    .line 1950
    iget-object v0, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->dismissDialog(I)V

    .line 1951
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1921
    iget-object v2, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2, v4}, Lcom/android/launcher/Launcher;->access$602(Lcom/android/launcher/Launcher;Z)Z

    .line 1923
    new-instance v2, Lcom/android/launcher/AddAdapter;

    iget-object v3, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher/AddAdapter;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher/AddAdapter;

    .line 1925
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1926
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1927
    iget-object v2, p0, Lcom/android/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1929
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1931
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1932
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1933
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1934
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1936
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher/Launcher;->access$602(Lcom/android/launcher/Launcher;Z)Z

    .line 1941
    invoke-direct {p0}, Lcom/android/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 1942
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1957
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1958
    .local v7, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 1960
    packed-switch p2, :pswitch_data_e2

    .line 2023
    :goto_c
    return-void

    .line 1963
    :pswitch_d
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const/4 v11, 0x7

    const v12, 0x7f0a001b

    invoke-static {v10, v11, v12}, Lcom/android/launcher/Launcher;->access$1400(Lcom/android/launcher/Launcher;II)V

    goto :goto_c

    .line 1968
    :pswitch_17
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/android/launcher/Launcher;->access$1500(Lcom/android/launcher/Launcher;)Lcom/android/launcher/LauncherAppWidgetHost;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1970
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v6, pickIntent:Landroid/content/Intent;
    const-string v10, "appWidgetId"

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1973
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1975
    .local v4, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 1976
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "XXX.YYY"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1977
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const v11, 0x7f0a000e

    invoke-virtual {v10, v11}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1978
    const v10, 0x7f020019

    iput v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1979
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    const-string v10, "customInfo"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1982
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v3, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1984
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "custom_widget"

    const-string v11, "search_widget"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    const-string v10, "customExtras"

    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1989
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const/16 v11, 0x9

    invoke-virtual {v10, v6, v11}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 1995
    .end local v0           #appWidgetId:I
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v5           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #pickIntent:Landroid/content/Intent;
    :pswitch_7f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1997
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .local v9, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f0a000f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2001
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2003
    .local v8, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const v11, 0x7f020013

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2007
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .restart local v6       #pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2010
    const-string v10, "android.intent.extra.TITLE"

    iget-object v11, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const v12, 0x7f0a001c

    invoke-virtual {v11, v12}, Lcom/android/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2012
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2014
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    const/16 v11, 0x8

    invoke-virtual {v10, v6, v11}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c

    .line 2019
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v6           #pickIntent:Landroid/content/Intent;
    .end local v8           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v9           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_db
    iget-object v10, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/android/launcher/Launcher;->access$1600(Lcom/android/launcher/Launcher;)V

    goto/16 :goto_c

    .line 1960
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
        :pswitch_7f
        :pswitch_db
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->unlock()V

    .line 1946
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/launcher/Launcher$CreateShortcut;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->lock()V

    .line 2027
    return-void
.end method
