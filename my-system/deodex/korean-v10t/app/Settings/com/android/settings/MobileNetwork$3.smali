.class Lcom/android/settings/MobileNetwork$3;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MobileNetwork;->dataOffMsgDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileNetwork;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/MobileNetwork$3;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/settings/MobileNetwork$3;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-static {v0, v1}, Lcom/android/settings/MobileNetwork;->access$200(Lcom/android/settings/MobileNetwork;I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/MobileNetwork$3;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-static {v0}, Lcom/android/settings/MobileNetwork;->access$100(Lcom/android/settings/MobileNetwork;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 167
    return-void
.end method
