.class public Lcom/lge/favoritecontacts/NoFavePopup;
.super Landroid/app/Activity;
.source "NoFavePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CREATE_FAVE_GRP:I = 0x1

.field public static final NOFAVE_KEY_NOCONTACTS:Ljava/lang/String; = "no_contacts"

.field public static final NOFAVE_KEY_NOFAVE:Ljava/lang/String; = "no_favorite"

.field public static final NOFAVE_KEY_NOGRP:Ljava/lang/String; = "no_favegrp"

.field public static final NOFAVE_RES_CANCEL:I = -0xc8

.field public static final NOFAVE_RES_NOTHING:I = -0x12c

.field public static final NOFAVE_RES_UNKNOWN:I = -0x190


# instance fields
.field private final mDBSyncReceiver:Landroid/content/BroadcastReceiver;

.field mNoContacts:Z

.field mNoFaveGrp:Z

.field mNoFavorite:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/lge/favoritecontacts/NoFavePopup$1;

    invoke-direct {v0, p0}, Lcom/lge/favoritecontacts/NoFavePopup$1;-><init>(Lcom/lge/favoritecontacts/NoFavePopup;)V

    iput-object v0, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setActions()V
    .registers 5

    .prologue
    .line 78
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-boolean v2, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoContacts:Z

    if-eqz v2, :cond_36

    .line 83
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_35
    return-void

    .line 87
    :cond_36
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->finish()V

    .line 164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/16 v7, 0x7d2

    .line 96
    invoke-virtual {p0, v7}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 97
    iget-boolean v5, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoContacts:Z

    if-eqz v5, :cond_16

    .line 98
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3, v7}, Lcom/lge/favoritecontacts/NoFavePopup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    .end local v3           #intent:Landroid/content/Intent;
    :goto_15
    return-void

    .line 105
    :cond_16
    iget-boolean v5, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoFaveGrp:Z

    if-eqz v5, :cond_1f

    .line 110
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lge/favoritecontacts/NoFavePopup;->showDialog(I)V

    goto :goto_15

    .line 112
    :cond_1f
    const-string v4, "com.android.contacts"

    .line 113
    .local v4, pkg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".SearchActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, acti:Ljava/lang/String;
    const-string v1, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    .line 115
    .local v1, action:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v2, assignActi:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    const-string v5, "com.android.contacts.extra.TITLE_EXTRA"

    const v6, 0x7f050001

    invoke-virtual {p0, v6}, Lcom/lge/favoritecontacts/NoFavePopup;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v5, "starred"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v3, v7}, Lcom/lge/favoritecontacts/NoFavePopup;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->requestWindowFeature(I)Z

    .line 53
    :try_start_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "favoriteContacts.synchronizing.action.ALLDIE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lge/favoritecontacts/NoFavePopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_10} :catch_4d

    .line 59
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :goto_10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->setContentView(I)V

    .line 62
    const/16 v2, -0x190

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_34

    .line 66
    const/16 v2, -0xc8

    invoke-virtual {p0, v2}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->finish()V

    .line 74
    :goto_30
    invoke-direct {p0}, Lcom/lge/favoritecontacts/NoFavePopup;->setActions()V

    .line 75
    return-void

    .line 69
    :cond_34
    const-string v2, "no_contacts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoContacts:Z

    .line 70
    const-string v2, "no_favegrp"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoFaveGrp:Z

    .line 71
    const-string v2, "no_favorite"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mNoFavorite:Z

    goto :goto_30

    .line 55
    .end local v0           #b:Landroid/os/Bundle;
    :catch_4d
    move-exception v2

    goto :goto_10
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_32

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 171
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Notification"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050011

    new-instance v2, Lcom/lge/favoritecontacts/NoFavePopup$2;

    invoke-direct {v2, p0}, Lcom/lge/favoritecontacts/NoFavePopup$2;-><init>(Lcom/lge/favoritecontacts/NoFavePopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 169
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/lge/favoritecontacts/NoFavePopup;->mDBSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/NoFavePopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_9

    .line 157
    :goto_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void

    .line 154
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 132
    const/16 v0, -0xc8

    invoke-virtual {p0, v0}, Lcom/lge/favoritecontacts/NoFavePopup;->setResult(I)V

    .line 134
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 141
    return-void
.end method
