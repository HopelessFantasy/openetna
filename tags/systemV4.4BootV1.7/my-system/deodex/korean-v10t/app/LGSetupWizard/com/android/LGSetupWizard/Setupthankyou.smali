.class public Lcom/android/LGSetupWizard/Setupthankyou;
.super Landroid/app/Activity;
.source "Setupthankyou.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Homeintent:Landroid/content/Intent;

.field private wizard_usephone:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getContentView()I
    .registers 2

    .prologue
    .line 28
    const/high16 v0, 0x7f03

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 58
    :goto_7
    return-void

    .line 50
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->Homeintent:Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->Homeintent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->Homeintent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->Homeintent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/LGSetupWizard/Setupthankyou;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/Setupthankyou;->finish()V

    goto :goto_7

    .line 44
    nop

    :pswitch_data_2a
    .packed-switch 0x7f050001
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/LGSetupWizard/Setupthankyou;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/android/LGSetupWizard/Setupthankyou;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/LGSetupWizard/Setupthankyou;->setContentView(I)V

    .line 37
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/LGSetupWizard/Setupthankyou;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->wizard_usephone:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/android/LGSetupWizard/Setupthankyou;->wizard_usephone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method
