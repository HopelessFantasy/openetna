.class public Lcom/lge/homecube/ApplicationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ApplicationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/homecube/ApplicationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static mLauncher:Lcom/lge/homecube/Launcher;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/homecube/ApplicationsAdapter;->mLauncher:Lcom/lge/homecube/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/lge/homecube/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/homecube/ApplicationInfo;

    .line 47
    .local v4, info:Lcom/lge/homecube/ApplicationInfo;
    if-nez p2, :cond_14

    .line 48
    iget-object v7, p0, Lcom/lge/homecube/ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030004

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_14
    iget-boolean v7, v4, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    if-nez v7, :cond_26

    .line 52
    iget-object v7, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lge/homecube/ApplicationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/homecube/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-boolean v11, v4, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 58
    :cond_26
    iget-object v3, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 59
    .local v3, drawableIcon:Landroid/graphics/drawable/Drawable;
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 61
    .local v6, textView:Landroid/widget/TextView;
    iget-object v7, v4, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 63
    .local v2, component:Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 64
    .local v1, classname:Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 65
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_39
    sget-object v7, Lcom/lge/homecube/ApplicationsAdapter;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v7}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v7

    if-ne v7, v11, :cond_1b4

    if-eqz v1, :cond_1b4

    .line 69
    sget-object v7, Lcom/lge/homecube/ApplicationsAdapter;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v7}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 71
    .local v5, resources:Landroid/content/res/Resources;
    const-string v7, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 72
    const v7, 0x7f020009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 138
    :goto_58
    invoke-virtual {v6, v9, v3, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 145
    .end local v5           #resources:Landroid/content/res/Resources;
    :goto_5b
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 146
    iget-object v7, v4, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object p2

    .line 74
    .restart local v5       #resources:Landroid/content/res/Resources;
    :cond_64
    const-string v7, "com.android.contacts.DialtactsContactsEntryActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 75
    const v7, 0x7f020012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 77
    :cond_74
    const-string v7, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 78
    const v7, 0x7f020016

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 80
    :cond_84
    const-string v7, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 81
    const v7, 0x7f020017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 83
    :cond_94
    const-string v7, "com.android.im.plugin.orange.LandingPage"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    const-string v7, "com.android.im.app.LandingPage"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ac

    const-string v7, " com.android.im.plugin.tim.LandingPage"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 86
    :cond_ac
    const v7, 0x7f02003b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 88
    :cond_b4
    const-string v7, "com.android.mms.ui.ConversationList"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 89
    const v7, 0x7f020049

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 91
    :cond_c4
    const-string v7, "com.good.android.ui.LaunchActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 92
    const v7, 0x7f020068

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_58

    .line 94
    :cond_d4
    const-string v7, "com.lge.sns.account.ui.AccountListView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 95
    const v7, 0x7f020046

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 97
    :cond_e5
    const-string v7, "com.arcsoft.camera.ArcCameraApp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 98
    const v7, 0x7f020010

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 100
    :cond_f6
    const-string v7, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 101
    const v7, 0x7f020019

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 103
    :cond_107
    const-string v7, "arcsoft.android.arcmediagallery.ArcPictureGallery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 104
    const v7, 0x7f020001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 106
    :cond_118
    const-string v7, "arcsoft.android.arcmmp.MainUI"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 107
    const v7, 0x7f020047

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 109
    :cond_129
    const-string v7, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13a

    .line 110
    const v7, 0x7f02004b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 112
    :cond_13a
    const-string v7, "arcsoft.android.videoeditor.MainUI"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14b

    .line 113
    const v7, 0x7f020084

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 115
    :cond_14b
    const-string v7, "com.android.alarmclock.AlarmClock"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 116
    const/high16 v7, 0x7f02

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 118
    :cond_15b
    const-string v7, "com.android.calculator2.Calculator"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16c

    .line 119
    const v7, 0x7f02000e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 121
    :cond_16c
    const-string v7, "com.lge.favoritecontacts.FavoriteContacts"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 122
    const v7, 0x7f020018

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 124
    :cond_17d
    const-string v7, "com.lge.homeselector.HomeSelectorActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18e

    .line 125
    const v7, 0x7f020022

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 127
    :cond_18e
    const-string v7, "com.android.soundrecorder.SRListActivity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 128
    const v7, 0x7f020086

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 130
    :cond_19f
    const-string v7, "com.android.settings.Settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 131
    const v7, 0x7f02006e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_58

    .line 135
    :cond_1b0
    iget-object v3, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_58

    .line 142
    .end local v5           #resources:Landroid/content/res/Resources;
    :cond_1b4
    iget-object v7, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v7, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5b
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 152
    sput-object p1, Lcom/lge/homecube/ApplicationsAdapter;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 153
    return-void
.end method
