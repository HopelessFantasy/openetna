.class Lcom/lge/homecube/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/lge/homecube/AddAdapter;

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 3500
    iput-object p1, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3500
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$CreateShortcut;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .registers 4

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->unlock()V

    .line 3530
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 3531
    const-string v0, "CreateShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanup mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3505
    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2, v4}, Lcom/lge/homecube/Launcher;->access$1302(Lcom/lge/homecube/Launcher;Z)Z

    .line 3507
    new-instance v2, Lcom/lge/homecube/AddAdapter;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v2, v3}, Lcom/lge/homecube/AddAdapter;-><init>(Lcom/lge/homecube/Launcher;)V

    iput-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->mAdapter:Lcom/lge/homecube/AddAdapter;

    .line 3509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3510
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3511
    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->mAdapter:Lcom/lge/homecube/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3513
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 3515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3516
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3518
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 3522
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0, v3}, Lcom/lge/homecube/Launcher;->access$1302(Lcom/lge/homecube/Launcher;Z)Z

    .line 3523
    const-string v0, "CreateShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iget-object v0, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v0, v3}, Lcom/lge/homecube/Launcher;->access$1802(Lcom/lge/homecube/Launcher;Z)Z

    .line 3525
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$CreateShortcut;->cleanup()V

    .line 3526
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3539
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v10}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3540
    .local v7, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$CreateShortcut;->cleanup()V

    .line 3542
    packed-switch p2, :pswitch_data_134

    .line 3624
    :goto_c
    return-void

    .line 3545
    :pswitch_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3547
    .local v2, bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3548
    .local v9, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f09000b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3549
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3551
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3553
    .local v8, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v11, 0x7f02002d

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3555
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3557
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3558
    .local v6, pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3560
    const-string v10, "android.intent.extra.TITLE"

    iget-object v11, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v12, 0x7f090017

    invoke-virtual {v11, v12}, Lcom/lge/homecube/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3562
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3564
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v11, 0x7

    invoke-virtual {v10, v6, v11}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 3569
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v6           #pickIntent:Landroid/content/Intent;
    .end local v8           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v9           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_67
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v10}, Lcom/lge/homecube/Launcher;->access$2000(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/LauncherAppWidgetHost;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/homecube/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3571
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3572
    .restart local v6       #pickIntent:Landroid/content/Intent;
    const-string v10, "appWidgetId"

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3576
    .local v4, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 3577
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v11}, Lcom/lge/homecube/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "XXX.YYY"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3578
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v11, 0x7f09000d

    invoke-virtual {v10, v11}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 3579
    const v10, 0x7f020035

    iput v10, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 3580
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3581
    const-string v10, "customInfo"

    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3583
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3584
    .local v3, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3585
    .local v1, b:Landroid/os/Bundle;
    const-string v10, "custom_widget"

    const-string v11, "search_widget"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3587
    const-string v10, "customExtras"

    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3590
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v11, 0x9

    invoke-virtual {v10, v6, v11}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c

    .line 3596
    .end local v0           #appWidgetId:I
    .end local v1           #b:Landroid/os/Bundle;
    .end local v3           #customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v5           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #pickIntent:Landroid/content/Intent;
    :pswitch_d0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3598
    .restart local v2       #bundle:Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3599
    .restart local v9       #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f09000e

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3602
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3604
    .restart local v8       #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v11, 0x7f02002f

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3606
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3608
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3609
    .restart local v6       #pickIntent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.INTENT"

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3611
    const-string v10, "android.intent.extra.TITLE"

    iget-object v11, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const v12, 0x7f090018

    invoke-virtual {v11, v12}, Lcom/lge/homecube/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3613
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3615
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v11, 0x8

    invoke-virtual {v10, v6, v11}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c

    .line 3620
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v6           #pickIntent:Landroid/content/Intent;
    .end local v8           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v9           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_12c
    iget-object v10, p0, Lcom/lge/homecube/Launcher$CreateShortcut;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v10}, Lcom/lge/homecube/Launcher;->access$2100(Lcom/lge/homecube/Launcher;)V

    goto/16 :goto_c

    .line 3542
    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_d
        :pswitch_67
        :pswitch_d0
        :pswitch_12c
    .end packed-switch
.end method
