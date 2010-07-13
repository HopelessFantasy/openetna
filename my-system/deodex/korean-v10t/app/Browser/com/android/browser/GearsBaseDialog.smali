.class Lcom/android/browser/GearsBaseDialog;
.super Ljava/lang/Object;
.source "GearsBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/GearsBaseDialog$IconDownload;
    }
.end annotation


# static fields
.field public static final ALLOW:I = 0x2

.field public static final ALWAYS_DENY:I = 0x1

.field public static final CANCEL:I = 0x0

.field public static final CLEAR_REQUEST_ICON:I = 0x8

.field public static final DENY:I = 0x3

.field public static final NEW_ICON:I = 0x4

.field public static final PAUSE_REQUEST_ICON:I = 0x7

.field public static final REQUEST_ICON:I = 0x6

.field private static final TAG:Ljava/lang/String; = "GearsNativeDialog"

.field public static final UPDATE_ICON:I = 0x5


# instance fields
.field protected final LOCAL_DATA_STRING:Ljava/lang/String;

.field protected final LOCAL_STORAGE_STRING:Ljava/lang/String;

.field protected final LOCATION_DATA_STRING:Ljava/lang/String;

.field private final MAX_ICON_SIZE:I

.field protected mActivity:Landroid/app/Activity;

.field protected mChoosenIconSize:I

.field protected mDebug:Z

.field protected mDialogArguments:Ljava/lang/String;

.field protected mGearsVersion:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .parameter "activity"
    .parameter "handler"
    .parameter "arguments"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/browser/GearsBaseDialog;->MAX_ICON_SIZE:I

    .line 73
    const-string v0, "localData"

    iput-object v0, p0, Lcom/android/browser/GearsBaseDialog;->LOCAL_DATA_STRING:Ljava/lang/String;

    .line 74
    const-string v0, "localStorage"

    iput-object v0, p0, Lcom/android/browser/GearsBaseDialog;->LOCAL_STORAGE_STRING:Ljava/lang/String;

    .line 75
    const-string v0, "locationData"

    iput-object v0, p0, Lcom/android/browser/GearsBaseDialog;->LOCATION_DATA_STRING:Ljava/lang/String;

    .line 77
    const-string v0, "UNDEFINED"

    iput-object v0, p0, Lcom/android/browser/GearsBaseDialog;->mGearsVersion:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/GearsBaseDialog;->mDebug:Z

    .line 81
    iput-object p1, p0, Lcom/android/browser/GearsBaseDialog;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object p2, p0, Lcom/android/browser/GearsBaseDialog;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p3, p0, Lcom/android/browser/GearsBaseDialog;->mDialogArguments:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/GearsBaseDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/browser/GearsBaseDialog;->mIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/GearsBaseDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeDialog(I)Ljava/lang/String;
    .registers 3
    .parameter "closingType"

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method displayAsLink(Landroid/widget/Button;)V
    .registers 9
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 218
    if-nez p1, :cond_4

    .line 231
    :goto_3
    return-void

    .line 222
    :cond_4
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, text:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/browser/GearsBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 225
    .local v0, color:I
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 226
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 227
    .local v1, str:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_3
.end method

.method downloadIcon(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 393
    if-nez p1, :cond_3

    .line 404
    :goto_2
    return-void

    .line 396
    :cond_3
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 397
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 398
    iget v2, p0, Lcom/android/browser/GearsBaseDialog;->mChoosenIconSize:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 399
    iget v2, p0, Lcom/android/browser/GearsBaseDialog;->mChoosenIconSize:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 400
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_1a
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/browser/GearsBaseDialog$IconDownload;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/GearsBaseDialog$IconDownload;-><init>(Lcom/android/browser/GearsBaseDialog;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 403
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/browser/GearsBaseDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/GearsBaseDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/GearsBaseDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public handleBackButton()Z
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method hideView(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "rsc"

    .prologue
    .line 257
    if-nez p2, :cond_3

    .line 269
    :cond_2
    :goto_2
    return-void

    .line 261
    :cond_3
    if-nez p1, :cond_11

    .line 262
    invoke-virtual {p0, p2}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, view:Landroid/view/View;
    :goto_9
    if-eqz v0, :cond_2

    .line 267
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 264
    .end local v0           #view:Landroid/view/View;
    :cond_11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_9
.end method

.method inflate(II)V
    .registers 13
    .parameter "layout"
    .parameter "viewID"

    .prologue
    const-string v9, ")"

    const-string v8, "GearsNativeDialog"

    .line 125
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/browser/GearsBaseDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 127
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0, p2}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 128
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_58

    .line 130
    :try_start_12
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    .line 131
    .local v5, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_19} :catch_1a
    .catch Landroid/view/InflateException; {:try_start_12 .. :try_end_19} :catch_4e

    .line 144
    .end local v5           #viewGroup:Landroid/view/ViewGroup;
    :goto_19
    return-void

    .line 132
    :catch_1a
    move-exception v6

    move-object v1, v6

    .line 133
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception, the view ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, msg:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a ViewGroup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v6, "GearsNativeDialog"

    invoke-static {v8, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 136
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v3           #msg:Ljava/lang/String;
    :catch_4e
    move-exception v6

    move-object v1, v6

    .line 137
    .local v1, e:Landroid/view/InflateException;
    const-string v6, "GearsNativeDialog"

    const-string v6, "exception while inflating the layout"

    invoke-static {v8, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 140
    .end local v1           #e:Landroid/view/InflateException;
    :cond_58
    const-string v3, "problem, trying to inflate a non-existent view"

    .line 141
    .restart local v3       #msg:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string v6, "GearsNativeDialog"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public notification()I
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDebug(Z)V
    .registers 2
    .parameter "debug"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/browser/GearsBaseDialog;->mDebug:Z

    .line 104
    return-void
.end method

.method public setGearsVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/browser/GearsBaseDialog;->mGearsVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method setLabel(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 11
    .parameter "json"
    .parameter "name"
    .parameter "rsc"

    .prologue
    .line 239
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 240
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, text:Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 242
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1d

    if-eqz v2, :cond_1d

    .line 243
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 244
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 251
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_1d
    :goto_1d
    return-void

    .line 248
    :catch_1e
    move-exception v5

    move-object v1, v5

    .line 249
    .local v1, e:Lorg/json/JSONException;
    const-string v5, "GearsNativeDialog"

    const-string v6, "json exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method setText(Landroid/view/View;II)V
    .registers 9
    .parameter "v"
    .parameter "rsc"
    .parameter "txtRsc"

    .prologue
    .line 308
    if-nez p2, :cond_3

    .line 322
    :cond_2
    :goto_2
    return-void

    .line 311
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 312
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 313
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 314
    .local v2, textView:Landroid/widget/TextView;
    if-nez p3, :cond_15

    .line 315
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 317
    :cond_15
    invoke-direct {p0, p3}, Lcom/android/browser/GearsBaseDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method setText(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 8
    .parameter "v"
    .parameter "rsc"
    .parameter "text"

    .prologue
    .line 293
    if-nez p2, :cond_3

    .line 302
    :cond_2
    :goto_2
    return-void

    .line 296
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 298
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 299
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 445
    const v0, 0x7f07010c

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/browser/GearsBaseDialog;->setupButtons(III)V

    .line 446
    invoke-virtual {p0}, Lcom/android/browser/GearsBaseDialog;->setupDialog()V

    .line 447
    return-void
.end method

.method setupButton(IILandroid/view/View$OnClickListener;)V
    .registers 10
    .parameter "buttonRsc"
    .parameter "rsc"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 184
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/GearsBaseDialog;->setupButton(IILandroid/view/View$OnClickListener;ZZ)V

    .line 185
    return-void
.end method

.method setupButton(IILandroid/view/View$OnClickListener;ZZ)V
    .registers 11
    .parameter "buttonRscID"
    .parameter "rscString"
    .parameter "listener"
    .parameter "isLink"
    .parameter "requestFocus"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 157
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_7

    .line 176
    :cond_6
    :goto_6
    return-void

    .line 161
    :cond_7
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 163
    .local v1, button:Landroid/widget/Button;
    if-nez p2, :cond_13

    .line 164
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 166
    :cond_13
    invoke-direct {p0, p2}, Lcom/android/browser/GearsBaseDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    if-eqz p4, :cond_22

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/browser/GearsBaseDialog;->displayAsLink(Landroid/widget/Button;)V

    .line 172
    :cond_22
    if-eqz p5, :cond_6

    .line 173
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_6
.end method

.method setupButtons(III)V
    .registers 6
    .parameter "alwaysDenyRsc"
    .parameter "allowRsc"
    .parameter "denyRsc"

    .prologue
    .line 191
    const v0, 0x7f0c0033

    new-instance v1, Lcom/android/browser/GearsBaseDialog$1;

    invoke-direct {v1, p0}, Lcom/android/browser/GearsBaseDialog$1;-><init>(Lcom/android/browser/GearsBaseDialog;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/browser/GearsBaseDialog;->setupButton(IILandroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0c0032

    new-instance v1, Lcom/android/browser/GearsBaseDialog$2;

    invoke-direct {v1, p0}, Lcom/android/browser/GearsBaseDialog$2;-><init>(Lcom/android/browser/GearsBaseDialog;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/browser/GearsBaseDialog;->setupButton(IILandroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f0c0034

    new-instance v1, Lcom/android/browser/GearsBaseDialog$3;

    invoke-direct {v1, p0}, Lcom/android/browser/GearsBaseDialog$3;-><init>(Lcom/android/browser/GearsBaseDialog;)V

    invoke-virtual {p0, v0, p3, v1}, Lcom/android/browser/GearsBaseDialog;->setupButton(IILandroid/view/View$OnClickListener;)V

    .line 211
    return-void
.end method

.method public setupDialog()V
    .registers 7

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, dialogMessage:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 415
    .local v2, icon:Landroid/widget/ImageView;
    const v5, 0x7f0c002d

    invoke-virtual {p0, v5}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 416
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_f

    .line 417
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 420
    :cond_f
    const v5, 0x7f0c002b

    invoke-virtual {p0, v5}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 421
    .local v3, iconView:Landroid/view/View;
    if-eqz v3, :cond_1c

    .line 422
    move-object v0, v3

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 425
    :cond_1c
    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    .line 426
    invoke-virtual {p0, v1, v2}, Lcom/android/browser/GearsBaseDialog;->setupDialog(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 427
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    :cond_27
    return-void
.end method

.method public setupDialog(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 4
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 435
    const v0, 0x7f07010b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 436
    const v0, 0x7f020028

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    return-void
.end method

.method showView(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "rsc"

    .prologue
    .line 275
    if-nez p2, :cond_3

    .line 287
    :cond_2
    :goto_2
    return-void

    .line 279
    :cond_3
    if-nez p1, :cond_10

    .line 280
    invoke-virtual {p0, p2}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, view:Landroid/view/View;
    :goto_9
    if-eqz v0, :cond_2

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 282
    .end local v0           #view:Landroid/view/View;
    :cond_10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #view:Landroid/view/View;
    goto :goto_9
.end method

.method public updateIcon()V
    .registers 6

    .prologue
    const/16 v4, 0x40

    .line 366
    iget-object v3, p0, Lcom/android/browser/GearsBaseDialog;->mIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    .line 378
    :cond_6
    :goto_6
    return-void

    .line 369
    :cond_7
    const v3, 0x7f0c0036

    invoke-virtual {p0, v3}, Lcom/android/browser/GearsBaseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 371
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 372
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 373
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 374
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 375
    iget-object v3, p0, Lcom/android/browser/GearsBaseDialog;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6
.end method
