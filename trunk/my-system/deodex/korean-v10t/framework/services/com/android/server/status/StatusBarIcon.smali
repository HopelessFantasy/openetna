.class Lcom/android/server/status/StatusBarIcon;
.super Ljava/lang/Object;
.source "StatusBarIcon.java"


# static fields
.field private static final ICON_GAP:I = 0x8

.field private static final ICON_HEIGHT:I = 0x19

.field private static final ICON_WIDTH:I = 0x19


# instance fields
.field mData:Lcom/android/server/status/IconData;

.field private mImageView:Lcom/android/server/status/AnimatedImageView;

.field private mNumberView:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V
    .registers 15
    .parameter "context"
    .parameter "data"
    .parameter "parent"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    .line 45
    iget v7, p2, Lcom/android/server/status/IconData;->type:I

    packed-switch v7, :pswitch_data_b2

    .line 96
    :goto_10
    return-void

    .line 48
    :pswitch_11
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v4, t:Landroid/widget/TextView;
    iput-object v4, p0, Lcom/android/server/status/StatusBarIcon;->mTextView:Landroid/widget/TextView;

    .line 50
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v2, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x4180

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "select_theme"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, theme_name:Ljava/lang/String;
    const-string v7, "lge"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 58
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :goto_38
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    const/16 v7, 0x13

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v7, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iput-object v4, p0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    goto :goto_10

    .line 61
    :cond_51
    const/high16 v7, -0x100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_38

    .line 73
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #t:Landroid/widget/TextView;
    .end local v5           #theme_name:Ljava/lang/String;
    :pswitch_57
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 75
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x109005c

    invoke-virtual {v1, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 76
    .local v6, v:Landroid/view/View;
    iput-object v6, p0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    .line 79
    const v7, 0x1020169

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/AnimatedImageView;

    .line 80
    .local v0, im:Lcom/android/server/status/AnimatedImageView;
    invoke-static {p1, p2}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/status/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget v7, p2, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v7}, Lcom/android/server/status/AnimatedImageView;->setImageLevel(I)V

    .line 82
    iput-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mImageView:Lcom/android/server/status/AnimatedImageView;

    .line 85
    const v7, 0x1020053

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, nv:Landroid/widget/TextView;
    iput-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 87
    iget v7, p2, Lcom/android/server/status/IconData;->number:I

    if-lez v7, :cond_ab

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/android/server/status/IconData;->number:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10

    .line 91
    :cond_ab
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10

    .line 45
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_57
    .end packed-switch
.end method

.method static getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const-string v6, "StatusBar"

    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 170
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_11} :catch_19

    move-result-object v2

    .line 180
    :goto_12
    :try_start_12
    iget v3, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_3c

    move-result-object v3

    .line 187
    :goto_18
    return-object v3

    .line 171
    :catch_19
    move-exception v3

    move-object v1, v3

    .line 172
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 173
    goto :goto_18

    .line 176
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_12

    .line 181
    :catch_3c
    move-exception v3

    move-object v0, v3

    .line 182
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v4, :cond_72

    iget v4, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 187
    goto :goto_18

    .line 182
    :cond_72
    const-string v4, "<system>"

    goto :goto_55
.end method


# virtual methods
.method getNumber()I
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v0, v0, Lcom/android/server/status/IconData;->number:I

    return v0
.end method

.method public update(I)V
    .registers 6
    .parameter "number"

    .prologue
    const-string v3, ""

    .line 144
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v1, v1, Lcom/android/server/status/IconData;->number:I

    if-eq v1, p1, :cond_22

    .line 145
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 146
    .local v0, nv:Landroid/widget/TextView;
    if-lez p1, :cond_27

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0           #nv:Landroid/widget/TextView;
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iput p1, v1, Lcom/android/server/status/IconData;->number:I

    .line 153
    return-void

    .line 149
    .restart local v0       #nv:Landroid/widget/TextView;
    :cond_27
    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method

.method public update(Landroid/content/Context;Lcom/android/server/status/IconData;)V
    .registers 9
    .parameter "context"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    const-string v5, ""

    .line 99
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->type:I

    iget v4, p2, Lcom/android/server/status/IconData;->type:I

    if-eq v3, v4, :cond_12

    .line 100
    new-instance v3, Lcom/android/server/status/StatusBarException;

    const-string v4, "status bar entry type can\'t change"

    invoke-direct {v3, v4}, Lcom/android/server/status/StatusBarException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_12
    iget v3, p2, Lcom/android/server/status/IconData;->type:I

    packed-switch v3, :pswitch_data_92

    .line 128
    :cond_17
    :goto_17
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, p2}, Lcom/android/server/status/IconData;->copyFrom(Lcom/android/server/status/IconData;)V

    .line 129
    return-void

    .line 104
    :pswitch_1d
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 105
    iget-object v2, p0, Lcom/android/server/status/StatusBarIcon;->mTextView:Landroid/widget/TextView;

    .line 106
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p2, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 110
    .end local v2           #tv:Landroid/widget/TextView;
    :pswitch_31
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_47

    iget-object v3, p2, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v3, v3, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_47
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->iconId:I

    iget v4, p2, Lcom/android/server/status/IconData;->iconId:I

    if-ne v3, v4, :cond_57

    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->iconLevel:I

    iget v4, p2, Lcom/android/server/status/IconData;->iconLevel:I

    if-eq v3, v4, :cond_65

    .line 114
    :cond_57
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mImageView:Lcom/android/server/status/AnimatedImageView;

    .line 115
    .local v0, im:Landroid/widget/ImageView;
    invoke-static {p1, p2}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/status/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget v3, p2, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v3}, Lcom/android/server/status/AnimatedImageView;->setImageLevel(I)V

    .line 118
    .end local v0           #im:Landroid/widget/ImageView;
    :cond_65
    iget-object v3, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v3, v3, Lcom/android/server/status/IconData;->number:I

    iget v4, p2, Lcom/android/server/status/IconData;->number:I

    if-eq v3, v4, :cond_17

    .line 119
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mNumberView:Landroid/widget/TextView;

    .line 120
    .local v1, nv:Landroid/widget/TextView;
    iget v3, p2, Lcom/android/server/status/IconData;->number:I

    if-lez v3, :cond_8c

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/server/status/IconData;->number:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 123
    :cond_8c
    const-string v3, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 102
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_31
    .end packed-switch
.end method

.method public updateTextIconColor(Landroid/content/Context;Lcom/android/server/status/IconData;I)V
    .registers 6
    .parameter "context"
    .parameter "data"
    .parameter "color"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget v1, v1, Lcom/android/server/status/IconData;->type:I

    packed-switch v1, :pswitch_data_14

    .line 140
    :goto_7
    return-void

    .line 135
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/status/StatusBarIcon;->mTextView:Landroid/widget/TextView;

    .line 136
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v1, p0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v1, p2}, Lcom/android/server/status/IconData;->copyFrom(Lcom/android/server/status/IconData;)V

    goto :goto_7

    .line 133
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
