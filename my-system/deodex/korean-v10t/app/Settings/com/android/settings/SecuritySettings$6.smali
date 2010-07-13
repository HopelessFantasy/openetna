.class Lcom/android/settings/SecuritySettings$6;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1000(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    .line 612
    .local v0, state:Z
    if-eqz v0, :cond_e

    .line 616
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1100(Lcom/android/settings/SecuritySettings;)V

    .line 625
    :goto_d
    return-void

    .line 622
    :cond_e
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$6;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1200(Lcom/android/settings/SecuritySettings;)V

    goto :goto_d
.end method
