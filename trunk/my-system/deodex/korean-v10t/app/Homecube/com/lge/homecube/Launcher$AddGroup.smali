.class Lcom/lge/homecube/Launcher$AddGroup;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddGroup"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method private constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4375
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4375
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher$AddGroup;-><init>(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/lge/homecube/Launcher$AddGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4375
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AddGroup;->cleanup()V

    return-void
.end method

.method static synthetic access$4100(Lcom/lge/homecube/Launcher$AddGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4375
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AddGroup;->addnewgroup()V

    return-void
.end method

.method private addnewgroup()V
    .registers 5

    .prologue
    .line 4413
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4414
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 4416
    .local v0, groupid:I
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3}, Lcom/lge/homecube/Launcher;->access$4300(Lcom/lge/homecube/Launcher;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/homecube/Launcher;->access$4202(Lcom/lge/homecube/Launcher;I)I

    .line 4418
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3}, Lcom/lge/homecube/Launcher;->access$4200(Lcom/lge/homecube/Launcher;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    .line 4419
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v3}, Lcom/lge/homecube/Launcher;->access$4200(Lcom/lge/homecube/Launcher;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->changeVisibility(I)V

    .line 4420
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v2}, Lcom/lge/homecube/Launcher;->access$4200(Lcom/lge/homecube/Launcher;)I

    move-result v2

    add-int/lit8 v0, v2, 0x6

    .line 4422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 4424
    packed-switch v0, :pswitch_data_9e

    .line 4453
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/lge/homecube/Launcher$AddGroup;->cleanup()V

    .line 4454
    return-void

    .line 4427
    :pswitch_45
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4428
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4431
    :pswitch_53
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4432
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4435
    :pswitch_62
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4436
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4439
    :pswitch_71
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4440
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4443
    :pswitch_80
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4444
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4447
    :pswitch_8f
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 4448
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, v2, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 4424
    :pswitch_data_9e
    .packed-switch 0x6
        :pswitch_45
        :pswitch_53
        :pswitch_62
        :pswitch_71
        :pswitch_80
        :pswitch_8f
    .end packed-switch
.end method

.method private cleanup()V
    .registers 3

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 4458
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4380
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4381
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->mInput:Landroid/widget/EditText;

    .line 4382
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->mInput:Landroid/widget/EditText;

    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4385
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4386
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4387
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4388
    new-instance v2, Lcom/lge/homecube/Launcher$AddGroup$1;

    invoke-direct {v2, p0}, Lcom/lge/homecube/Launcher$AddGroup$1;-><init>(Lcom/lge/homecube/Launcher$AddGroup;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4393
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$AddGroup$2;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$AddGroup$2;-><init>(Lcom/lge/homecube/Launcher$AddGroup;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4400
    iget-object v2, p0, Lcom/lge/homecube/Launcher$AddGroup;->this$0:Lcom/lge/homecube/Launcher;

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/homecube/Launcher$AddGroup$3;

    invoke-direct {v3, p0}, Lcom/lge/homecube/Launcher$AddGroup$3;-><init>(Lcom/lge/homecube/Launcher$AddGroup;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4408
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
