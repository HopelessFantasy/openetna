.class Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;
.super Ljava/lang/Object;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettingsSetupWizard$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DateTimeSettingsSetupWizard$1;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettingsSetupWizard$1;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;->this$1:Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, featureusage:Landroid/content/Intent;
    const-string v1, "com.android.LGSetupWizard"

    const-string v2, "com.android.LGSetupWizard.Setupthankyou"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "SetupWizard"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;->this$1:Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    iget-object v1, v1, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v1, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard$1$1;->this$1:Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    iget-object v1, v1, Lcom/android/settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    .line 84
    return-void
.end method
