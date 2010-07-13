.class Lcom/android/LGSetupWizard/SetupWelcome$1;
.super Ljava/lang/Object;
.source "SetupWelcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/LGSetupWizard/SetupWelcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/LGSetupWizard/SetupWelcome;


# direct methods
.method constructor <init>(Lcom/android/LGSetupWizard/SetupWelcome;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/LGSetupWizard/SetupWelcome$1;->this$0:Lcom/android/LGSetupWizard/SetupWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.LocalePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "SetupWizard"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/LGSetupWizard/SetupWelcome$1;->this$0:Lcom/android/LGSetupWizard/SetupWelcome;

    invoke-virtual {v1, v0}, Lcom/android/LGSetupWizard/SetupWelcome;->startActivity(Landroid/content/Intent;)V

    .line 165
    iget-object v1, p0, Lcom/android/LGSetupWizard/SetupWelcome$1;->this$0:Lcom/android/LGSetupWizard/SetupWelcome;

    invoke-virtual {v1}, Lcom/android/LGSetupWizard/SetupWelcome;->removeActivity()V

    .line 167
    return-void
.end method
