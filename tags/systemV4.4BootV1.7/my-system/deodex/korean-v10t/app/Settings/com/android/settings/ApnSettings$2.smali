.class Lcom/android/settings/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->finish()V

    .line 245
    return-void
.end method
