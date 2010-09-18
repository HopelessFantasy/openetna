.class Lcom/android/phone/InCallScreen$21;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$connection:Lcom/android/internal/telephony/Connection;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3835
    iput-object p1, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    iput p2, p0, Lcom/android/phone/InCallScreen$21;->val$i:I

    iput-object p3, p0, Lcom/android/phone/InCallScreen$21;->val$connection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/android/phone/InCallScreen$21;->this$0:Lcom/android/phone/InCallScreen;

    iget v1, p0, Lcom/android/phone/InCallScreen$21;->val$i:I

    iget-object v2, p0, Lcom/android/phone/InCallScreen$21;->val$connection:Lcom/android/internal/telephony/Connection;

    invoke-static {v0, v1, v2}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V

    .line 3837
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3838
    return-void
.end method
