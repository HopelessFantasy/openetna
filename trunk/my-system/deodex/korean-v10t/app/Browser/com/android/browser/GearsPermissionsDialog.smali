.class Lcom/android/browser/GearsPermissionsDialog;
.super Lcom/android/browser/GearsBaseDialog;
.source "GearsPermissionsDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GearsPermissionsDialog"


# instance fields
.field private mDialogType:Ljava/lang/String;

.field private mNotification:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .parameter "activity"
    .parameter "handler"
    .parameter "arguments"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/GearsBaseDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    .line 44
    return-void
.end method


# virtual methods
.method public closeDialog(I)Ljava/lang/String;
    .registers 7
    .parameter "closingType"

    .prologue
    const-string v4, "locationData"

    const-string v3, "localData"

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_50

    .line 127
    :cond_8
    :goto_8
    return-object v0

    .line 108
    :pswitch_9
    const-string v0, "{\"allow\": false, \"permanently\": true }"

    .line 109
    iget-object v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v2, "localData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 110
    const v1, 0x7f0700f5

    iput v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    goto :goto_8

    .line 111
    :cond_1b
    iget-object v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v2, "locationData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 112
    const v1, 0x7f0700f7

    iput v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    goto :goto_8

    .line 116
    :pswitch_2b
    const-string v0, "{\"allow\": true, \"permanently\": true }"

    .line 117
    iget-object v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v2, "localData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 118
    const v1, 0x7f0700f4

    iput v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    goto :goto_8

    .line 119
    :cond_3d
    iget-object v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v2, "locationData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    const v1, 0x7f0700f6

    iput v1, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    goto :goto_8

    .line 124
    :pswitch_4d
    const-string v0, "{\"allow\": false, \"permanently\": false }"

    goto :goto_8

    .line 106
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2b
        :pswitch_4d
    .end packed-switch
.end method

.method public notification()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/browser/GearsPermissionsDialog;->mNotification:I

    return v0
.end method

.method public setup()V
    .registers 12

    .prologue
    const-string v8, "origin"

    const-string v8, "dialogType"

    const-string v8, "customName"

    const-string v8, "customIcon"

    .line 47
    const v8, 0x7f03000d

    const v9, 0x7f0c002f

    invoke-virtual {p0, v8, v9}, Lcom/android/browser/GearsPermissionsDialog;->inflate(II)V

    .line 48
    const v8, 0x7f0700f9

    const v9, 0x7f0700fa

    const v10, 0x7f0700fb

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/browser/GearsPermissionsDialog;->setupButtons(III)V

    .line 53
    :try_start_1d
    new-instance v4, Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogArguments:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v4, json:Lorg/json/JSONObject;
    const-string v8, "dialogType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 56
    const-string v8, "dialogType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/browser/GearsPermissionsDialog;->setupDialog()V

    .line 60
    :cond_37
    const-string v8, "customName"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 61
    const-string v8, "origin"

    const v9, 0x7f0c0037

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/browser/GearsPermissionsDialog;->setLabel(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 62
    const v8, 0x7f0c0037

    invoke-virtual {p0, v8}, Lcom/android/browser/GearsPermissionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 63
    .local v7, titleView:Landroid/view/View;
    if-eqz v7, :cond_59

    .line 64
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 65
    .local v6, title:Landroid/widget/TextView;
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #titleView:Landroid/view/View;
    :cond_59
    :goto_59
    const-string v8, "customIcon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 74
    const-string v8, "customIcon"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, iconUrl:Ljava/lang/String;
    const/16 v8, 0x20

    iput v8, p0, Lcom/android/browser/GearsPermissionsDialog;->mChoosenIconSize:I

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/browser/GearsPermissionsDialog;->downloadIcon(Ljava/lang/String;)V

    .line 79
    .end local v3           #iconUrl:Ljava/lang/String;
    :cond_6e
    const v8, 0x7f0c003b

    invoke-virtual {p0, v8}, Lcom/android/browser/GearsPermissionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 80
    .local v5, msg:Landroid/view/View;
    if-eqz v5, :cond_8b

    .line 81
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 82
    .local v1, dialogMessage:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v9, "localData"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 83
    const v8, 0x7f0700e0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 92
    .end local v1           #dialogMessage:Landroid/widget/TextView;
    .end local v4           #json:Lorg/json/JSONObject;
    .end local v5           #msg:Landroid/view/View;
    :cond_8b
    :goto_8b
    return-void

    .line 68
    .restart local v4       #json:Lorg/json/JSONObject;
    :cond_8c
    const-string v8, "customName"

    const v9, 0x7f0c0037

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/browser/GearsPermissionsDialog;->setLabel(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 69
    const-string v8, "origin"

    const v9, 0x7f0c0038

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/browser/GearsPermissionsDialog;->setLabel(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 70
    const-string v8, "customMessage"

    const v9, 0x7f0c0039

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/browser/GearsPermissionsDialog;->setLabel(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_a4} :catch_a5

    goto :goto_59

    .line 89
    .end local v4           #json:Lorg/json/JSONObject;
    :catch_a5
    move-exception v8

    move-object v2, v8

    .line 90
    .local v2, e:Lorg/json/JSONException;
    const-string v8, "GearsPermissionsDialog"

    const-string v9, "JSON exception "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    .line 84
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #dialogMessage:Landroid/widget/TextView;
    .restart local v4       #json:Lorg/json/JSONObject;
    .restart local v5       #msg:Landroid/view/View;
    :cond_af
    :try_start_af
    iget-object v8, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v9, "locationData"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 85
    const v8, 0x7f0700e2

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_af .. :try_end_bf} :catch_a5

    goto :goto_8b
.end method

.method public setupDialog(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 5
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v1, "localData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 96
    const v0, 0x7f0700df

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 97
    const v0, 0x108005d

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_16
    :goto_16
    return-void

    .line 98
    :cond_17
    iget-object v0, p0, Lcom/android/browser/GearsPermissionsDialog;->mDialogType:Ljava/lang/String;

    const-string v1, "locationData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 99
    const v0, 0x7f0700e1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const v0, 0x7f020028

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16
.end method
