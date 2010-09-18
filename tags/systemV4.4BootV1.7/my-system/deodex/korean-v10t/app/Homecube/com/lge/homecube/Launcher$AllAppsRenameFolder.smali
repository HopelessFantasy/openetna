.class Lcom/lge/homecube/Launcher$AllAppsRenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllAppsRenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4275
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4275
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4275
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$3800(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4275
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->changeFolderName()V

    return-void
.end method

.method private changeFolderName()V
    .registers 4

    .prologue
    .line 4312
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4313
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4315
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$3900(Lcom/lge/homecube/Launcher;)I

    move-result v1

    packed-switch v1, :pswitch_data_ce

    .line 4366
    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->cleanup()V

    .line 4368
    return-void

    .line 4317
    :pswitch_1d
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4318
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4321
    :pswitch_2b
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4322
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4325
    :pswitch_39
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4326
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleMultimedia:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4329
    :pswitch_47
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4330
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleUtilities:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4333
    :pswitch_55
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4334
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4337
    :pswitch_63
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4338
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleDownloads:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4341
    :pswitch_71
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4342
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4345
    :pswitch_7f
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4346
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4349
    :pswitch_8e
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4350
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4353
    :pswitch_9e
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4354
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4357
    :pswitch_ae
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4358
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4361
    :pswitch_be
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4362
    iget-object v1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 4315
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_2b
        :pswitch_39
        :pswitch_47
        :pswitch_55
        :pswitch_63
        :pswitch_71
        :pswitch_7f
        :pswitch_8e
        :pswitch_9e
        :pswitch_ae
        :pswitch_be
    .end packed-switch
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 4372
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4280
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4281
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->mInput:Landroid/widget/EditText;

    .line 4282
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->mInput:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4285
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4286
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f09003a

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4287
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4288
    new-instance v2, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$1;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$1;-><init>(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4293
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$2;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$2;-><init>(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4300
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$3;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$3;-><init>(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4307
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
