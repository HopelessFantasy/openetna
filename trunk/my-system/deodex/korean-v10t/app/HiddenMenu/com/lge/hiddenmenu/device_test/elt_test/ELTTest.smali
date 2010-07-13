.class public Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;
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
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 41
    const v2, 0x7f080158

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, selection:Ljava/lang/String;
    const-string v0, "none"

    .line 44
    .local v0, none:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_3a

    .line 52
    :goto_c
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mChoice:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 46
    :sswitch_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Automatic Test"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    goto :goto_c

    .line 49
    :sswitch_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Manual Test"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 44
    :sswitch_data_3a
    .sparse-switch
        0x7f070029 -> :sswitch_26
        0x7f070030 -> :sswitch_12
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v3, "com.lge.hiddenmenu"

    .line 56
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 57
    .local v0, checkedId:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, intent:Landroid/content/Intent;
    sparse-switch v0, :sswitch_data_28

    .line 71
    :goto_10
    return-void

    .line 61
    :sswitch_11
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.device_test.elt_test.AutomaticMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 66
    :sswitch_1c
    const-string v2, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.device_test.elt_test.ManualMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 59
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f070029 -> :sswitch_1c
        0x7f070030 -> :sswitch_11
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->setContentView(I)V

    .line 25
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 27
    const v2, 0x7f080158

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 29
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mChoice:Landroid/widget/TextView;

    .line 30
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mChoice:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, clearButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ELTTest;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f070030

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 38
    return-void
.end method
