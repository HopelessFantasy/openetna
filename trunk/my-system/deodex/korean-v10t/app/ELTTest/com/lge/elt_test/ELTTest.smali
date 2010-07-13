.class public Lcom/lge/elt_test/ELTTest;
.super Landroid/app/Activity;
.source "ELTTest.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChoice:Landroid/widget/TextView;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 37
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/lge/elt_test/ELTTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, selection:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_38

    .line 48
    :goto_a
    iget-object v1, p0, Lcom/lge/elt_test/ELTTest;->mChoice:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void

    .line 41
    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Automatic Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    goto :goto_a

    .line 44
    :sswitch_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Manual Test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 39
    :sswitch_data_38
    .sparse-switch
        0x7f050010 -> :sswitch_24
        0x7f050017 -> :sswitch_10
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v3, "com.lge.elt_test"

    .line 52
    iget-object v2, p0, Lcom/lge/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 53
    .local v0, checkedId:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, intent:Landroid/content/Intent;
    sparse-switch v0, :sswitch_data_28

    .line 65
    :goto_10
    return-void

    .line 57
    :sswitch_11
    const-string v2, "com.lge.elt_test"

    const-string v2, "com.lge.elt_test.AutomaticMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v1}, Lcom/lge/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 61
    :sswitch_1c
    const-string v2, "com.lge.elt_test"

    const-string v2, "com.lge.elt_test.ManualMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Lcom/lge/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 55
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f050010 -> :sswitch_1c
        0x7f050017 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/ELTTest;->setContentView(I)V

    .line 24
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lge/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 25
    const v2, 0x7f050018

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/elt_test/ELTTest;->mChoice:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/lge/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 28
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 29
    const v2, 0x7f050017

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 31
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, startButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v3, "com.lge.elt_test"

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_36

    .line 83
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 71
    :pswitch_f
    iget-object v1, p0, Lcom/lge/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 72
    const-string v1, "com.lge.elt_test"

    const-string v1, "com.lge.elt_test.AutomaticMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/lge/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 77
    :pswitch_22
    iget-object v1, p0, Lcom/lge/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 78
    const-string v1, "com.lge.elt_test"

    const-string v1, "com.lge.elt_test.ManualMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/lge/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 69
    nop

    :pswitch_data_36
    .packed-switch 0x8
        :pswitch_f
        :pswitch_22
    .end packed-switch
.end method
